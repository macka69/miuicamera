.class public Lcom/mi/device/Gauguinpro_pro;
.super Lcom/mi/device/Gauguin;
.source "Gauguinpro_pro.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Gauguin;-><init>()V

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

    const p0, 0x3f70c341

    return p0
.end method

.method public getPanoramaGoalAngle()I
    .locals 0

    const/16 p0, 0x13a

    return p0
.end method

.method public getRearUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    const-string p0, "3:12000x9000"

    return-object p0
.end method

.method public isSupportSuperNightIncaptureMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public moduleNamePixel()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
