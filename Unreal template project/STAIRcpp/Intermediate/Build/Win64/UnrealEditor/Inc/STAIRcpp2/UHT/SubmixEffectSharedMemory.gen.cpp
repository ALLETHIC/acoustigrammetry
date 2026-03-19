// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "STAIRcpp2/SubmixEffectSharedMemory.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS
static_assert(!UE_WITH_CONSTINIT_UOBJECT, "This generated code can only be compiled with !UE_WITH_CONSTINIT_OBJECT");
void EmptyLinkFunctionForGeneratedCodeSubmixEffectSharedMemory() {}

// ********** Begin Cross Module References ********************************************************
ENGINE_API UClass* Z_Construct_UClass_USoundEffectSubmixPreset();
STAIRCPP2_API UClass* Z_Construct_UClass_USubmixEffectSharedMemoryPreset();
STAIRCPP2_API UClass* Z_Construct_UClass_USubmixEffectSharedMemoryPreset_NoRegister();
STAIRCPP2_API UScriptStruct* Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings();
UPackage* Z_Construct_UPackage__Script_STAIRcpp2();
// ********** End Cross Module References **********************************************************

// ********** Begin ScriptStruct FSubmixEffectSharedMemorySettings *********************************
struct Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics
{
	static inline consteval int32 GetStructSize() { return sizeof(FSubmixEffectSharedMemorySettings); }
	static inline consteval int16 GetStructAlignment() { return alignof(FSubmixEffectSharedMemorySettings); }
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Struct_MetaDataParams[] = {
		{ "BlueprintType", "true" },
		{ "ModuleRelativePath", "SubmixEffectSharedMemory.h" },
	};
	static constexpr UECodeGen_Private::FMetaDataPairParam NewProp_MemoryName_MetaData[] = {
		{ "Category", "SharedMemory" },
		{ "ModuleRelativePath", "SubmixEffectSharedMemory.h" },
	};
	static constexpr UECodeGen_Private::FMetaDataPairParam NewProp_RingBufferSize_MetaData[] = {
		{ "Category", "SharedMemory" },
		{ "ClampMax", "8192" },
		{ "ClampMin", "256" },
		{ "ModuleRelativePath", "SubmixEffectSharedMemory.h" },
	};
	static constexpr UECodeGen_Private::FMetaDataPairParam NewProp_bEnabled_MetaData[] = {
		{ "Category", "SharedMemory" },
		{ "ModuleRelativePath", "SubmixEffectSharedMemory.h" },
	};
#endif // WITH_METADATA

// ********** Begin ScriptStruct FSubmixEffectSharedMemorySettings constinit property declarations *
	static const UECodeGen_Private::FStrPropertyParams NewProp_MemoryName;
	static const UECodeGen_Private::FIntPropertyParams NewProp_RingBufferSize;
	static void NewProp_bEnabled_SetBit(void* Obj);
	static const UECodeGen_Private::FBoolPropertyParams NewProp_bEnabled;
	static const UECodeGen_Private::FPropertyParamsBase* const PropPointers[];
// ********** End ScriptStruct FSubmixEffectSharedMemorySettings constinit property declarations ***
	static void* NewStructOps()
	{
		return (UScriptStruct::ICppStructOps*)new UScriptStruct::TCppStructOps<FSubmixEffectSharedMemorySettings>();
	}
	static const UECodeGen_Private::FStructParams StructParams;
}; // struct Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics
static FStructRegistrationInfo Z_Registration_Info_UScriptStruct_FSubmixEffectSharedMemorySettings;
class UScriptStruct* FSubmixEffectSharedMemorySettings::StaticStruct()
{
	if (!Z_Registration_Info_UScriptStruct_FSubmixEffectSharedMemorySettings.OuterSingleton)
	{
		Z_Registration_Info_UScriptStruct_FSubmixEffectSharedMemorySettings.OuterSingleton = GetStaticStruct(Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings, (UObject*)Z_Construct_UPackage__Script_STAIRcpp2(), TEXT("SubmixEffectSharedMemorySettings"));
	}
	return Z_Registration_Info_UScriptStruct_FSubmixEffectSharedMemorySettings.OuterSingleton;
	}

