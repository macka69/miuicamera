.class public Lcom/android/camera/CameraSize;
.super Ljava/lang/Object;
.source "CameraSize.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/CameraSize;",
        ">;"
    }
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/CameraSize;->width:I

    iput p2, p0, Lcom/android/camera/CameraSize;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/CameraSize;->height:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraSize;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/CameraSize;->height:I

    :cond_0
    return-void
.end method

.method public static copyFrom(Landroid/util/Size;)Lcom/android/camera/CameraSize;
    .locals 2

    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/camera/CameraSize;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public area()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public compareTo(Lcom/android/camera/CameraSize;)I
    .locals 1
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    mul-int/2addr v0, p0

    iget p0, p1, Lcom/android/camera/CameraSize;->width:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    mul-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/CameraSize;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/camera/CameraSize;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/android/camera/CameraSize;

    iget v2, p0, Lcom/android/camera/CameraSize;->width:I

    iget v3, p1, Lcom/android/camera/CameraSize;->width:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    return p0
.end method

.method public getRatio()F
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraSize;->width:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/CameraSize;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/camera/CameraSize;->height:I

    iget p0, p0, Lcom/android/camera/CameraSize;->width:I

    shl-int/lit8 v1, p0, 0x10

    ushr-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    mul-int/2addr v0, p0

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSquare()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraSize;->width:I

    if-lez v0, :cond_0

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    if-lez p0, :cond_0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseSize(Lcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;
    .locals 1

    iget v0, p1, Lcom/android/camera/CameraSize;->width:I

    iput v0, p0, Lcom/android/camera/CameraSize;->width:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    iput p1, p0, Lcom/android/camera/CameraSize;->height:I

    return-object p0
.end method

.method public toSizeObject()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/CameraSize;->width:I

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
