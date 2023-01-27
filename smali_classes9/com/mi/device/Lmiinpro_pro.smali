.class public final Lcom/mi/device/Lmiinpro_pro;
.super Lcom/mi/device/Lmi;
.source "Lmiinpro_pro.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Lmi;-><init>()V

    return-void
.end method


# virtual methods
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

.method public getSupportDepurpleLens()Ljava/lang/String;
    .locals 0

    const-string p0, "MACRO:WIDE:ULTRA_WIDE:TELE:ULTRA_TELE:SAT"

    return-object p0
.end method

.method public getSupportedButtonOuterZooms()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:3.0;supernight:0.6:1.0:3.0"

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

.method public getWatermarkRegion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isSupportMacroMode()Z
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return p0
.end method

.method public shouldCheckSatFallbackState()Z
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