// ********** Begin ScriptStruct FSubmixEffectSharedMemorySettings Property Definitions ************
const UECodeGen_Private::FStrPropertyParams Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewProp_MemoryName = { "MemoryName", nullptr, (EPropertyFlags)0x0010000000000005, UECodeGen_Private::EPropertyGenFlags::Str, RF_Public|RF_Transient|RF_MarkAsNative, nullptr, nullptr, 1, STRUCT_OFFSET(FSubmixEffectSharedMemorySettings, MemoryName), METADATA_PARAMS(UE_ARRAY_COUNT(NewProp_MemoryName_MetaData), NewProp_MemoryName_MetaData) };
const UECodeGen_Private::FIntPropertyParams Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewProp_RingBufferSize = { "RingBufferSize", nullptr, (EPropertyFlags)0x0010000000000005, UECodeGen_Private::EPropertyGenFlags::Int, RF_Public|RF_Transient|RF_MarkAsNative, nullptr, nullptr, 1, STRUCT_OFFSET(FSubmixEffectSharedMemorySettings, RingBufferSize), METADATA_PARAMS(UE_ARRAY_COUNT(NewProp_RingBufferSize_MetaData), NewProp_RingBufferSize_MetaData) };
void Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewProp_bEnabled_SetBit(void* Obj)
{
	((FSubmixEffectSharedMemorySettings*)Obj)->bEnabled = 1;
}
const UECodeGen_Private::FBoolPropertyParams Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewProp_bEnabled = { "bEnabled", nullptr, (EPropertyFlags)0x0010000000000005, UECodeGen_Private::EPropertyGenFlags::Bool | UECodeGen_Private::EPropertyGenFlags::NativeBool, RF_Public|RF_Transient|RF_MarkAsNative, nullptr, nullptr, 1, sizeof(bool), sizeof(FSubmixEffectSharedMemorySettings), &Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewProp_bEnabled_SetBit, METADATA_PARAMS(UE_ARRAY_COUNT(NewProp_bEnabled_MetaData), NewProp_bEnabled_MetaData) };
const UECodeGen_Private::FPropertyParamsBase* const Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::PropPointers[] = {
	(const UECodeGen_Private::FPropertyParamsBase*)&Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewProp_MemoryName,
	(const UECodeGen_Private::FPropertyParamsBase*)&Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewProp_RingBufferSize,
	(const UECodeGen_Private::FPropertyParamsBase*)&Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewProp_bEnabled,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::PropPointers) < 2048);
// ********** End ScriptStruct FSubmixEffectSharedMemorySettings Property Definitions **************
const UECodeGen_Private::FStructParams Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::StructParams = {
	(UObject* (*)())Z_Construct_UPackage__Script_STAIRcpp2,
	nullptr,
	&NewStructOps,
	"SubmixEffectSharedMemorySettings",
	Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::PropPointers,
	UE_ARRAY_COUNT(Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::PropPointers),
	sizeof(FSubmixEffectSharedMemorySettings),
	alignof(FSubmixEffectSharedMemorySettings),
	RF_Public|RF_Transient|RF_MarkAsNative,
	EStructFlags(0x00000001),
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::Struct_MetaDataParams), Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::Struct_MetaDataParams)
};
UScriptStruct* Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings()
{
	if (!Z_Registration_Info_UScriptStruct_FSubmixEffectSharedMemorySettings.InnerSingleton)
	{
		UECodeGen_Private::ConstructUScriptStruct(Z_Registration_Info_UScriptStruct_FSubmixEffectSharedMemorySettings.InnerSingleton, Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::StructParams);
	}
	return CastChecked<UScriptStruct>(Z_Registration_Info_UScriptStruct_FSubmixEffectSharedMemorySettings.InnerSingleton);
}
// ********** End ScriptStruct FSubmixEffectSharedMemorySettings ***********************************

