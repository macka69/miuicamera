.class Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "AgeGenderAndMagicMirrorWaterMark.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mPaddingX:I

.field private mPaddingY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIIIIFF)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p5

    div-int/2addr p5, p4

    int-to-float p4, p5

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mHeight:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mWidth:I

    mul-float/2addr p7, p4

    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingX:I

    mul-float/2addr p8, p4

    invoke-static {p8}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingY:I

    new-instance p2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->calcCenterAxis()V

    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mCenterY:I

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mHeight:I

    return p0
.end method

.method public getLeft()I
    .locals 0

    invoke-super {p0}, Lcom/android/camera/effect/renders/WaterMark;->getLeft()I

    move-result p0

    return p0
.end method

.method public getPaddingX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingX:I

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingY:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object p0
.end method

.method public getTop()I
    .locals 0

    invoke-super {p0}, Lcom/android/camera/effect/renders/WaterMark;->getTop()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mWidth:I

    return p0
.end method
