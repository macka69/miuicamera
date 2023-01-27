.class final Lcom/faceunity/pta_helper/pic/a;
.super Ljava/lang/Object;
.source "PictureEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/nio/IntBuffer;

.field final synthetic d:Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;


# direct methods
.method constructor <init>(IILjava/nio/IntBuffer;Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;)V
    .locals 0

    iput p1, p0, Lcom/faceunity/pta_helper/pic/a;->a:I

    iput p2, p0, Lcom/faceunity/pta_helper/pic/a;->b:I

    iput-object p3, p0, Lcom/faceunity/pta_helper/pic/a;->c:Ljava/nio/IntBuffer;

    iput-object p4, p0, Lcom/faceunity/pta_helper/pic/a;->d:Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11
    .annotation build Lcom/faceunity/pta_helper/NotProguard;
    .end annotation

    iget v0, p0, Lcom/faceunity/pta_helper/pic/a;->a:I

    iget v1, p0, Lcom/faceunity/pta_helper/pic/a;->b:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/faceunity/pta_helper/pic/a;->c:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/faceunity/pta_helper/pic/a;->b:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget v6, p0, Lcom/faceunity/pta_helper/pic/a;->a:I

    mul-int v7, v3, v6

    sub-int/2addr v4, v3

    sub-int/2addr v4, v5

    mul-int/2addr v4, v6

    move v5, v2

    :goto_1
    iget v6, p0, Lcom/faceunity/pta_helper/pic/a;->a:I

    if-ge v5, v6, :cond_0

    add-int v6, v7, v5

    aget v6, v1, v6

    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v6, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    const v10, -0xff0100

    and-int/2addr v6, v10

    or-int/2addr v6, v9

    or-int/2addr v6, v8

    add-int v8, v4, v5

    aput v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/faceunity/pta_helper/pic/a;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Lcom/faceunity/pta_helper/pic/a;->d:Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;->onEncoderPictureListener(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method
