.class Landroidx/core/location/GnssStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GnssStatusWrapper.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/GnssStatus;


# direct methods
.method constructor <init>(Landroid/location/GnssStatus;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/GnssStatus;

    iput-object p1, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public getAzimuthDegrees(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result p0

    return p0
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getCn0DbHz(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result p0

    return p0
.end method

.method public getConstellationType(I)I
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result p0

    return p0
.end method

.method public getElevationDegrees(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result p0

    return p0
.end method

.method public getSatelliteCount()I
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result p0

    return p0
.end method

.method public getSvid(I)I
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result p0

    return p0
.end method

.method public hasAlmanacData(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result p0

    return p0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasEphemerisData(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result p0

    return p0
.end method

.method public usedInFix(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result p0

    return p0
.end method
