#include "SubmixEffectSharedMemory.h"

FSubmixEffectSharedMemory::FSubmixEffectSharedMemory()
    : hMapFile(NULL)
    , pBuf(NULL)
    , hMutex(NULL)
    , SampleRate(48000)
    , NumChannels(2)
    , BufferSize(512)
    , WritePosition(0)
    , bIsInitialized(false)
{
}

FSubmixEffectSharedMemory::~FSubmixEffectSharedMemory()
{
    ShutdownSharedMemory();
}

void FSubmixEffectSharedMemory::Init(const FSoundEffectSubmixInitData& InitData)
{
    SampleRate = InitData.SampleRate;
    NumChannels = 2;

    UE_LOG(LogTemp, Log, TEXT("SubmixEffectSharedMemory Init: SR=%d, Channels=%d"),
        SampleRate, NumChannels);
}

bool FSubmixEffectSharedMemory::InitializeSharedMemory()
{
    if (bIsInitialized)
    {
        return true;
    }

    SIZE_T totalSize = (sizeof(int32) * 4) +
        (Settings.RingBufferSize * NumChannels * sizeof(float));

    hMapFile = CreateFileMappingA(
        INVALID_HANDLE_VALUE,
        NULL,
        PAGE_READWRITE,
        0,
        (DWORD)totalSize,
        TCHAR_TO_ANSI(*Settings.MemoryName)
    );

    if (hMapFile == NULL)
    {
        UE_LOG(LogTemp, Error, TEXT("Could not create shared memory: %d"), GetLastError());
        return false;
    }

    pBuf = MapViewOfFile(hMapFile, FILE_MAP_ALL_ACCESS, 0, 0, totalSize);

    if (pBuf == NULL)
    {
        UE_LOG(LogTemp, Error, TEXT("Could not map view: %d"), GetLastError());
        CloseHandle(hMapFile);
        hMapFile = NULL;
        return false;
    }

    FString MutexName = Settings.MemoryName + TEXT("_Mutex");
    hMutex = CreateMutexA(NULL, false, TCHAR_TO_ANSI(*MutexName));

    int32* metadata = (int32*)pBuf;
    metadata[0] = BufferSize;
    metadata[1] = NumChannels;
    metadata[2] = Settings.RingBufferSize;
    metadata[3] = 0;

    float* audioBuffer = (float*)((char*)pBuf + sizeof(int32) * 4);
    FMemory::Memzero(audioBuffer, Settings.RingBufferSize * NumChannels * sizeof(float));

    WritePosition = 0;
    bIsInitialized = true;

    UE_LOG(LogTemp, Log, TEXT("Shared memory created: %s"), *Settings.MemoryName);
    UE_LOG(LogTemp, Log, TEXT("  Ring buffer: %d samples"), Settings.RingBufferSize);
    UE_LOG(LogTemp, Log, TEXT("  Channels: %d"), NumChannels);
    UE_LOG(LogTemp, Log, TEXT("  Total size: %d bytes"), (int)totalSize);

    return true;
}

void FSubmixEffectSharedMemory::ShutdownSharedMemory()
{
    if (hMutex)
    {
        CloseHandle(hMutex);
        hMutex = NULL;
    }

    if (pBuf)
    {
        UnmapViewOfFile(pBuf);
        pBuf = NULL;
    }

    if (hMapFile)
    {
        CloseHandle(hMapFile);
        hMapFile = NULL;
    }

    bIsInitialized = false;

    UE_LOG(LogTemp, Log, TEXT("Shared memory shutdown"));
}

void FSubmixEffectSharedMemory::WriteAudioToSharedMemory(const float* AudioData, int32 NumSamples)
{
    if (!bIsInitialized || pBuf == NULL)
    {
        return;
    }

    DWORD waitResult = WAIT_TIMEOUT;
    if (hMutex)
    {
        waitResult = WaitForSingleObject(hMutex, 1);
    }

    if (waitResult == WAIT_OBJECT_0 || hMutex == NULL)
    {
        int32* metadata = (int32*)pBuf;
        float* audioBuffer = (float*)((char*)pBuf + sizeof(int32) * 4);

        for (int32 i = 0; i < NumSamples; i++)
        {
            int32 bufferIndex = WritePosition % Settings.RingBufferSize;
            int32 idx = bufferIndex * NumChannels;

            for (int32 ch = 0; ch < NumChannels; ch++)
            {
                audioBuffer[idx + ch] = AudioData[i * NumChannels + ch];
            }

            WritePosition++;
        }

        metadata[3] = WritePosition;

        if (hMutex && waitResult == WAIT_OBJECT_0)
        {
            ReleaseMutex(hMutex);
        }
    }
}

void FSubmixEffectSharedMemory::OnProcessAudio(const FSoundEffectSubmixInputData& InData,
    FSoundEffectSubmixOutputData& OutData)
{
    FMemory::Memcpy(OutData.AudioBuffer->GetData(),
        InData.AudioBuffer->GetData(),
        InData.AudioBuffer->Num() * sizeof(float));

    if (!Settings.bEnabled)
    {
        return;
    }

    int32 numSamples = InData.NumFrames;
    int32 totalSamples = InData.AudioBuffer->Num();
    int32 detectedChannels = totalSamples / numSamples;

    if (detectedChannels > 0 && detectedChannels != NumChannels)
    {
        if (bIsInitialized)
        {
            ShutdownSharedMemory();
        }
        NumChannels = detectedChannels;
        UE_LOG(LogTemp, Log, TEXT("Detected %d channels"), NumChannels);
    }

    if (!bIsInitialized)
    {
        BufferSize = InData.NumFrames;

        if (!InitializeSharedMemory())
        {
            UE_LOG(LogTemp, Error, TEXT("Failed to initialize shared memory"));
            return;
        }
    }

    // METHOD 2: Assume audio is already interleaved, just copy directly
    InterleavedBuffer.SetNumUninitialized(totalSamples);
    const float* inputBuffer = InData.AudioBuffer->GetData();
    FMemory::Memcpy(InterleavedBuffer.GetData(), inputBuffer, totalSamples * sizeof(float));

    WriteAudioToSharedMemory(InterleavedBuffer.GetData(), numSamples);
}

void FSubmixEffectSharedMemory::OnPresetChanged()
{
    const USubmixEffectSharedMemoryPreset* CurrentPreset = CastChecked<USubmixEffectSharedMemoryPreset>(GetPreset());
    if (CurrentPreset)
    {
        SetSettings(CurrentPreset->Settings);
    }
}

void FSubmixEffectSharedMemory::SetSettings(const FSubmixEffectSharedMemorySettings& InSettings)
{
    if (bIsInitialized &&
        (Settings.MemoryName != InSettings.MemoryName ||
            Settings.RingBufferSize != InSettings.RingBufferSize))
    {
        ShutdownSharedMemory();
    }

    Settings = InSettings;
}

void USubmixEffectSharedMemoryPreset::SetSettings(const FSubmixEffectSharedMemorySettings& InSettings)
{
    UpdateSettings(InSettings);
}