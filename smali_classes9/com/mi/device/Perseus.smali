.class public final Lcom/mi/device/Perseus;
.super Lcom/mi/device/Common;
.source "Perseus.java"


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

.method public getAecLuxHeightLight()I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public getAecLuxLastLight()I
    .locals 0

    const/16 p0, 0x12c

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

.method public getFpNavNameList()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uinput-fpc,uinput-goodix"

    return-object p0
.end method

.method public getParallelRequestRestrictNum()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getRearMaxFPS()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->SLOW_960_FPS:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->getValue()S

    move-result p0

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

.method public isEffectWatermarkFilted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFrontFingerSensor()Z
    .locals 0

    const/4 p0, 0x0

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

.method public isPad()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScreenSlideSupported()Z
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

.method public isSupport3DFaceBeauty()Z
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

.method public isSupportGradienter()Z
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

.method public isSupportPSensorPocketMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSlowMotionVideoEditor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSuperResolution()Z
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

.method public isXiaoMi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public reducePreviewFlag()I
    .locals 0

    const/16 p0, 0xe

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

.method public supportRealtimeManualExposureTime()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportStabilizerCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportSwMfnr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportVideoBokeh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
