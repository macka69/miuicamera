.class public final Lcom/android/camera/storage/PreviewSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "PreviewSaveRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewSaveRequest"


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private data:[B

.field private finalImage:Z

.field private height:I

.field private info:Lcom/xiaomi/camera/core/PictureInfo;

.field private isHeic:Z

.field private isParallelProcess:Z

.field private loc:Landroid/location/Location;

.field private mSavePath:Ljava/lang/String;

.field private needThumbnail:Z

.field private noGaussian:Z

.field private orientation:I

.field private saverCallback:Lcom/android/camera/storage/SaverCallback;

.field private size:I

.field private width:I


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/SaverCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/storage/PreviewSaveRequest;-><init>(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/SaverCallback;Z)V

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/SaverCallback;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p2}, Lcom/android/camera/storage/AbstractSaveRequest;->setSaverCallback(Lcom/android/camera/storage/SaverCallback;)V

    invoke-virtual {p0}, Lcom/android/camera/storage/AbstractSaveRequest;->calculateMemoryUsed()I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->size:I

    invoke-virtual {p0}, Lcom/android/camera/storage/AbstractSaveRequest;->isHeicSavingRequest()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->isHeic:Z

    iput-boolean p3, p0, Lcom/android/camera/storage/PreviewSaveRequest;->noGaussian:Z

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->size:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->finalImage:Z

    return p0
.end method

.method public onFinish()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->data:[B

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method protected reFillSaveRequest([BZLjava/lang/String;JLandroid/location/Location;IIIZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->data:[B

    iput-boolean p2, p0, Lcom/android/camera/storage/PreviewSaveRequest;->needThumbnail:Z

    iput-wide p4, p0, Lcom/android/camera/storage/AbstractSaveRequest;->date:J

    iput-object p3, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    if-nez p6, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/location/Location;

    invoke-direct {p1, p6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_0
    iput-object p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->loc:Landroid/location/Location;

    iput p7, p0, Lcom/android/camera/storage/PreviewSaveRequest;->width:I

    iput p8, p0, Lcom/android/camera/storage/PreviewSaveRequest;->height:I

    iput p9, p0, Lcom/android/camera/storage/PreviewSaveRequest;->orientation:I

    iput-boolean p10, p0, Lcom/android/camera/storage/PreviewSaveRequest;->finalImage:Z

    iput-boolean p11, p0, Lcom/android/camera/storage/PreviewSaveRequest;->isParallelProcess:Z

    iput-object p12, p0, Lcom/android/camera/storage/PreviewSaveRequest;->algorithmName:Ljava/lang/String;

    iput-object p13, p0, Lcom/android/camera/storage/PreviewSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->save()V

    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    iget-object v1, v0, Lcom/android/camera/storage/PreviewSaveRequest;->data:[B

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "PreviewSaveRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save preview: task is exist! isValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/camera/storage/PreviewSaveRequest;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil$ParallelProvider;->deleteInProvider(Landroid/content/Context;J)V

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->date:J

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/db/item/DbItemBase;->generateItem(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/db/element/SaveTask;

    iget-object v3, v0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/db/element/SaveTask;->setPath(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/camera/storage/PreviewSaveRequest;->noGaussian:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/camera/db/element/SaveTask;->setNoGaussian(I)V

    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/camera/db/item/DbItemBase;->endItemAndInsert(Ljava/lang/Object;J)J

    const-string v2, "PreviewSaveRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert preview picture:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/storage/PreviewSaveRequest;->algorithmName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/camera/storage/PreviewSaveRequest;->algorithmName:Ljava/lang/String;

    const-string v8, "mimoji"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v21, 0x1

    goto :goto_1

    :cond_4
    const/16 v21, 0x0

    :goto_1
    iget-object v8, v0, Lcom/android/camera/storage/PreviewSaveRequest;->context:Landroid/content/Context;

    iget-wide v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->date:J

    iget-object v12, v0, Lcom/android/camera/storage/PreviewSaveRequest;->loc:Landroid/location/Location;

    iget v13, v0, Lcom/android/camera/storage/PreviewSaveRequest;->orientation:I

    iget-object v14, v0, Lcom/android/camera/storage/PreviewSaveRequest;->data:[B

    iget-boolean v15, v0, Lcom/android/camera/storage/PreviewSaveRequest;->isHeic:Z

    iget v3, v0, Lcom/android/camera/storage/PreviewSaveRequest;->width:I

    iget v9, v0, Lcom/android/camera/storage/PreviewSaveRequest;->height:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-boolean v6, v0, Lcom/android/camera/storage/PreviewSaveRequest;->isParallelProcess:Z

    iget-object v7, v0, Lcom/android/camera/storage/PreviewSaveRequest;->algorithmName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/storage/PreviewSaveRequest;->info:Lcom/xiaomi/camera/core/PictureInfo;

    iget-boolean v4, v0, Lcom/android/camera/storage/PreviewSaveRequest;->noGaussian:Z

    move/from16 v17, v9

    move-object v9, v2

    move/from16 v16, v3

    move/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v5

    move/from16 v25, v4

    invoke-static/range {v8 .. v25}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    iget-boolean v4, v0, Lcom/android/camera/storage/PreviewSaveRequest;->needThumbnail:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/camera/storage/PreviewSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/PreviewSaveRequest;->isFinal()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v3, :cond_9

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/camera/storage/PreviewSaveRequest;->width:I

    int-to-double v4, v4

    iget v6, v0, Lcom/android/camera/storage/PreviewSaveRequest;->height:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sget v6, Lcom/android/camera/Thumbnail;->THUMBNAIL_SIZE_DEFAULT:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    const/4 v5, 0x3

    const-string v6, "PreviewSaveRequest"

    const-string v7, "image save try to create thumbnail"

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/camera/storage/PreviewSaveRequest;->data:[B

    iget v6, v0, Lcom/android/camera/storage/PreviewSaveRequest;->orientation:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, v0, Lcom/android/camera/storage/PreviewSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_3

    :cond_6
    iget-object v4, v0, Lcom/android/camera/storage/PreviewSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v4}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lcom/android/camera/storage/PreviewSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v5, -0x1

    invoke-interface {v4, v5, v3}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    :goto_3
    iget-object v4, v0, Lcom/android/camera/storage/PreviewSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v5, 0x2

    invoke-interface {v4, v3, v2, v5}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToGalleryEnd(ZJ)V

    :cond_8
    const-string v0, "PreviewSaveRequest"

    const-string v2, "image save finished"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const-string v2, "PreviewSaveRequest"

    const-string v3, "image save failed"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_a

    iget-object v0, v0, Lcom/android/camera/storage/PreviewSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_a
    :goto_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_b
    :goto_5
    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/storage/PreviewSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method
