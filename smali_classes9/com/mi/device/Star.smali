.class public Lcom/mi/device/Star;
.super Lcom/mi/device/Common;
.source "Star.java"


# static fields
.field private static final SUPER_NIGHT_EV_VALUES_STAR_FRONT:[I

.field private static final SUPER_NIGHT_EV_VALUES_STAR_REAR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mi/device/Star;->SUPER_NIGHT_EV_VALUES_STAR_FRONT:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/device/Star;->SUPER_NIGHT_EV_VALUES_STAR_REAR:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x24
        -0x18
        -0x9
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x24
        -0xc
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustScreenLight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public allowCapturingHeicImage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public defaultAntiBanding()Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method public defaultLensDirtyTip()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public disableCAFDuringHighSpeedRecording()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public disableCloseFlashForThermalDetected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public enableMultiframeInManualMode()Ljava/lang/String;
    .locals 0

    const-string p0, "notelemfnr:1;telesr:1"

    return-object p0
.end method

.method public enableOutputRawInManualModule()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public enableXiaomiAmbilight()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "true:4000x3000"

    return-object p0
.end method

.method public getAecLuxHeightLight()I
    .locals 0

    const/16 p0, 0x168

    return p0
.end method

.method public getAecLuxLastLight()I
    .locals 0

    const/16 p0, 0x190

    return p0
.end method

.method public getAlgoPortraitBackLogicMaxWidth()I
    .locals 0

    const/16 p0, 0xfa0

    return p0
.end method

.method public getBackDefaultFNumber()Ljava/lang/String;
    .locals 0

    const-string p0, "3.2"

    return-object p0
.end method

.method public getBurstShootCount()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getCloneMaxSize()I
    .locals 0

    const p0, 0xc96a80

    return p0
.end method

.method public getCloneModelVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.44.3"

    return-object p0
.end method

.method public getCustomWatermarkVersion()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v6"

    return-object p0
.end method

.method public getDefaultShutterSoundType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getDepthMapVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDualVideoCameraSelectConfig()Ljava/lang/String;
    .locals 0

    const-string p0, "0.5:uw:0.5;1:wide:1.0;2:wide:1.0;5:ut:5.0;10:ut:5.0;1:front:1.0"

    return-object p0
.end method

.method public getFixedShot2ShotTime()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFpNavNameList()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uinput-fpc,uinput-goodix"

    return-object p0
.end method

.method public getFrontMaxFPS()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->SLOW_120_FPS:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->getValue()S

    move-result p0

    return p0
.end method

.method public getHDRDefaultValue()Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method

.method public getHighAccuracyTolerance()F
    .locals 0

    const p0, 0x3ba3d70a

    return p0
.end method

.method public getHighScreenRefreshRateList()Ljava/lang/String;
    .locals 0

    const-string p0, "90,60"

    return-object p0
.end method

.method public getMaxRemoteBufferSize()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public getMaxVideoPreviewSize()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data
.end method

.method public getMaxVideoSATZoom()F
    .locals 0

    const/high16 p0, 0x41700000    # 15.0f

    return p0
.end method

.method public getMfnrFrameNum()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getPanoramaCropRatio()F
    .locals 0

    const p0, 0x3f6f6e7f

    return p0
.end method

.method public getPanoramaGoalAngle()I
    .locals 0

    const/16 p0, 0x13b

    return p0
.end method

.method public getPanoramaMaxSize()I
    .locals 0

    const p0, 0x1312d00

    return p0
.end method

.method public getParallelPara()Ljava/lang/String;
    .locals 0

    const-string p0, "8,1!1:3;12,1!1:5;16,1!1:5"

    return-object p0
.end method

.method public getRawSuperNightImpl()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getRearMaxFPS()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->SLOW_1920_FPS:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->getValue()S

    move-result p0

    return p0
.end method

.method public getRearUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    const-string p0, "4:8160x6120"

    return-object p0
.end method

.method public getRearUltraTeleUltraPixelResolution()Ljava/lang/String;
    .locals 0

    const-string p0, "1:8000x6000"

    return-object p0
.end method

.method public getRearUltraWideUltraPixelResolution()Ljava/lang/String;
    .locals 0

    const-string p0, "1:8000x6000"

    return-object p0
.end method

.method public getRepeatingDropImageCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSRFrameNumber()I
    .locals 0

    const/16 p0, 0xa

    return p0
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

    sget-object p0, Lcom/mi/device/Star;->SUPER_NIGHT_EV_VALUES_STAR_FRONT:[I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/mi/device/Star;->SUPER_NIGHT_EV_VALUES_STAR_REAR:[I

    :goto_0
    return-object p0
.end method

.method public getSupportDepurpleLens()Ljava/lang/String;
    .locals 0

    const-string p0, "sat"

    return-object p0
.end method

.method public getSupportedButtonOuterZooms()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.5:1.0:5.0;video:0.5:1.0:5.0;pixel:0.5:1:5;supernight:0.5:1.0:5.0"

    return-object p0
.end method

.method public getSupportedOpticalZoomRatioCombination()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getSupportedZoom()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.5:1:2:5:10:120;capture_ruler:5:5:10:5:11;video_inner:0.5:1:2:5:10:15;video_ruler:5:10:10:5:10"

    return-object p0
.end method

.method public getUltraTeleSizeMaxWidth()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public getUltraWideSizeMaxWidth()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public getVLogMenuPosition()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVideoToTeleMaxRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "3"

    return-object p0
.end method

.method public getWatermarkRegion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getWideSizeMaxWidth()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public iSSensorHasLatency()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public is18x9RatioScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public is4K30FpsEISSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isBigSmallBackPortrait()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isBurstShotRequireReprocess()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCinematicPhotoSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCreateCaptureSessionWithSessionConfigurationSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDisableAlgoByThermalSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEffectWatermarkFilted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFastShutterCallbackSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontCameraHdrPlusMfnrSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFrontCaptureHDRDefaultAuto()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFrontFingerSensor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFunModuleSupportSoundEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFunSupportEIS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHALEnableFrontMFNR()Z
    .locals 0

    const/4 p0, 0x1

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

    const/4 p0, 0x0

    return p0
.end method

.method public isHongMi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isISPRotated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLowPowerQRScan()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMctfModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMfnrAlogUpQuickShotEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedFullGyroscope()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedLimitSize()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPad()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isQRCodeAndUltraPixelMutex()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isQcfaOnlyBinningSize()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRemoteOnlineSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRemoveHeicFromStable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRethrowException()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public isSatSupportSuperNightSE()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSplitVideoSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubThreadFrameListener()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSuperEisUseWideCamera()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSuperMacro()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupport3DFaceBeauty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupport3SATZoomingOptimization()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupport4KDurationLimit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupport8KDurationLimit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAFSaliencyCheck()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAbortCaptures()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAccessExternalStorageByFile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAudioMapMove()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAutoHibernation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAutoZoom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportBeautyBody()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportCameraRole()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportCloneCopyMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportCloneMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportCommonKaleidoscope()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportCustomWaterMark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportCustomWaterMarkGen2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDeFlicker()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDepurpleInHdr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDocumentMode2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDollyZoom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDollyZoomSpecificEncode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDualVideo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFastmotionEnhancePro()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFlush()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFrontBeautyMFNR()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFrontFlash()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFrontSuperNightBeauty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFrontTimeLapse()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportGradienter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportHandGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportIDCardMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportIndiaKaleidoscope()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLensDirtyDetected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLensDirtyLightUI()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLiveShot()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLiveVVMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLongExposureDelay()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportMacroMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportManualPictureStyle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportMiLiveMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportNormalWideLDC()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportNotifyThermal4KRecord()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportPSensorPocketMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPanorama2X()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPanoramaSwitchOrientation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportParalleldream()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportPictureFlawCheck()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPixelModelSwitchCameraId()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportPresentationDisplay()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportProfessionalPhotoHistogram()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportReleaseSensorCache()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportScreenLight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportShortVideoBeautyBody()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportShotBoost()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportShowEvWhenTouchdown()Z
    .locals 0

    const/4 p0, 0x1

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

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSoundSettingPreference()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportStartupAlphaMask()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSubtitle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSuperEIS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSuperEISPro()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSuperMoonMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSuperNightIncaptureMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSuperResolution()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportTimestop()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraTele()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWide()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWideBokeh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWideLDC()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportVideoSKy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportVideoTag()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportVideoToUltraTele()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportWideSelfie()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedAoHDR()Z
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedGPS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedLongPressBurst()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedManualFunction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedMovieSolid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedNewStyleTimeWaterMark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedObjectTrack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedOpticalZoom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedPeakingMF()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedQuickSnap()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedSecondaryStorage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedShaderEffect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedSkinBeautify()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedSuperNightScene()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedSuperNightUT()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedSuperNightUW()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedTiltShift()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedTimeWaterMark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedTorchCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedVideoFrontMirror()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedVideoPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedVideoQuality4kUHD()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isThumbnailSharingSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUltraTeleHdrPlusMfnrSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUnifySlowmotionSession()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideoAsdSupported(II)Z
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/16 p0, 0x3c

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoHdrOperationModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideoHdrUiPriority()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isXiaoMi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public moduleNamePixel()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needTriggerAE()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public parallelMaxDequeueCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public performSingleCaptureForHdrPlusMfnr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public reducePreviewFlag()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public screenLightnessDefaultValue()I
    .locals 0

    const/16 p0, 0xa0

    return p0
.end method

.method public shouldAlwaysEnableMfnrForAlgoUpFrontSingleBokeh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showPixelTabIfSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public support19_5x9Ratio()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public support20x9Ratio()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public support8KMovie()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportAIWatermark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportAi30()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportAlgoUp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportAlgoUpFeatures()Ljava/lang/String;
    .locals 0

    const-string p0, "macro:capture_intent:ultra_wide:pro"

    return-object p0
.end method

.method public supportAlgoUpQ()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportAppendYUV2Jpeg()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAsd()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public supportBackBokehDepth()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportBeautyMakeup()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportColorEnhance()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportEyeLight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportFrontAi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportFrontSuperNightAlgoUp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportGifVideoSegment()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportHdrBokehBack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportHdrSuperResolution()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportHighResolutionOutputSizes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportInProgressZoomEffect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportIndiaAi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportIndiaFilter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportLyingDirectHint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportMimojiVersion()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public supportMoreFrameCaptureLockAFAE()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportNewGoogleLens()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportNoDelayZoom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportOnlyAppWatermark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportPictureWaterMark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportPortraitAi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportPortraitLightIndiaEffect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportPortraitLightingBack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportPortraitLightingFront()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportPreviewVideoCover()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportProPhotoSRAlgoUp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportProVideo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRawDomainBasedSuperNight()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public supportRecordingZoom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRequestFlashMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportSATRemosaic()Z
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

.method public supportSuperNightFrontFlash()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportSuperNightVideo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportSwMfnr()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportTimerBurst()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportUltraPixelQCFA()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportVideoSAT()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportZoomMfnr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