// ********** Begin Class USubmixEffectSharedMemoryPreset Function SetSettings *********************
struct Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics
{
	struct SubmixEffectSharedMemoryPreset_eventSetSettings_Parms
	{
		FSubmixEffectSharedMemorySettings InSettings;
	};
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Function_MetaDataParams[] = {
		{ "Category", "Audio|Effects" },
		{ "ModuleRelativePath", "SubmixEffectSharedMemory.h" },
	};
	static constexpr UECodeGen_Private::FMetaDataPairParam NewProp_InSettings_MetaData[] = {
		{ "NativeConst", "" },
	};
#endif // WITH_METADATA

// ********** Begin Function SetSettings constinit property declarations ***************************
	static const UECodeGen_Private::FStructPropertyParams NewProp_InSettings;
	static const UECodeGen_Private::FPropertyParamsBase* const PropPointers[];
// ********** End Function SetSettings constinit property declarations *****************************
	static const UECodeGen_Private::FFunctionParams FuncParams;
};

// ********** Begin Function SetSettings Property Definitions **************************************
const UECodeGen_Private::FStructPropertyParams Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::NewProp_InSettings = { "InSettings", nullptr, (EPropertyFlags)0x0010000008000182, UECodeGen_Private::EPropertyGenFlags::Struct, RF_Public|RF_Transient|RF_MarkAsNative, nullptr, nullptr, 1, STRUCT_OFFSET(SubmixEffectSharedMemoryPreset_eventSetSettings_Parms, InSettings), Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings, METADATA_PARAMS(UE_ARRAY_COUNT(NewProp_InSettings_MetaData), NewProp_InSettings_MetaData) }; // 1376693185
const UECodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::PropPointers[] = {
	(const UECodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::NewProp_InSettings,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::PropPointers) < 2048);
// ********** End Function SetSettings Property Definitions ****************************************
const UECodeGen_Private::FFunctionParams Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::FuncParams = { { (UObject*(*)())Z_Construct_UClass_USubmixEffectSharedMemoryPreset, nullptr, "SetSettings", 	Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::PropPointers, 
	UE_ARRAY_COUNT(Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::PropPointers), 
sizeof(Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::SubmixEffectSharedMemoryPreset_eventSetSettings_Parms),
RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04420401, 0, 0, METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::Function_MetaDataParams), Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::Function_MetaDataParams)},  };
static_assert(sizeof(Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::SubmixEffectSharedMemoryPreset_eventSetSettings_Parms) < MAX_uint16);
UFunction* Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings()
{
	static UFunction* ReturnFunction = nullptr;
	if (!ReturnFunction)
	{
		UECodeGen_Private::ConstructUFunction(&ReturnFunction, Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings_Statics::FuncParams);
	}
	return ReturnFunction;
}
DEFINE_FUNCTION(USubmixEffectSharedMemoryPreset::execSetSettings)
{
	P_GET_STRUCT_REF(FSubmixEffectSharedMemorySettings,Z_Param_Out_InSettings);
	P_FINISH;
	P_NATIVE_BEGIN;
	P_THIS->SetSettings(Z_Param_Out_InSettings);
	P_NATIVE_END;
}
// ********** End Class USubmixEffectSharedMemoryPreset Function SetSettings ***********************

