.class public Lcom/xiaomi/protocol/IImageReaderParameterSets;
.super Ljava/lang/Object;
.source "IImageReaderParameterSets.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cameraType:I

.field public format:I

.field public height:I

.field public imageType:I

.field public isParallel:Z

.field private mPhysicCameraId:I

.field public maxImages:I

.field private shouldHoldImages:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/protocol/IImageReaderParameterSets$1;

    invoke-direct {v0}, Lcom/xiaomi/protocol/IImageReaderParameterSets$1;-><init>()V

    sput-object v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    iput p1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iput p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iput p3, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iput p4, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    iput p5, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    iput p6, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    iget v1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    iget v1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    iget v1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    iget-boolean v1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    iget p1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPhysicCameraId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    return p0
.end method

.method public isShouldHoldImages()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    return p0
.end method

.method public setPhysicCameraId(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    return-void
.end method

.method public setShouldHoldImages(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget p0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x7

    aput-object p0, v1, v2

    const-string p0, "IImageReaderParameterSets[ %d, %d, %d, %d, %s, %s, %s, %d]"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
