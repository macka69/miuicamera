.class public final Lcom/android/camera/storage/SimpleImageSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "SimpleImageSaveRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleImageSaveRequest"


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private data:[B

.field private exif:Lcom/android/gallery3d/exif/ExifInterface;

.field private finalImage:Z

.field private info:Lcom/xiaomi/camera/core/PictureInfo;

.field private isHeic:Z

.field private isHide:Z

.field private isMap:Z

.field private isParallelProcess:Z

.field private loc:Landroid/location/Location;

.field private mirror:Z

.field private needThumbnail:Z

.field public oldTitle:Ljava/lang/String;

.field private previewThumbnailHash:I

.field private saverCallback:Lcom/android/camera/storage/SaverCallback;

.field private size:I

.field public title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p2}, Lcom/android/camera/storage/AbstractSaveRequest;->setSaverCallback(Lcom/android/camera/storage/SaverCallback;)V

    invoke-virtual {p0}, Lcom/android/camera/storage/AbstractSaveRequest;->calculateMemoryUsed()I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->size:I

    invoke-virtual {p0}, Lcom/android/camera/storage/AbstractSaveRequest;->isHeicSavingRequest()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isHeic:Z

    return-void
.end method

.method constructor <init>([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    invoke-virtual/range {p0 .. p20}, Lcom/android/camera/storage/SimpleImageSaveRequest;->reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V

    return-void
.end method

.method private parsePixelsToJpeg()V
    .locals 7

    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->data:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    sget-object v1, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    const-string v3, "None"

    iget v4, p0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget v5, p0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    iget v6, p0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/exif/ExifInterface;->addParallelProcessComment(Ljava/lang/String;III)Z

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->removeParallelProcessComment()V

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SimpleImageSaveRequest"

    const-string/jumbo v3, "updateExif error"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v0, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->data:[B

    return-void
.end method

.method private trackScenarioAbort()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->size:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->finalImage:Z

    return p0
.end method

.method public onFinish()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->data:[B

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/SimpleImageSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method protected reFillSaveRequest([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;I)V
    .locals 4

    move-object v0, p0

    move-object v1, p8

    move-object v2, p1

    iput-object v2, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->data:[B

    move v2, p2

    iput-boolean v2, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->needThumbnail:Z

    move-wide v2, p5

    iput-wide v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->date:J

    move-object v2, p7

    iput-object v2, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->uri:Landroid/net/Uri;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->title:Ljava/lang/String;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->oldTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->loc:Landroid/location/Location;

    move v1, p9

    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    move v1, p10

    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    move-object v1, p11

    iput-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move/from16 v1, p12

    iput v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isHide:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isMap:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->finalImage:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->mirror:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isParallelProcess:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->algorithmName:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    move/from16 v1, p20

    iput v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->previewThumbnailHash:I

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/SimpleImageSaveRequest;->save()V

    invoke-virtual {p0}, Lcom/android/camera/storage/SimpleImageSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 33

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/SimpleImageSaveRequest;->parsePixelsToJpeg()V

    iget-object v5, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->data:[B

    iget-boolean v3, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isHeic:Z

    iget-object v4, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v6, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->title:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->loc:Landroid/location/Location;

    iget v8, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    iget v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    iget-object v11, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->oldTitle:Ljava/lang/String;

    iget-boolean v12, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->mirror:Z

    iget-boolean v13, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isParallelProcess:Z

    iget-object v14, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->algorithmName:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    invoke-static/range {v1 .. v15}, Lcom/android/camera/storage/Storage;->updateImageWithExtraExif(Landroid/content/Context;[BZLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;ZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->data:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->algorithmName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "mimoji"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v29, 0x1

    goto :goto_0

    :cond_1
    const/16 v29, 0x0

    :goto_0
    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->context:Landroid/content/Context;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->title:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-wide v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->date:J

    move-wide/from16 v18, v1

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v20, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->data:[B

    move-object/from16 v22, v1

    iget-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isHeic:Z

    move/from16 v23, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    move/from16 v24, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    move/from16 v25, v1

    const/16 v26, 0x0

    iget-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isHide:Z

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isMap:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isParallelProcess:Z

    move/from16 v30, v1

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->algorithmName:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    move-object/from16 v32, v1

    invoke-static/range {v16 .. v32}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->uri:Landroid/net/Uri;

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    iget-boolean v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->needThumbnail:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/SimpleImageSaveRequest;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->uri:Landroid/net/Uri;

    const-string v2, "SimpleImageSaveRequest"

    if-eqz v1, :cond_8

    if-eqz v15, :cond_6

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->width:I

    int-to-double v3, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->height:I

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    sget v1, Lcom/android/camera/Thumbnail;->THUMBNAIL_SIZE_DEFAULT:I

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const-string v3, "image save try to create thumbnail"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->isMap:Z

    if-eqz v3, :cond_4

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->uri:Landroid/net/Uri;

    iget-boolean v4, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->mirror:Z

    invoke-static {v1, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->data:[B

    iget v4, v0, Lcom/android/camera/storage/AbstractSaveRequest;->orientation:I

    iget-object v5, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->uri:Landroid/net/Uri;

    iget-boolean v6, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->mirror:Z

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v4, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v3, v4, v1}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    :goto_4
    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v3, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->title:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v1, v3, v4, v5}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToGalleryEnd(ZJ)V

    iget-object v0, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToViewEnd(ZJ)V

    :cond_7
    const-string v0, "image save finished"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v0, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->title:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v1, v3, v0, v2}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_5

    :cond_9
    const-string v1, "image save failed"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_a

    iget-object v0, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_5

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/SimpleImageSaveRequest;->trackScenarioAbort()V

    const-string v1, "set mWaitingForUri is false"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v0, v0, Lcom/android/camera/storage/SimpleImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v1, v0, v3}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    :goto_5
    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/storage/SimpleImageSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method