// ********** Begin Class USubmixEffectSharedMemoryPreset ******************************************
FClassRegistrationInfo Z_Registration_Info_UClass_USubmixEffectSharedMemoryPreset;
UClass* USubmixEffectSharedMemoryPreset::GetPrivateStaticClass()
{
	using TClass = USubmixEffectSharedMemoryPreset;
	if (!Z_Registration_Info_UClass_USubmixEffectSharedMemoryPreset.InnerSingleton)
	{
		GetPrivateStaticClassBody(
			TClass::StaticPackage(),
			TEXT("SubmixEffectSharedMemoryPreset"),
			Z_Registration_Info_UClass_USubmixEffectSharedMemoryPreset.InnerSingleton,
			StaticRegisterNativesUSubmixEffectSharedMemoryPreset,
			sizeof(TClass),
			alignof(TClass),
			TClass::StaticClassFlags,
			TClass::StaticClassCastFlags(),
			TClass::StaticConfigName(),
			(UClass::ClassConstructorType)InternalConstructor<TClass>,
			(UClass::ClassVTableHelperCtorCallerType)InternalVTableHelperCtorCaller<TClass>,
			UOBJECT_CPPCLASS_STATICFUNCTIONS_FORCLASS(TClass),
			&TClass::Super::StaticClass,
			&TClass::WithinClass::StaticClass
		);
	}
	return Z_Registration_Info_UClass_USubmixEffectSharedMemoryPreset.InnerSingleton;
}
UClass* Z_Construct_UClass_USubmixEffectSharedMemoryPreset_NoRegister()
{
	return USubmixEffectSharedMemoryPreset::GetPrivateStaticClass();
}
struct Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
		{ "HideCategories", "Object" },
		{ "IncludePath", "SubmixEffectSharedMemory.h" },
		{ "ModuleRelativePath", "SubmixEffectSharedMemory.h" },
	};
	static constexpr UECodeGen_Private::FMetaDataPairParam NewProp_Settings_MetaData[] = {
		{ "Category", "SharedMemory" },
		{ "ModuleRelativePath", "SubmixEffectSharedMemory.h" },
	};
#endif // WITH_METADATA

// ********** Begin Class USubmixEffectSharedMemoryPreset constinit property declarations **********
	static const UECodeGen_Private::FStructPropertyParams NewProp_Settings;
	static const UECodeGen_Private::FPropertyParamsBase* const PropPointers[];
// ********** End Class USubmixEffectSharedMemoryPreset constinit property declarations ************
	static constexpr UE::CodeGen::FClassNativeFunction Funcs[] = {
		{ .NameUTF8 = UTF8TEXT("SetSettings"), .Pointer = &USubmixEffectSharedMemoryPreset::execSetSettings },
	};
	static UObject* (*const DependentSingletons[])();
	static constexpr FClassFunctionLinkInfo FuncInfo[] = {
		{ &Z_Construct_UFunction_USubmixEffectSharedMemoryPreset_SetSettings, "SetSettings" }, // 1572735385
	};
	static_assert(UE_ARRAY_COUNT(FuncInfo) < 2048);
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<USubmixEffectSharedMemoryPreset>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
}; // struct Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics

// ********** Begin Class USubmixEffectSharedMemoryPreset Property Definitions *********************
const UECodeGen_Private::FStructPropertyParams Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::NewProp_Settings = { "Settings", nullptr, (EPropertyFlags)0x0010000000000005, UECodeGen_Private::EPropertyGenFlags::Struct, RF_Public|RF_Transient|RF_MarkAsNative, nullptr, nullptr, 1, STRUCT_OFFSET(USubmixEffectSharedMemoryPreset, Settings), Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings, METADATA_PARAMS(UE_ARRAY_COUNT(NewProp_Settings_MetaData), NewProp_Settings_MetaData) }; // 1376693185
const UECodeGen_Private::FPropertyParamsBase* const Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::PropPointers[] = {
	(const UECodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::NewProp_Settings,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::PropPointers) < 2048);
