#pragma once

#include "CoreMinimal.h"
#include "Sound/SoundEffectSubmix.h"
#include "Windows/AllowWindowsPlatformTypes.h"
#include <windows.h>
#include "Windows/HideWindowsPlatformTypes.h"
#include "SubmixEffectSharedMemory.generated.h"

USTRUCT(BlueprintType)
struct FSubmixEffectSharedMemorySettings
{
    GENERATED_USTRUCT_BODY()

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "SharedMemory")
    FString MemoryName = TEXT("UnityToMaxAudio");

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "SharedMemory",
        meta = (ClampMin = "256", ClampMax = "8192"))
    int32 RingBufferSize = 1024;

    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "SharedMemory")
    bool bEnabled = true;
};

class FSubmixEffectSharedMemory : public FSoundEffectSubmix
{
public:
    FSubmixEffectSharedMemory();
    virtual ~FSubmixEffectSharedMemory();

    virtual void Init(const FSoundEffectSubmixInitData& InitData) override;
    virtual void OnProcessAudio(const FSoundEffectSubmixInputData& InData,
        FSoundEffectSubmixOutputData& OutData) override;
    virtual void OnPresetChanged() override;

    void SetSettings(const FSubmixEffectSharedMemorySettings& InSettings);

private:
    // Shared memory initialization
    bool InitializeSharedMemory();
    void ShutdownSharedMemory();
    void WriteAudioToSharedMemory(const float* AudioData, int32 NumSamples);

    // Windows shared memory handles
    HANDLE hMapFile;
    LPVOID pBuf;
    HANDLE hMutex;

    // Configuration
    FSubmixEffectSharedMemorySettings Settings;
    int32 SampleRate;
    int32 NumChannels;
    int32 BufferSize;
    int32 WritePosition;

    // State
    bool bIsInitialized;

    // Audio buffer for interleaving
    TArray<float> InterleavedBuffer;
};

UCLASS()
class USubmixEffectSharedMemoryPreset : public USoundEffectSubmixPreset
{
    GENERATED_BODY()

public:
    EFFECT_PRESET_METHODS(SubmixEffectSharedMemory)

        UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "SharedMemory")
    FSubmixEffectSharedMemorySettings Settings;

    UFUNCTION(BlueprintCallable, Category = "Audio|Effects")
    void SetSettings(const FSubmixEffectSharedMemorySettings& InSettings);
};