.class public Lcom/mi/device/Courbet;
.super Lcom/mi/device/Common;
.source "Courbet.java"


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

.method public allowCapturingHeicImage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public enableMultiframeInManualMode()Ljava/lang/String;
    .locals 0

    const-string p0, "mfnr:1"

    return-object p0
.end method

.method public enableOutputRawInManualModule()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public enableXiaomiAmbilight()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "true"

    return-object p0
.end method

.method public get4kCameraBoostThreshold()J
    .locals 2

    const-wide/32 v0, 0x21999a

    return-wide v0
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

.method public getBurstShootCount()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getCustomWatermarkVersion()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "v1"

    return-object p0
.end method

.method public getDepthMapVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFixedShot2ShotTime()I
    .locals 0

    const/4 p0, 0x0

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

.method public getMaxVideoSATZoom()F
    .locals 0

    const/high16 p0, 0x41200000    # 10.0f

    return p0
.end method

.method public getPanoramaCropRatio()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getPanoramaGoalAngle()I
    .locals 0

    const/16 p0, 0x143

    return p0
.end method

.method public getPanoramaMaxSize()I
    .locals 0

    const p0, 0x1312d00

    return p0
.end method

.method public getParallelRequestRestrictNum()I
    .locals 0

    const/4 p0, 0x3

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

    const-string p0, "2:9280x6944"

    return-object p0
.end method

.method public getSRFrameNumber()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getShotBoostMaxShotCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getShotBoostMinDelayedTime()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public getStandaloneMacroSupportedOpticalZoomRatioCombination()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0:2.0"

    return-object p0
.end method

.method public getSupportDepurpleLens()Ljava/lang/String;
    .locals 0

    const-string p0, "MACRO:WIDE:ULTRA_WIDE:SAT"

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

.method public hasSiblings()Z
    .locals 0

    const/4 p0, 0x1

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

.method public isEffectWatermarkFilted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEnableAWBLockInPanorama()Z
    .locals 0

    const/4 p0, 0x0

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

.method public isForceUsingNormalOperationMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFrontFingerSensor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrontForceUseMiBokeh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFrontPopCamera()Z
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

.method public isSRRequireReprocess()Z
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

.method public isSupportAutoZoom()Z
    .locals 0

    const/4 p0, 0x1

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

.method public isSupportDocumentMode()Z
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

.method public isSupportDollyZoomHighEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDualVideo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFastmotionEnhance()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFastmotionEnhancePro()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportFastmotionMacro()Z
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

.method public isSupportFrontPortraitMFNR()Z
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

    const/4 p0, 0x0

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

.method public isSupportLiveMode()Z
    .locals 0

    const/4 p0, 0x0

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

.method public isSupportLiveVVModeUltraWide()Z
    .locals 0

    const/4 p0, 0x0

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

.method public isSupportMiLiveMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportMoonMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMultiHdrSingleMfnr()Z
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

    const/4 p0, 0x1

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

.method public isSupportPixelModelZoom()Z
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

.method public isSupportUltraWide()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWide60FPSRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportUltraWideBokeh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportUltraWideLDC()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportVideoTag()Z
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

.method public isUnifySlowmotionSession()Z
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

    const/4 p0, 0x2

    return p0
.end method

.method public needDisableAutoBrightness()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needTriggerAE()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public parallelMaxAcquireCount()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public parallelMaxDequeueCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public reducePreviewFlag()I
    .locals 0

    const/16 p0, 0xc

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

.method public support20x9Ratio()Z
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

    const-string/jumbo p0, "ultra_wide:macro:pro:capture_intent"

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

.method public supportBackSuperNightHalfAlgoUp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportBeautyMakeup()Z
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

.method public supportHighResolutionOutputSizes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportLyingDirectHint()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportMacroZoomSuperResolution()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportMimojiVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public supportMoreFrameCaptureLockAFAE()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportNewManualParameter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportOnlyAppWatermark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportParallelVendorWatermark()Z
    .locals 0

    const/4 p0, 0x0

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

.method public supportProVideo()Z
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

.method public supportShot2Gallery()Z
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

.method public supportSuperNightFrontFlash()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportSuperNightLock3A()Z
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

    const/4 p0, 0x1

    return p0
.end method
