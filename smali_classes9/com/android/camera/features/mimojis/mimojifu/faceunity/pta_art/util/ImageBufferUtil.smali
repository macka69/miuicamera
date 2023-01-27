.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;
.super Ljava/lang/Object;
.source "ImageBufferUtil.java"


# static fields
.field private static final COLOR_FormatI420:I = 0x1

.field private static final COLOR_FormatNV21:I = 0x2

.field private static data:[B

.field private static imageHeight:I

.field private static imageWidth:I

.field private static rowData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataFromImage(Landroid/media/Image;I)[B
    .locals 18

    move/from16 v0, p1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, "image null"

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const-string v0, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->isImageFormatSupported(Landroid/media/Image;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert Image to byte array, format "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    sget v10, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageWidth:I

    if-ne v10, v7, :cond_3

    sget v10, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageHeight:I

    if-eq v10, v8, :cond_4

    :cond_3
    mul-int v10, v7, v8

    invoke-static {v6}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    mul-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x8

    new-array v6, v10, [B

    sput-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    aget-object v6, v9, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    new-array v6, v6, [B

    sput-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->rowData:[B

    sput v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageWidth:I

    sput v8, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageHeight:I

    :cond_4
    move v11, v3

    move v6, v4

    move v10, v6

    :goto_0
    array-length v12, v9

    if-ge v6, v12, :cond_10

    if-eqz v6, :cond_9

    if-eq v6, v3, :cond_7

    if-eq v6, v2, :cond_5

    goto :goto_3

    :cond_5
    if-ne v0, v3, :cond_6

    mul-int v10, v7, v8

    int-to-double v10, v10

    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v10, v12

    double-to-int v10, v10

    goto :goto_1

    :cond_6
    if-ne v0, v2, :cond_a

    mul-int v10, v7, v8

    goto :goto_2

    :cond_7
    if-ne v0, v3, :cond_8

    mul-int v10, v7, v8

    :goto_1
    move v11, v3

    goto :goto_3

    :cond_8
    if-ne v0, v2, :cond_a

    mul-int v10, v7, v8

    add-int/2addr v10, v3

    :goto_2
    move v11, v2

    goto :goto_3

    :cond_9
    move v11, v3

    move v10, v4

    :cond_a
    :goto_3
    aget-object v12, v9, v6

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    aget-object v13, v9, v6

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    aget-object v14, v9, v6

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_b

    move v15, v4

    goto :goto_4

    :cond_b
    move v15, v3

    :goto_4
    shr-int v2, v7, v15

    shr-int v1, v8, v15

    :try_start_1
    iget v4, v5, Landroid/graphics/Rect;->top:I

    shr-int/2addr v4, v15

    mul-int/2addr v4, v13

    iget v3, v5, Landroid/graphics/Rect;->left:I

    shr-int/2addr v3, v15

    mul-int/2addr v3, v14

    add-int/2addr v4, v3

    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_f

    const/4 v4, 0x1

    if-ne v14, v4, :cond_c

    if-ne v11, v4, :cond_c

    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    invoke-virtual {v12, v4, v10, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v2

    move v4, v2

    goto :goto_7

    :cond_c
    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v14

    const/4 v15, 0x1

    add-int/2addr v4, v15

    sget-object v15, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->rowData:[B

    const/4 v0, 0x0

    invoke-virtual {v12, v15, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_d

    sget-object v15, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    sget-object v16, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->rowData:[B

    mul-int v17, v0, v14

    aget-byte v16, v16, v17

    aput-byte v16, v15, v10

    add-int/2addr v10, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    add-int/lit8 v0, v1, -0x1

    if-ge v3, v0, :cond_e

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v13

    sub-int/2addr v0, v4

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto :goto_5

    :cond_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_0
    const/4 v0, 0x0

    goto :goto_8

    :catch_1
    move-object v0, v1

    :goto_8
    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageWidth:I

    sput v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->imageHeight:I

    :cond_10
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->data:[B

    return-object v0
.end method

.method public static getNV21(Landroid/media/Image;)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/ImageBufferUtil;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static isImageFormatSupported(Landroid/media/Image;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
