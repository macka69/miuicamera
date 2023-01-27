.class public Lcom/faceunity/pta_helper/gif/GifEncoder;
.super Ljava/lang/Object;
.source "GifEncoder.java"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FUP2AHelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->b:I

    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeEncodeFrame(JLandroid/graphics/Bitmap;I)Z
.end method

.method private native nativeInit(IILjava/lang/String;II)J
.end method

.method private native nativeSetDither(JZ)V
.end method

.method private native nativeSetThreadCount(JI)V
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    invoke-direct {p0, v0, v1}, Lcom/faceunity/pta_helper/gif/GifEncoder;->nativeClose(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    return-void
.end method

.method public encodeFrame(Landroid/graphics/Bitmap;I)Z
    .locals 4

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->c:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->d:I

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/faceunity/pta_helper/gif/GifEncoder;->nativeEncodeFrame(JLandroid/graphics/Bitmap;I)Z

    return v3

    :cond_1
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget p0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const/4 p0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 p0, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "The size specified at initialization differs from the size of the image.\n expected:(%d, %d) actual:(%d,%d)"

    invoke-static {p2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(IILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/faceunity/pta_helper/gif/EncodingType;->ENCODING_TYPE_NORMAL_LOW_MEMORY:Lcom/faceunity/pta_helper/gif/EncodingType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/faceunity/pta_helper/gif/GifEncoder;->init(IILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;)V

    return-void
.end method

.method public init(IILjava/lang/String;Lcom/faceunity/pta_helper/gif/EncodingType;)V
    .locals 10

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/gif/GifEncoder;->close()V

    :cond_0
    iput p1, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->c:I

    iput p2, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->d:I

    iget v8, p4, Lcom/faceunity/pta_helper/gif/EncodingType;->a:I

    iget v9, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->b:I

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/faceunity/pta_helper/gif/GifEncoder;->nativeInit(IILjava/lang/String;II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    cmp-long p0, v2, p1

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FileNotFoundException or Authentication failure"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDither(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/faceunity/pta_helper/gif/GifEncoder;->nativeSetDither(JZ)V

    return-void
.end method

.method public setThreadCount(I)V
    .locals 4

    iput p1, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->b:I

    iget-wide v0, p0, Lcom/faceunity/pta_helper/gif/GifEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/faceunity/pta_helper/gif/GifEncoder;->nativeSetThreadCount(JI)V

    return-void
.end method
