.class public Lcom/android/camera/panorama/PanoramaGP3ImageFormat;
.super Ljava/lang/Object;
.source "PanoramaGP3ImageFormat.java"


# static fields
.field public static final YUV420_PLANAR:Ljava/lang/String; = "YUV420_PLANAR"

.field public static final YUV420_SEMIPLANAR:Ljava/lang/String; = "YUV420_SEMIPLANAR"

.field public static final YVU420_SEMIPLANAR:Ljava/lang/String; = "YVU420_SEMIPLANAR"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getByteBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2

    :try_start_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    invoke-static {p0}, Lcom/android/camera/panorama/NativeMemoryAllocator;->getAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getImageFormat(JJ)Ljava/lang/String;
    .locals 0

    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const-string p0, "YVU420_SEMIPLANAR"

    return-object p0

    :cond_0
    const-string p0, "YUV420_SEMIPLANAR"

    return-object p0
.end method

.method public static getImageFormat(Landroid/media/Image;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string p0, "YUV420_PLANAR"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {v0}, Lcom/android/camera/panorama/PanoramaGP3ImageFormat;->getByteBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/android/camera/panorama/PanoramaGP3ImageFormat;->getByteBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/panorama/PanoramaGP3ImageFormat;->getImageFormat(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
