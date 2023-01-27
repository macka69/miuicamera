.class public final Lcom/mi/device/Vangogh;
.super Lcom/mi/device/Monet;
.source "Vangogh.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Monet;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloneMaxSize()I
    .locals 0

    const p0, 0xb8a1a0

    return p0
.end method

.method public getSupportedButtonOuterZooms()Ljava/lang/String;
    .locals 0

    const-string p0, "capture:0.6:1.0:5.0"

    return-object p0
.end method

.method public getSupportedOpticalZoomRatioCombination()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getSupportedZoom()Ljava/lang/String;
    .locals 0

    const-string p0, "capture_inner:0.6:1:2:5:10;capture_ruler:4:10:10:5"

    return-object p0
.end method

.method public getVideoToTeleMaxRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "2"

    return-object p0
.end method

.method public getWatermarkRegion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupport3SATZoomingOptimization()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportCloneMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDynamicFeature()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportMoonMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSRInMoonMode()Z
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

.method public supportAIWatermark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportMimojiVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public supportRecorderBoost()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportVideoSAT()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
