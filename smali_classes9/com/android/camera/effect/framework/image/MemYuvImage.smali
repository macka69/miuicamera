.class public Lcom/android/camera/effect/framework/image/MemYuvImage;
.super Ljava/lang/Object;
.source "MemYuvImage.java"


# instance fields
.field public mChannels:I

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseImage(Landroid/media/Image;)V
    .locals 9

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 p1, 0x0

    aget-object v2, p0, p1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    aget-object v2, p0, p1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aget-object p1, p0, p1

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 p1, 0x1

    aget-object v3, p0, p1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    aget-object v3, p0, p1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aget-object p1, p0, p1

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 p1, 0x2

    aget-object v4, p0, p1

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    aget-object v4, p0, p1

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static/range {v0 .. v8}, Lcom/android/camera/effect/ShaderNativeUtil;->parseYUVImage(IILjava/nio/Buffer;Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    return-void
.end method
