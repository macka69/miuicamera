.class public final Lcom/mi/device/Apollo_pro;
.super Lcom/mi/device/Apollo;
.source "Apollo_pro.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Apollo;-><init>()V

    return-void
.end method


# virtual methods
.method public enableMultiframeInManualMode()Ljava/lang/String;
    .locals 0

    const-string p0, "notelemfnr:1;telesr:1"

    return-object p0
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

.method public getRearMaxFPS()S
    .locals 0

    sget-object p0, Lcom/mi/device/SlowMotionEnum;->SLOW_120_FPS:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {p0}, Lcom/mi/device/SlowMotionEnum;->getValue()S

    move-result p0

    return p0
.end method

.method public getRearUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    const-string p0, "3:12032x9024"

    return-object p0
.end method

.method public getSupportedZoom()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.6:1:2:5:10:30;capture_ruler:4:10:10:5:10"

    return-object p0
.end method

.method public getWatermarkRegion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public moduleNamePixel()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