// ********** End Class USubmixEffectSharedMemoryPreset Property Definitions ***********************
UObject* (*const Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_USoundEffectSubmixPreset,
	(UObject* (*)())Z_Construct_UPackage__Script_STAIRcpp2,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::ClassParams = {
	&USubmixEffectSharedMemoryPreset::StaticClass,
	nullptr,
	&StaticCppClassTypeInfo,
	DependentSingletons,
	FuncInfo,
	Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::PropPointers,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	UE_ARRAY_COUNT(FuncInfo),
	UE_ARRAY_COUNT(Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::PropPointers),
	0,
	0x000010A0u,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::Class_MetaDataParams), Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::Class_MetaDataParams)
};
void USubmixEffectSharedMemoryPreset::StaticRegisterNativesUSubmixEffectSharedMemoryPreset()
{
	UClass* Class = USubmixEffectSharedMemoryPreset::StaticClass();
	FNativeFunctionRegistrar::RegisterFunctions(Class, MakeConstArrayView(Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::Funcs));
}
UClass* Z_Construct_UClass_USubmixEffectSharedMemoryPreset()
{
	if (!Z_Registration_Info_UClass_USubmixEffectSharedMemoryPreset.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_USubmixEffectSharedMemoryPreset.OuterSingleton, Z_Construct_UClass_USubmixEffectSharedMemoryPreset_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_USubmixEffectSharedMemoryPreset.OuterSingleton;
}
USubmixEffectSharedMemoryPreset::USubmixEffectSharedMemoryPreset(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer) {}
DEFINE_VTABLE_PTR_HELPER_CTOR_NS(, USubmixEffectSharedMemoryPreset);
USubmixEffectSharedMemoryPreset::~USubmixEffectSharedMemoryPreset() {}
// ********** End Class USubmixEffectSharedMemoryPreset ********************************************

// ********** Begin Registration *******************************************************************
struct Z_CompiledInDeferFile_FID_Users_Justin_Desktop_STAIRcpp2_Source_STAIRcpp2_SubmixEffectSharedMemory_h__Script_STAIRcpp2_Statics
{
	static constexpr FStructRegisterCompiledInInfo ScriptStructInfo[] = {
		{ FSubmixEffectSharedMemorySettings::StaticStruct, Z_Construct_UScriptStruct_FSubmixEffectSharedMemorySettings_Statics::NewStructOps, TEXT("SubmixEffectSharedMemorySettings"),&Z_Registration_Info_UScriptStruct_FSubmixEffectSharedMemorySettings, CONSTRUCT_RELOAD_VERSION_INFO(FStructReloadVersionInfo, sizeof(FSubmixEffectSharedMemorySettings), 1376693185U) },
	};
	static constexpr FClassRegisterCompiledInInfo ClassInfo[] = {
		{ Z_Construct_UClass_USubmixEffectSharedMemoryPreset, USubmixEffectSharedMemoryPreset::StaticClass, TEXT("USubmixEffectSharedMemoryPreset"), &Z_Registration_Info_UClass_USubmixEffectSharedMemoryPreset, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(USubmixEffectSharedMemoryPreset), 202655103U) },
	};
}; // Z_CompiledInDeferFile_FID_Users_Justin_Desktop_STAIRcpp2_Source_STAIRcpp2_SubmixEffectSharedMemory_h__Script_STAIRcpp2_Statics 
static FRegisterCompiledInInfo Z_CompiledInDeferFile_FID_Users_Justin_Desktop_STAIRcpp2_Source_STAIRcpp2_SubmixEffectSharedMemory_h__Script_STAIRcpp2_2265543199{
	TEXT("/Script/STAIRcpp2"),
	Z_CompiledInDeferFile_FID_Users_Justin_Desktop_STAIRcpp2_Source_STAIRcpp2_SubmixEffectSharedMemory_h__Script_STAIRcpp2_Statics::ClassInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_Users_Justin_Desktop_STAIRcpp2_Source_STAIRcpp2_SubmixEffectSharedMemory_h__Script_STAIRcpp2_Statics::ClassInfo),
	Z_CompiledInDeferFile_FID_Users_Justin_Desktop_STAIRcpp2_Source_STAIRcpp2_SubmixEffectSharedMemory_h__Script_STAIRcpp2_Statics::ScriptStructInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_Users_Justin_Desktop_STAIRcpp2_Source_STAIRcpp2_SubmixEffectSharedMemory_h__Script_STAIRcpp2_Statics::ScriptStructInfo),
	nullptr, 0,
};
// ********** End Registration *********************************************************************

PRAGMA_ENABLE_DEPRECATION_WARNINGS
