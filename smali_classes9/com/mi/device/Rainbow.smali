.class public Lcom/mi/device/Rainbow;
.super Lcom/mi/device/Mojito;
.source "Rainbow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/device/Mojito;-><init>()V

    return-void
.end method


# virtual methods
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

.method public isSupportIDCardMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSpeechShutter()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSubtitle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
