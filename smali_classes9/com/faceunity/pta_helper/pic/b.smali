.class final Lcom/faceunity/pta_helper/pic/b;
.super Ljava/lang/Object;
.source "PictureEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/nio/ByteBuffer;

.field final synthetic d:Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;


# direct methods
.method constructor <init>(IILjava/nio/ByteBuffer;Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;)V
    .locals 0

    iput p1, p0, Lcom/faceunity/pta_helper/pic/b;->a:I

    iput p2, p0, Lcom/faceunity/pta_helper/pic/b;->b:I

    iput-object p3, p0, Lcom/faceunity/pta_helper/pic/b;->c:Ljava/nio/ByteBuffer;

    iput-object p4, p0, Lcom/faceunity/pta_helper/pic/b;->d:Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10
    .annotation build Lcom/faceunity/pta_helper/NotProguard;
    .end annotation

    iget v0, p0, Lcom/faceunity/pta_helper/pic/b;->a:I

    iget v1, p0, Lcom/faceunity/pta_helper/pic/b;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/faceunity/pta_helper/pic/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p0, p0, Lcom/faceunity/pta_helper/pic/b;->d:Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, v1}, Lcom/faceunity/pta_helper/pic/PictureEncoder$OnEncoderPictureListener;->onEncoderPictureListener(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
