.class public Lcom/android/camera2/PortraitDepthMap;
.super Ljava/lang/Object;
.source "PortraitDepthMap.java"


# static fields
.field private static final BLUR_LEVEL_START_ADDR:I = 0x10

.field private static final DAPTH_MAP_START_ADDR:I = 0x98

.field private static final DATA_LENGTH_4:I = 0x4

.field private static final DATA_LENGTH_START_ADDR:I = 0x94

.field private static final DEPTH_HEIGHT_START_ADDR:I = 0x18

.field private static final DEPTH_WIDTH_START_ADDR:I = 0x14

.field private static final HEADER_LENGTH_START_ADDR:I = 0x4

.field private static final HEADER_START_ADDR:I = 0x0

.field private static final POINT_X_START_ADDR:I = 0x8

.field private static final POINT_Y_START_ADDR:I = 0xc

.field private static final TAG:Ljava/lang/String; = "PortraitDepthMap"

.field public static final TAG_DEPTH_MAP_BLUR_LEVEL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_DEPTH_MAP_FOCUS_POINT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mDepthMapHeader:[B

.field private mDepthMapOriginalData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, -0x7770

    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera2/PortraitDepthMap;->TAG_DEPTH_MAP_FOCUS_POINT:I

    const/16 v1, -0x776f

    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera2/PortraitDepthMap;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMap;->getHeaderTag([B)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthMapHeader()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal depth format! 0x80 != "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null depth data!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBytes([BII)[B
    .locals 2

    if-lez p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRONG ARGUMENT: from ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getHeaderTag([B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method private static getInteger([B)I
    .locals 5

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes can not covert to a integer value!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDepthMapData([B)Z
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/camera2/PortraitDepthMap;->getHeaderTag([B)I

    move-result p0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "Illegal depthmap format"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method


# virtual methods
.method public getBlurLevel()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getDepthDataSize()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x18

    invoke-static {p0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getDepthMapData()[B
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthMapLength()I

    move-result p0

    const/16 v1, 0x98

    invoke-static {v0, v1, p0}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapHeader()[B
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getDepthMapLength()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v0, 0x94

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public getFocusPoint()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0xc

    invoke-static {p0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getVendor()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writePortraitExif(Lcom/android/camera2/PortraitDepthMapExif;)[B
    .locals 34

    const-string v1, "mainyuv"

    const-string v2, ","

    const-string v3, "depthmap"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getBlurLevel()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthDataSize()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPortraitLightingVersioin()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCameraPreferredMode()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontCamera()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isSupportZeroDegreeOrientationImage()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/config/DataItemFeature;->getDepthMapVersion()I

    move-result v9

    :goto_0
    const/4 v11, -0x1

    const/16 v12, 0xa

    const/4 v13, 0x5

    if-lez v9, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v0

    if-ne v0, v12, :cond_1

    const/16 v11, 0x46

    goto :goto_1

    :cond_1
    const/16 v11, 0x28

    :goto_1
    move v12, v11

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v0

    if-ne v0, v12, :cond_3

    const/16 v11, 0x1e

    goto :goto_1

    :cond_3
    :goto_2
    move v11, v13

    goto :goto_3

    :cond_4
    move v12, v11

    :goto_3
    const/4 v13, 0x1

    if-le v9, v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getVendor()I

    move-result v0

    move v14, v0

    goto :goto_4

    :cond_5
    move v14, v13

    :goto_4
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writePortraitExif: focusPoint: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: blurLevel: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: depthDataSize: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: shineThreshold: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: shineLevel: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: lightingPattern: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getLightingPattern()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: isCinematicAspectRatio: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: rotation: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: vendor: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: portraitLightingVersion: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writePortraitExif: cameraPreferredMode: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiDepthmapVersion(I)Z

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/exif/ExifInterface;->addDepthMapBlurLevel(I)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getLightingPattern()I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/android/gallery3d/exif/ExifInterface;->addPortraitLighting(I)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isBokehFrontCamera()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isFrontMirror()Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v0, v15}, Lcom/android/gallery3d/exif/ExifInterface;->addFrontMirror(I)Z

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v15

    invoke-virtual {v0, v15, v13}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v15, v0

    :try_start_3
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v13, v0

    :try_start_4
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    sget-object v13, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "writePortraitExif(): Failed to write depthmap associated exif metadata"

    invoke-static {v13, v15}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move-object v13, v0

    if-eqz v13, :cond_1c

    array-length v0, v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v15

    array-length v15, v15

    if-gt v0, v15, :cond_8

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportMtkIspHidl()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_17

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sdcard/DCIM/Camera/evZeroMainImage"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ".yuv"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v13

    const-string v13, "sdcard/DCIM/Camera/evZeroSubImage"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v7

    move/from16 v17, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sdcard/DCIM/Camera/evMinusMainImage"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v13

    move v11, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v13, 0x4

    const-wide/16 v21, 0x0

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    invoke-static {v10, v7}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v14

    invoke-static {v10, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v7

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v23

    const-wide/16 v19, 0x8

    sub-long v23, v23, v19

    move-object/from16 v26, v1

    move-object/from16 v25, v10

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v1

    invoke-static {v0, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v10

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v27

    sub-long v27, v27, v19

    sget-object v13, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    move-object/from16 v29, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v11

    const-string v11, "main width = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", main height = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", sub width ="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", sub height = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    move-object/from16 v29, v0

    move-object/from16 v26, v1

    move-object/from16 v25, v10

    move/from16 v30, v11

    move-wide/from16 v23, v21

    move-wide/from16 v27, v23

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v11

    const/4 v8, 0x4

    invoke-static {v0, v8}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v13

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v31

    const-wide/16 v19, 0x8

    sub-long v31, v31, v19

    goto :goto_9

    :cond_a
    move-wide/from16 v31, v21

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_9
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    move-object/from16 v19, v0

    :try_start_6
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    move-object/from16 v20, v0

    const-string v0, "UTF-8"

    move/from16 v33, v13

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    const/4 v13, 0x0

    :try_start_7
    invoke-interface {v8, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "version"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v13, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :try_start_8
    const-string v0, "focuspoint"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    const/4 v9, 0x0

    :try_start_9
    invoke-interface {v8, v9, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "blurlevel"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :try_start_a
    const-string v0, "depthsize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    const/4 v4, 0x0

    :try_start_b
    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "shinethreshold"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "shinelevel"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rawlength"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthlength"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "mimovie"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthOrientation"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "vendor"

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "portraitLightingVersion"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "cameraPreferredMode"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    add-long v2, v23, v27

    add-long v2, v2, v31

    cmp-long v0, v2, v21

    const-string v5, "height"

    const-string/jumbo v6, "width"

    const-string v9, "length"

    const-string v12, "offset"

    if-eqz v0, :cond_b

    move-object/from16 v13, v26

    :try_start_c
    invoke-interface {v8, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v4

    add-int/2addr v0, v4

    move v4, v10

    move v15, v11

    int-to-long v10, v0

    add-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    const/4 v10, 0x0

    :try_start_e
    invoke-interface {v8, v10, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "subyuv"

    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v7

    add-int/2addr v0, v7

    int-to-long v10, v0

    add-long v10, v10, v27

    add-long v10, v10, v31

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    const/4 v7, 0x0

    :try_start_10
    invoke-interface {v8, v7, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "subyuv"

    invoke-interface {v8, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_a

    :catch_2
    move-object v13, v7

    goto/16 :goto_10

    :catch_3
    move-object v13, v10

    goto/16 :goto_10

    :cond_b
    move v15, v11

    :goto_a
    cmp-long v0, v31, v21

    if-eqz v0, :cond_c

    :try_start_11
    const-string v0, "evminusyuv"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    const/4 v1, 0x0

    :try_start_12
    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long v0, v0, v31

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    const/4 v1, 0x0

    :try_start_14
    invoke-interface {v8, v1, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "evminusyuv"

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    goto :goto_b

    :catch_4
    move-object v13, v1

    goto/16 :goto_10

    :cond_c
    :goto_b
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    const/4 v1, 0x3

    const-string v4, "paddingy"

    const-string v7, "paddingx"

    if-eqz v0, :cond_f

    :try_start_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v10, 0x4

    if-lt v0, v10, :cond_f

    const-string/jumbo v0, "subimage"
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    const/4 v10, 0x0

    :try_start_17
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3

    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    :goto_c
    add-int/2addr v0, v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_d

    :cond_e
    const/4 v10, 0x0

    :goto_d
    add-int/2addr v0, v10

    int-to-long v10, v0

    add-long/2addr v10, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v10, v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8

    const/4 v10, 0x0

    :try_start_19
    invoke-interface {v8, v10, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v11, 0x0

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v11, 0x1

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v11, 0x2

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rotation"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "subimage"

    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3

    :cond_f
    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_11

    const-string v0, "lenswatermark"
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8

    const/4 v10, 0x0

    :try_start_1b
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3

    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_e

    :cond_10
    const/4 v10, 0x0

    :goto_e
    add-int/2addr v0, v10

    int-to-long v10, v0

    add-long/2addr v10, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v10, v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8

    const/4 v10, 0x0

    :try_start_1d
    invoke-interface {v8, v10, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v11, 0x0

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v11, 0x1

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v11, 0x2

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lenswatermark"

    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3

    :cond_11
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_12

    const-string/jumbo v0, "timewatermark"
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_8

    const/4 v10, 0x0

    :try_start_1f
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_3

    :try_start_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v10, v0

    add-long/2addr v10, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v10, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_8

    const/4 v13, 0x0

    :try_start_21
    invoke-interface {v8, v13, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "timewatermark"

    invoke-interface {v8, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    :cond_12
    const/4 v13, 0x0

    :goto_f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v20 .. v20}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_9

    goto :goto_11

    :catch_5
    move-object v13, v4

    goto :goto_10

    :catch_6
    move-object v13, v9

    goto :goto_10

    :catch_7
    move-object/from16 v19, v0

    :catch_8
    const/4 v13, 0x0

    :catch_9
    :goto_10
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writePortraitExif(): Failed to generate depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    :goto_11
    if-nez v0, :cond_13

    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writePortraitExif(): #2: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    :cond_13
    :try_start_22
    new-instance v1, Ljava/io/ByteArrayInputStream;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_a
    .catch Lcom/adobe/xmp/XMPException; {:try_start_22 .. :try_end_22} :catch_a

    move-object/from16 v2, v16

    :try_start_23
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_23 .. :try_end_23} :catch_b

    :try_start_24
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :try_start_25
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v4

    const-string v5, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v6, "XMPMeta"

    invoke-interface {v4, v5, v6, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v3, v4}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v4, 0x4

    if-lt v0, v4, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_16
    cmp-long v0, v23, v21

    const/16 v4, 0x8

    if-eqz v0, :cond_17

    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_17
    cmp-long v0, v27, v21

    if-eqz v0, :cond_18

    move-object/from16 v0, v29

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18
    cmp-long v0, v31, v21

    if-eqz v0, :cond_19

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_19
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    :try_start_26
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    :try_start_27
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_c
    .catch Lcom/adobe/xmp/XMPException; {:try_start_27 .. :try_end_27} :catch_c

    goto :goto_15

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_29
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    move-object v15, v13

    :goto_13
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    goto :goto_14

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_2b
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v3
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_c
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2b .. :try_end_2b} :catch_c

    :catch_a
    move-object/from16 v2, v16

    :catch_b
    move-object v15, v13

    :catch_c
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writePortraitExif(): Failed to insert depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    if-eqz v15, :cond_1b

    array-length v0, v15

    array-length v1, v2

    if-gt v0, v1, :cond_1a

    goto :goto_16

    :cond_1a
    return-object v15

    :cond_1b
    :goto_16
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writePortraitExif(): #3: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    :cond_1c
    :goto_17
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writePortraitExif(): #1: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0
.end method
