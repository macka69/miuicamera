.class public Lcom/mi/device/Citrus;
.super Lcom/mi/device/Lime;
.source "Citrus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Lime;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedOpticalZoomRatioCombination()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isSupportMacroMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUltraWide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportStandaloneMacroCamera()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
