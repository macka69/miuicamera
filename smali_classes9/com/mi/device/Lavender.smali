.class public final Lcom/mi/device/Lavender;
.super Lcom/mi/device/Common;
.source "Lavender.java"


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

.method public defaultDeviceWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public enableAlgorithmInFileSuffix()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAecLuxHeightLight()I
    .locals 0

    const/16 p0, 0x15e

    return p0
.end method

.method public getAecLuxLastLight()I
    .locals 0

    const/16 p0, 0x17c

    return p0
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

.method public getFpNavNameList()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uinput-fpc,uinput-goodix"

    return-object p0
.end method

.method public getPanoramaCropRatio()F
    .locals 0

    const p0, 0x3f68240b

    return p0
.end method

.method public getPanoramaGoalAngle()I
    .locals 0

    const/16 p0, 0xa0

    return p0
.end method

.method public getRearMaxFPS()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->SLOW_120_FPS:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->getValue()S

    move-result p0

    return p0
.end method

.method public getRearUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    const-string p0, "1:8000x6000"

    return-object p0
.end method

.method public getShotBoostMaxShotCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getShotBoostMinDelayedTime()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public hasSiblings()Z
    .locals 0

    const/4 p0, 0x1

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

.method public isEffectWatermarkFilted()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public isLegacyMfnrDevice()Z
    .locals 0

    const/4 p0, 0x1

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

.method public isPad()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetEarlyRepeating()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSubThreadFrameListener()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAccessExternalStorageByFile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAsd()Z
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

.method public isSupportGradienter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportScreenLight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportShotBoost()Z
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

.method public isSupportedVideoPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedVideoQuality4kUHD()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnifySlowmotionSession()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideoBackCloseFD()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isXiaoMi()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onlyShowUltraPixelInProMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public reducePreviewFlag()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method

.method public screenLightnessDefaultValue()I
    .locals 0

    const/16 p0, 0x50

    return p0
.end method

.method public supportAsd()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public supportCustomWB()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportFrontAi()Z
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

.method public supportOnlyAppWatermark()Z
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

.method public supportSwMfnr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportVendorWatermark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportWaitAEConverged()Ljava/lang/String;
    .locals 0

    const-string p0, "false"

    return-object p0
.end method

.method public supportZoomMfnr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
