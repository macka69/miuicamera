.class public Lcom/mi/device/Begonia;
.super Lcom/mi/device/Common;
.source "Begonia.java"


# direct methods
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

.method public disableCAFDuringHighSpeedRecording()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public enableAlgorithmInFileSuffix()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public enablePreviewPortraitLighting()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public forceUseRemosaicSizeForFront()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAecLuxHeightLight()I
    .locals 0

    const/16 p0, 0x17c

    return p0
.end method

.method public getAecLuxLastLight()I
    .locals 0

    const/16 p0, 0x1a4

    return p0
.end method

.method public getAiEnableDefault()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBackDefaultFNumber()Ljava/lang/String;
    .locals 0

    const-string p0, "4"

    return-object p0
.end method

.method public getBurstShootCount()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getCustomWatermarkVersion()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v4"

    return-object p0
.end method

.method public getDepthMapVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFpNavNameList()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uinput-fpc,uinput-goodix"

    return-object p0
.end method

.method public getFrontDefaultFNumber()Ljava/lang/String;
    .locals 0

    const-string p0, "4.5"

    return-object p0
.end method

.method public getPanoramaCropRatio()F
    .locals 0

    const p0, 0x3f666666

    return p0
.end method

.method public getPanoramaGoalAngle()I
    .locals 0

    const/16 p0, 0x127

    return p0
.end method

.method public getRearMaxFPS()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->SLOW_960_FPS:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->getValue()S

    move-result p0

    return p0
.end method

.method public getRearUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    const-string p0, "2:9248x6936"

    return-object p0
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

    const-string p0, "1.0:2.0"

    return-object p0
.end method

.method public getSupportedButtonOuterZooms()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:2.0"

    return-object p0
.end method

.method public getSupportedOpticalZoomRatioCombination()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getTeleRealRatio()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getWideSelfieMaxSize()I
    .locals 0

    const p0, 0x4c4b40

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

    const/4 p0, 0x0

    return p0
.end method

.method public isAndroidOne()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBigSmallBackPortrait()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCreateCaptureSessionWithSessionConfigurationSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDisableFlashInManual()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEffectWatermarkFilted()Z
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

.method public isForceCloseCamera()Z
    .locals 0

    const/4 p0, 0x1

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

.method public isFunSupportEIS()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHALEnableFrontMFNR()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public isISPRotated()Z
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x1

    return p0
.end method

.method public isMctfModeSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMiLensSupported()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public isRethrowException()Z
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

    const/4 p0, 0x0

    return p0
.end method

.method public isSubThreadFrameListener()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupport3DFaceBeauty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupport4KDurationLimit()Z
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

.method public isSupportBokehAdjust()Z
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

.method public isSupportDeFlicker()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDeviceWatchDog()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDynamicFeature()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFingerSensor()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFrontBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontCaptureCrop()Z
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

.method public isSupportMacroMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportMiFaceBeauty()Z
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

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPanorama2X()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportQuadCfa()Z
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

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShotBoost()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSlowMotionVideoEditor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportStartupAlphaMask()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSuperResolution()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWide()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWide60FPSRecording()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWideLDC()Z
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

    const/4 p0, 0x1

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

    const/4 p0, 0x0

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

.method public isUnifySlowmotionSession()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideoBackCloseFD()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isXiaoMi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public limitMiLiveVideoBeauty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public moduleNamePixel()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onlyShowUltraPixelInProMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public parallelMaxAcquireCount()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public parallelMaxDequeueCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public preferredImageReprocessorType()I
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

.method public showPixelTabIfSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public support19_5x9Ratio()Z
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

    const-string p0, "macro:ultra_wide:pro:capture_intent"

    return-object p0
.end method

.method public supportAlgoUpQ()Z
    .locals 0

    const/4 p0, 0x1

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

.method public supportFrontAi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportFrontCameraWaterMark()Z
    .locals 0

    const/4 p0, 0x0

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

.method public supportNewGoogleLens()Z
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

.method public supportRawDomainBasedSuperNight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRealtimeEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportShot2Gallery()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public supportStandaloneMacroInManual()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportSwMfnr()Z
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

.method public supportWaitAEConverged()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "true"

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

    const/4 p0, 0x1

    return p0
.end method
