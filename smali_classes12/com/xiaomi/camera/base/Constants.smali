.class public final Lcom/xiaomi/camera/base/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/base/Constants$MiviSuperNightMode;,
        Lcom/xiaomi/camera/base/Constants$AnchorFrameType;,
        Lcom/xiaomi/camera/base/Constants$VideoHdrMode;,
        Lcom/xiaomi/camera/base/Constants$CpuBoostScenes;,
        Lcom/xiaomi/camera/base/Constants$AmbilightAutoAeMode;,
        Lcom/xiaomi/camera/base/Constants$EngineProcessAlgoType;,
        Lcom/xiaomi/camera/base/Constants$SatMaterCameraId;,
        Lcom/xiaomi/camera/base/Constants$AlgoType;,
        Lcom/xiaomi/camera/base/Constants$ResultImage;,
        Lcom/xiaomi/camera/base/Constants$ShotType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInMTKRawSuperNightProcessor(I)Z
    .locals 1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isIntentType(I)Z
    .locals 1

    const/4 v0, -0x7

    if-eq p0, v0, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_0

    const/4 v0, -0x5

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isMTIKRawSuperNightEngine2ND(I)Z
    .locals 1

    const/16 v0, 0x10

    if-eq v0, p0, :cond_1

    const/16 v0, 0xe

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMTKRawSuperNight(I)Z
    .locals 1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
