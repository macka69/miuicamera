.class public final Lcom/mi/device/Lmipro_pro;
.super Lcom/mi/device/Lmi;
.source "Lmipro_pro.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Lmi;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgoPortraitBackLogicMaxWidth()I
    .locals 0

    const/16 p0, 0xd00

    return p0
.end method

.method public getBackDefaultFNumber()Ljava/lang/String;
    .locals 0

    const-string p0, "4"

    return-object p0
.end method

.method public getFixedShot2ShotTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHDRDefaultValue()Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method

.method public getMaxRemoteBufferSize()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public getPanoramaCropRatio()F
    .locals 0

    const p0, 0x3f733333

    return p0
.end method

.method public getPanoramaGoalAngle()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public getSRFrameNumber()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getSRFrameNumberPerformanceMode()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getSuperMoonZoomRules()[Ljava/lang/String;
    .locals 1

    const-string p0, "3:5:10:20:30"

    const-string v0, "3:10:10:10"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportDepurpleLens()Ljava/lang/String;
    .locals 0

    const-string p0, "MACRO:WIDE:ULTRA_WIDE:TELE:ULTRA_TELE:SAT"

    return-object p0
.end method

.method public getSupportedButtonOuterZooms()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:3.0;supernight:0.6:1.0:3.0;supermoon:3:30"

    return-object p0
.end method

.method public getSupportedOpticalZoomRatioCombination()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getSupportedZoom()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.6:1:3:5:10;capture_ruler:4:10:10:5"

    return-object p0
.end method

.method public getVideoToTeleMaxRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "4"

    return-object p0
.end method

.method public isMfnrAlogUpQuickShotEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSRRequireReprocess()Z
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

.method public isSupportMacroMode()Z
    .locals 0

    const/4 p0, 0x0

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

.method public isSupportVideoToTele()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedOpticalZoom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTeleHdrPlusMfnrSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public performSingleCaptureForHdrPlusMfnr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportHdrBokehBack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportRequestFlashMode()Z
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

.method public supportSuperNightLock3A()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
