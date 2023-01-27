.class public Lcom/android/camera/groupshot/GroupShot;
.super Ljava/lang/Object;
.source "GroupShot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupShot"


# instance fields
.field private mHeight:I

.field private mMaxImageNum:I

.field private mNative:J

.field private mStart:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "morpho_groupshot"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t loadLibrary, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    return-void
.end method

.method private final native addTargetRect(J[I)I
.end method

.method private final native attach(J[B)I
.end method

.method private final native attachYuv(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I
.end method

.method private final native changeMaxNum(JII)I
.end method

.method private final native clearImages(J)I
.end method

.method private final native createNativeObject()J
.end method

.method private final native deleteNativeObject(J)V
.end method

.method private final native end(J)I
.end method

.method private static getFD(Ljava/io/FileDescriptor;)I
    .locals 2

    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private final native getImage(J[B)I
.end method

.method private final native getImageAndSaveJpeg(JLjava/lang/String;I)I
.end method

.method private final native getImageNum(J)I
.end method

.method private final native getJpegData(JI[B)I
.end method

.method private final native getJpegSize(JI)I
.end method

.method private final native getPreviewImage(JIII[B)I
.end method

.method private final native getRawData(JI[B)I
.end method

.method private final native getRecommendedImageIndex(J[II)I
.end method

.method private final native getRecommendedRect(JII[I)I
.end method

.method private final native getScaledImageAndSaveJpeg(JIILjava/lang/String;)I
.end method

.method private final native getScaledOutputImage(JII[B)I
.end method

.method private final native getTargetImage(JIIII[B)I
.end method

.method private final native getTargetNum(J)I
.end method

.method private final native getTargetRects(J[I)I
.end method

.method private final native getYuvImage(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I
.end method

.method private final native initializeNativeObject(JIIIIIII)I
.end method

.method private final native saveInputImages(JLjava/lang/String;)I
.end method

.method private final native selectTarget(JII)I
.end method

.method private final native setBaseImage(JI)I
.end method

.method private final native setBestFace(J)I
.end method

.method private final native start(JI)I
.end method

.method private final native updateTargetRect(JI[I)I
.end method


# virtual methods
.method public addTargetRect([I)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->addTargetRect(J[I)I

    move-result p0

    return p0
.end method

.method public attach(Landroid/media/Image;)I
    .locals 12

    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "GroupShot attach mNative=%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    const/4 v2, -0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    sget-object v2, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x2

    aget-object v6, v0, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    const/4 p1, 0x3

    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    const-string p1, "attach: size=%dx%d stride=%dx%d"

    invoke-static {v3, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    aget-object p1, v0, v4

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object p1, v0, v1

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    aget-object p1, v0, v4

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    aget-object p1, v0, v1

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/groupshot/GroupShot;->attachYuv(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected image format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public attach([B)I
    .locals 4

    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GroupShot attach mNative=%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->attach(J[B)I

    move-result p0

    return p0
.end method

.method public attach_end()I
    .locals 4

    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GroupShot attach end, mNative=%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/groupshot/GroupShot;->end(J)I

    move-result p0

    return p0
.end method

.method public attach_start(I)I
    .locals 6

    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "GroupShot attach start mNative=%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    invoke-direct {p0, v2, v3, p1}, Lcom/android/camera/groupshot/GroupShot;->start(JI)I

    move-result p0

    return p0
.end method

.method public changeMaxNum(II)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/groupshot/GroupShot;->changeMaxNum(JII)I

    move-result p0

    return p0
.end method

.method public clearImages()I
    .locals 4

    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "clearImages mNative=%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/groupshot/GroupShot;->clearImages(J)I

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 6

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const-string v0, "finish mNative=%x"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/groupshot/GroupShot;->deleteNativeObject(J)V

    iput v1, p0, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    iput v1, p0, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    iput v1, p0, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    iput-boolean v1, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    iput-wide v2, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    return-void
.end method

.method public getImageAndSaveJpeg(Ljava/io/FileDescriptor;)I
    .locals 6

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/camera/groupshot/GroupShot;->getFD(Ljava/io/FileDescriptor;)I

    move-result p1

    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getImageAndSaveJpeg: mNative=%x fd=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_1

    return v1

    :cond_1
    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/camera/groupshot/GroupShot;->getImageAndSaveJpeg(JLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getImageAndSaveJpeg(Ljava/lang/String;)I
    .locals 6

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p1, v4, v0

    const-string v0, "getImageAndSaveJpeg: mNative=%x filename=%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/android/camera/groupshot/GroupShot;->getImageAndSaveJpeg(JLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getImageData(I[B)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/groupshot/GroupShot;->getRawData(JI[B)I

    move-result p0

    return p0
.end method

.method public getJpegData(I[B)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/groupshot/GroupShot;->getJpegData(JI[B)I

    move-result p0

    return p0
.end method

.method public getJpegSize(I)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->getJpegSize(JI)I

    move-result p0

    return p0
.end method

.method public getPreviewImage(III[B)I
    .locals 7

    iget-wide v1, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/groupshot/GroupShot;->getPreviewImage(JIII[B)I

    move-result p0

    return p0
.end method

.method public getRecommendedImageIndex([II)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/groupshot/GroupShot;->getRecommendedImageIndex(J[II)I

    move-result p0

    return p0
.end method

.method public getRecommendedRect(II[I)I
    .locals 6

    iget-wide v1, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/groupshot/GroupShot;->getRecommendedRect(JII[I)I

    move-result p0

    return p0
.end method

.method public getScaledImageAndSaveJpeg(IILjava/lang/String;)I
    .locals 9

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v2, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p3, v3, v0

    const-string v0, "GroupShot getScaledImageAndSaveJpeg, mNative=%x filename=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    move-object v3, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/groupshot/GroupShot;->getScaledImageAndSaveJpeg(JIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getScaledOutputImage(II[B)I
    .locals 6

    iget-wide v1, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/groupshot/GroupShot;->getScaledOutputImage(JII[B)I

    move-result p0

    return p0
.end method

.method public getTargetImage(IIII[B)I
    .locals 8

    iget-wide v1, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/groupshot/GroupShot;->getTargetImage(JIIII[B)I

    move-result p0

    return p0
.end method

.method public getTargetNum()I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/groupshot/GroupShot;->getTargetNum(J)I

    move-result p0

    return p0
.end method

.method public getTargetRects([I)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->getTargetRects(J[I)I

    move-result p0

    return p0
.end method

.method public final native getVersion()Ljava/lang/String;
.end method

.method public getYuvImage(Landroid/media/Image;)I
    .locals 7

    if-eqz p1, :cond_1

    const/16 v0, 0x23

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    iget-wide v1, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const/4 v0, 0x0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    move-object v0, p0

    move-object v4, v5

    move v5, v6

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/groupshot/GroupShot;->getYuvImage(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    move-result p0

    sget-object p1, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getYuvImage: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getYuvImage: invalid image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public initialize(IIIIII)I
    .locals 15

    move-object v10, p0

    move/from16 v11, p1

    move/from16 v12, p3

    move/from16 v13, p4

    iget-boolean v0, v10, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    const/4 v14, 0x0

    if-nez v0, :cond_0

    iget v0, v10, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    if-ne v0, v12, :cond_0

    iget v0, v10, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    if-ne v0, v13, :cond_0

    iget v0, v10, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    if-ne v0, v11, :cond_0

    return v14

    :cond_0
    iget-boolean v0, v10, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    if-eqz v0, :cond_2

    iget v0, v10, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    if-nez v0, :cond_1

    iget v0, v10, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    if-nez v0, :cond_1

    iget v0, v10, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/groupshot/GroupShot;->clearImages()I

    invoke-virtual {p0}, Lcom/android/camera/groupshot/GroupShot;->finish()V

    :cond_2
    iget-wide v0, v10, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/groupshot/GroupShot;->createNativeObject()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, -0x1

    return v0

    :cond_3
    sget-object v0, Lcom/android/camera/groupshot/GroupShot;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, v10, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, v10, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, v10, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, v10, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "initialize imageNum=%d, width=%d, height=%d, mStart=%b, mWidth=%d, mHeight=%d, mMaxImageNum=%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v10, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/groupshot/GroupShot;->initializeNativeObject(JIIIIIII)I

    iput v11, v10, Lcom/android/camera/groupshot/GroupShot;->mMaxImageNum:I

    iput v12, v10, Lcom/android/camera/groupshot/GroupShot;->mWidth:I

    iput v13, v10, Lcom/android/camera/groupshot/GroupShot;->mHeight:I

    iput-boolean v14, v10, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    return v14
.end method

.method public isUsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/groupshot/GroupShot;->mStart:Z

    return p0
.end method

.method public saveInputImages(Ljava/lang/String;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->saveInputImages(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public selectImage(II)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/groupshot/GroupShot;->selectTarget(JII)I

    move-result p0

    return p0
.end method

.method public setBaseImage(I)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/groupshot/GroupShot;->setBaseImage(JI)I

    move-result p0

    return p0
.end method

.method public setBestFace()I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/groupshot/GroupShot;->setBestFace(J)I

    move-result p0

    return p0
.end method

.method public updateTargetRect(I[I)I
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/groupshot/GroupShot;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/groupshot/GroupShot;->updateTargetRect(JI[I)I

    move-result p0

    return p0
.end method
