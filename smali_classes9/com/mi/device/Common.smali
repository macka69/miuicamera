.class public Lcom/mi/device/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field private static final SUPER_NIGHT_EV_VALUES_COMMON_FRONT:[I

.field private static final SUPER_NIGHT_EV_VALUES_COMMON_REAR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mi/device/Common;->SUPER_NIGHT_EV_VALUES_COMMON_FRONT:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/device/Common;->SUPER_NIGHT_EV_VALUES_COMMON_REAR:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x12
        -0xc
        -0x6
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x12
        -0xc
        -0x6
        0x0
        0x6
        0x6
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustScreenLight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public allowCapturingHeicImage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public defaultAntiBanding()Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method public defaultDeviceWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public defaultLensDirtyTip()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public defaultVideoQuality()Ljava/lang/String;
    .locals 0

    const-string p0, "6"

    return-object p0
.end method

.method public disableCAFDuringHighSpeedRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public disableCloseFlashForThermalDetected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public disablePortraitLightFor6G()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public enableAlgorithmInFileSuffix()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public enableMultiframeInManualMode()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public enableOutputRawInManualModule()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public enablePreviewPortraitLighting()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public enableXiaomiAmbilight()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public exposureCompensationStepsNum()F
    .locals 0

    const/high16 p0, 0x41400000    # 12.0f

    return p0
.end method

.method public forceFrontSuperNightShotQuick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public forceUseRemosaicSizeForFront()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public get4kCameraBoostThreshold()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public get8kCameraBoostThreshold()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAecLuxHeightLight()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public getAecLuxLastLight()I
    .locals 0

    const/16 p0, 0x15e

    return p0
.end method

.method public getAiEnableDefault()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAiEnhancedVideoQualities()[Ljava/lang/String;
    .locals 1

    const-string p0, "5"

    const-string v0, "6"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAiSrSizeIndex()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getAlgoPortraitBackLogicMaxWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAlgoPortraitBackPhysicMaxWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAudioMapDefaultValue()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getBackDefaultFNumber()Ljava/lang/String;
    .locals 0

    const-string p0, "4"

    return-object p0
.end method

.method public getBurstShootCount()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getCloneMaxSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCloneModelVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "default"

    return-object p0
.end method

.method public getCropFrontZoomRatio()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getCustomWatermarkVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "common"

    return-object p0
.end method

.method public getDefaultEvChecker()[I
    .locals 0

    const/4 p0, 0x3

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x6
        0x0
        0x6
    .end array-data
.end method

.method public getDefaultFavoriteModes()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getDefaultRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "4x3"

    return-object p0
.end method

.method public getDefaultShutterSoundType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDepthMapVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDualVideoCameraSelectConfig()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeatureMimojiModleVersion()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v22"

    return-object p0
.end method

.method public getFixedShot2ShotTime()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFpNavNameList()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getFrontDefaultEvChecker()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFrontDefaultFNumber()Ljava/lang/String;
    .locals 0

    const-string p0, "4.5"

    return-object p0
.end method

.method public getFrontMaxFPS()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->SLOW_UNSUPPORT:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->getValue()S

    move-result p0

    return p0
.end method

.method public getFrontUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getHDMaxRemoteBufferSize()I
    .locals 0

    invoke-virtual {p0}, Lcom/mi/device/Common;->getMaxRemoteBufferSize()I

    move-result p0

    return p0
.end method

.method public getHDR10VideoEncodingProfile()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getHDRDefaultValue()Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public getHibernationTimeout()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getHighAccuracyTolerance()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHighScreenRefreshRateList()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLowMemoryDeviceParallelRequestRestrictNum()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLowMemoryThresholdMB()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public getManualUltraTeleSizeMaxWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMaxRemoteBufferSize()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getMaxVideoPreviewSize()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxVideoSATZoom()F
    .locals 0

    const/high16 p0, 0x41400000    # 12.0f

    return p0
.end method

.method public getMfnrFrameNum()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMiLiveModeSupportQuality()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMiServiceNotificationLabel()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getMimojiBackFacingAecLuxLowLight()I
    .locals 0

    const/16 p0, 0x13b

    return p0
.end method

.method public getPanoramaCropRatio()F
    .locals 0

    const p0, 0x3f6068dc

    return p0
.end method

.method public getPanoramaGoalAngle()I
    .locals 0

    const/16 p0, 0x118

    return p0
.end method

.method public getPanoramaGoalAngleVertical()I
    .locals 0

    const/16 p0, 0x118

    return p0
.end method

.method public getPanoramaMaxSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getParallelPara()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getParallelRequestRestrictNum()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getQuickShotThresholdShotCacheCount6G()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public getRawSuperNightImpl()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRearMaxFPS()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->SLOW_UNSUPPORT:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->getValue()S

    move-result p0

    return p0
.end method

.method public getRearTeleUltraPixelResolution()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRearUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRearUltraTeleUltraPixelResolution()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRearUltraWideUltraPixelResolution()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getRepeatingDropImageCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRepeatingDropImageCountFor6G()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSRFrameNumber()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getSRFrameNumberFor6G()I
    .locals 0

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSRFrameNumber()I

    move-result p0

    return p0
.end method

.method public getSRFrameNumberPerformanceMode()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getSatZoomRatioX()[F
    .locals 0

    const/16 p0, 0x8

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x42480000    # 50.0f
        0x42fa0000    # 125.0f
    .end array-data
.end method

.method public getSatZoomRatioY()[F
    .locals 0

    const/16 p0, 0x8

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x42fc0000    # 126.0f
        0x437d0000    # 253.0f
        0x43d20000    # 420.0f
        0x4408c000    # 547.0f
        0x441b4000    # 621.0f
        0x44520000    # 840.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public getShotBoostMaxShotCount()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getShotBoostMinDelayedTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getStandaloneMacroSupportedOpticalZoomRatioCombination()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSuperMoonZoomRules()[Ljava/lang/String;
    .locals 1

    const-string p0, "5:20:30:40:50:60"

    const-string v0, "3:10:10:10:10"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuperNightEvValues(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/mi/device/Common;->SUPER_NIGHT_EV_VALUES_COMMON_FRONT:[I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/mi/device/Common;->SUPER_NIGHT_EV_VALUES_COMMON_REAR:[I

    :goto_0
    return-object p0
.end method

.method public getSuperNightLimitSize()[[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuperNightRawFormat()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSuperNightWideSizeMaxWidth()I
    .locals 0

    invoke-virtual {p0}, Lcom/mi/device/Common;->getWideSizeMaxWidth()I

    move-result p0

    return p0
.end method

.method public getSupportDepurpleLens()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSupportedButtonOuterZooms()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSupportedOpticalZoomRatioCombination()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSupportedZoom()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getTeleRealRatio()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getUltraTeleSizeMaxWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUltraWideSizeMaxWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUwToMacroFovRatio()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getVLogMenuPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSatZoomRatioX()[F
    .locals 0

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSatZoomRatioX()[F

    move-result-object p0

    return-object p0
.end method

.method public getVideoSatZoomRatioY()[F
    .locals 0

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSatZoomRatioY()[F

    move-result-object p0

    return-object p0
.end method

.method public getVideoToTeleMaxRatio()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getWatermarkRegion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getWideSelfieMaxSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWideSizeMaxWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasSiblings()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hideUltraPixelWatermark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iSSensorHasLatency()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public is18x9RatioScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public is4K30FpsEISSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAndroidOne()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isApplySrOnPreviewRequest()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBigSmallBackPortrait()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBurstShotRequireReprocess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCaptureNeedPreviewSurface()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCinematicPhotoSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCreateCaptureSessionWithSessionConfigurationSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDisableAlgoByThermalSupport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDisableDepurpleInSuperNight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDisableFlashInManual()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDualCameraShineVideoBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEffectWatermarkFilted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnableAWBLockInPanorama()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEnableFrontAELock()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFastShutterCallbackSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFoldingPhone()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isForceCloseCamera()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isForceUsingNormalOperationMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontAlwaysUseUpscale()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontCamcorderVFRSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontCameraHdrPlusMfnrSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontCaptureHDRDefaultAuto()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontFingerSensor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontForceUseMiBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontJustBeautyTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontPopCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontVideoQualityShouldBe1080P()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFunModuleSupportSoundEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFunSupportEIS()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHALEnableFrontMFNR()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHalDoesCafWhenFlashOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHighPrioritySuperNightPreferred()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHighQualityPreferred()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHoldBlurBackground()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHongMi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isISPRotated()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLegacyHAL3Device()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLegacyMfnrDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLowPowerQRScan()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMTKSatSupportRawSuperNightSE()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMacro2SatOptEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMainFemaleSelfieDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMctfModeSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMfnrAlogUpQuickShotEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMiLensSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiFrameCaptureShutterDelay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedFullGyroscope()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedImproveISOThreshold()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedLimitSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPad()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isQRCodeAndUltraPixelMutex()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isQcfaOnlyBinningSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRGB888EGLPreferred()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRemoteOnlineSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRemoveHeicFromStable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isReplaceHighCostEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRethrowException()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSRAndMfnrPixel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSRRequireReprocess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSatMasterPhysicalCameraIdSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSatSupportSuperNightSE()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScreenSlideSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetEarlyRepeating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSplitVideoSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStreamingSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSubThreadFrameListener()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuperEisUseWideCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuperMacro()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuperNightHidlNeedYuv2AlgoEngine()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupport3DFaceBeauty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupport3SATZoomingOptimization()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupport4KDurationLimit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupport8KDurationLimit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAFSaliencyCheck()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAbortCaptures()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAccessExternalStorageByFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAiAudio()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAiScene()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAsd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAudioMapMove()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAutoHibernation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAutoZoom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBeautyBody()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBeautyInPortrait()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportBeautyInPortrait4G()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportBluetoothHeadsetMic()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBokehAdjust()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportCameraRole()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportCloneCopyMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportCloneMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportCommonKaleidoscope()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportCropFront()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportCustomWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportCustomWaterMarkGen2()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDeFlicker()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDepurpleInHdr()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDeviceWatchDog()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDocumentMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDocumentMode2()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDollyZoom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDollyZoomHighEffect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDollyZoomSpecificEncode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDualVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDynamicFeature()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportEffectInPortrait()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportEffectInPortrait4G()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFastMotionMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFastmotionEnhance()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFastmotionEnhancePro()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFastmotionMacro()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFingerSensor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFlashModeBackSoftLight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFlush()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontBeautyMFNR()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontCaptureCrop()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontFlash()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontFocus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontPortraitMFNR()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontSuperNightBeauty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontTimeLapse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontZoom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportGradienter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportHWGyroscope()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportHandGesture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportIDCardMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportIndiaKaleidoscope()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLensDirtyDetected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLensDirtyLightUI()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLiveMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLiveShot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLiveVVMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLiveVVModeUltraWide()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLongExposureDelay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLongPressRecord()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLowMemoryProtection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMTKPortraitMultiFeatureMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMacroMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMacroModeInSlowMotion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportManualPictureStyle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMiFaceBeauty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMiLiveMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMoonMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMtkCShotMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMtkPixelZsl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMultiHdrSingleMfnr()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMultiScreenDevices()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportNormalWideLDC()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportNotifyThermal4KRecord()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportOnlyMimojiMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportP2doneCshot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPSensorPocketMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportPanorama2X()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportPanoramaSwitchOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportParalleldream()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPictureFlawCheck()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPixelModelSwitchCameraId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPixelModelZoom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPresentationDisplay()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportProfessionalPhotoHistogram()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportQuadCfa()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportReleaseSensorCache()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSRInMoonMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSRInSuperMoon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportScreenLight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShortVideoBeautyBody()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShotBoost()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShowEvWhenTouchdown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShowOnlyFrontLensRelated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSlowMotionUsingUW()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSlowMotionVideoEditor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSlowShutter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSoundSettingPreference()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSpeechShutter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportStartupAlphaMask()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSubtitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSuperEIS()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSuperEISPro()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSuperMoonMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSuperNightIncaptureMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSuperResolution()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportTimestop()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportUltraPixelSelfie()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportUltraTele()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportUltraWide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportUltraWide60FPSRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportUltraWideBokeh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWideLDC()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVideoSKy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVideoTag()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVideoToTele()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVideoToUltraTele()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportWideSelfie()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportZslOnHhtCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedAoHDR()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedBackPortrait()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedChromaFlash()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedEdgeTouch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedFastZoomIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedFrontPortrait()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedGPS()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedLongPressBurst()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedManualFunction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedMovieSolid()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedNewStyleTimeWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedObjectTrack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedOpticalZoom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedPanorama()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedPeakingMF()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedQuickSnap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSecondaryStorage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedShaderEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSkinBeautify()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedStereo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSuperNightScene()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSuperNightUT()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSuperNightUW()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedTiltShift()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedTimeWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedTorchCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedVideoFrontMirror()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedVideoPause()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedVideoQuality4kUHD()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSurfaceSizeLimited()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTeleHdrPlusMfnrSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isThumbnailSharingSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUWSupportSuperNightSE()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUltraTeleHdrPlusMfnrSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnifySlowmotionSession()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUwQualityAllInSAT()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoAsdSupported(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoBackCloseFD()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoHDRDefaultOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoHdrOperationModeSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoHdrUiPriority()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoSnapshotSizeLimited()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isXiaoMi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public limitMiLiveVideoBeauty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public liveActivationId()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public liveActivationLicense()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public moduleNamePixel()I
    .locals 0
    .annotation build Lcom/mi/device/ConfigConstant$UltraPixel;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public needDisableAutoBrightness()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needDisableParallelShotInHugeMemoryCapture6G()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needTriggerAE()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onlyShowUltraPixelInProMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public parallelMaxAcquireCount()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public parallelMaxAcquireCount8G()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public parallelMaxDequeueCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public parallelMaxDequeueCount8G()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public performSingleCaptureForHdrPlusMfnr()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public preferredImageReprocessorType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public reducePreviewFlag()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public screenLightnessDefaultValue()I
    .locals 0

    const/16 p0, 0xb4

    return p0
.end method

.method public shouldAlwaysEnableMfnrForAlgoUpFrontSingleBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showPixelTabIfSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public support16x10Ratio()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public support18_7_5x9Ratio()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public support19_5x9Ratio()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public support19x9Ratio()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public support20x9Ratio()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public support8KMovie()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAIWatermark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAi30()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAlgoUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAlgoUpExtra4Mmcam()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAlgoUpFeatures()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public supportAlgoUpQ()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAppendYUV2Jpeg()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAsd()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportBackBokehDepth()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportBackSuperNightAlgoUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportBackSuperNightHalfAlgoUp()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public supportBeautyMakeup()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportColorEnhance()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportCustomWB()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportEyeLight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportFlashTimeLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportFrontAi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportFrontBokenDepth()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportFrontCameraWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportFrontSuperNight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportFrontSuperNightAlgoUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportGifVideoSegment()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportHDRCaptureWaitForAEAWBLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportHDRTriggerLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportHHTAlgo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportHdrBokehBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportHdrSuperResolution()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportHighResolutionOutputSizes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportInProgressZoomEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportIndiaAi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportIndiaFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportLowLightBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportLyingDirectHint()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMacroZoomSuperResolution()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportMakeupFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public supportMfnrAlgoUpQuickShotFeatures6G()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public supportMimojiVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMoreFrameCaptureLockAFAE()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMoreModeNewStyle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportMtkCropRegion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMtkIspHidl()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMultiWindow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportNewGoogleLens()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportNewManualParameter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportNoDelayZoom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportOnlyAppWatermark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportOrientation()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public supportParallelPixelVendorWatermark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportParallelVendorWatermark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportPictureWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportPortraitAi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportPortraitLightIndiaEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportPortraitLightingBack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportPortraitLightingFront()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportPreviewVideoCover()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportProMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportProPhotoSRAlgoUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportProVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportRawDataReprocess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportRawDomainBasedSuperNight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportRealtimeEffect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRealtimeManualExposureTime()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRecorderBoost()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportRecordingZoom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRequestFlashMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportSATRemosaic()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportShot2Gallery()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportSnapClickHapticFeedback()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportStabilizerCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportStandaloneMacroCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportStandaloneMacroInManual()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportSuperNightAlgoUpShotQuick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportSuperNightAlgoUpShotQuick6G()Z
    .locals 0

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSuperNightAlgoUpShotQuick()Z

    move-result p0

    return p0
.end method

.method public supportSuperNightFrontFlash()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportSuperNightLock3A()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportSuperNightVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportSwMfnr()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportTeleMacroCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportTimerBurst()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportUltraPixelQCFA()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportVendorWatermark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportVideoBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportVideoSAT()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportWaitAEConverged()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public supportZoomMfnr()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportZslShutter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public useLegacyFlashMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
