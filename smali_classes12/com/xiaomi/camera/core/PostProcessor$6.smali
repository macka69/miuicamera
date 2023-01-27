.class Lcom/xiaomi/camera/core/PostProcessor$6;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/PostProcessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processAlgorithmMeta(Lcom/xiaomi/engine/ResultData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/engine/ResultData;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/core/PostProcessor$6;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAlgorithmMeta: no parallelTaskData with timestamp "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAlgorithmMeta: null ParallelTaskDataParameter with timestamp "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    invoke-static {p1}, Lcom/xiaomi/camera/core/MiviMetadataParser;->parse(Lcom/xiaomi/engine/ResultData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAlgorithmMeta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PictureInfo;->setExtraInfo(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private processCropRegionMeta(Lcom/xiaomi/engine/ResultData;)V
    .locals 14

    invoke-virtual {p1}, Lcom/xiaomi/engine/ResultData;->getCropRegion()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/engine/ResultData;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor$6;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eqz v0, :cond_1

    array-length v8, v0

    if-ne v8, v7, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gtz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v7, [Ljava/lang/Object;

    aget v11, v0, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    aget v11, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    aget v11, v0, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    aget v11, v0, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    const-string v11, "crop region is [%d,%d,%d,%d]"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "error get crop region"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v7}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$2302(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;

    :cond_2
    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    aget v11, v0, v6

    aget v12, v0, v5

    aget v13, v0, v4

    aget v0, v0, v3

    invoke-direct {v10, v11, v12, v13, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$2202(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "both reprocessData and cropRegion are ready"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v9

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v10

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getActiveRegion()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getZoomRatio()F

    move-result p1

    invoke-static {v8, v9, v10, v11, p1}, Lcom/android/camera2/SuperNightReprocessHandler;->convert(Landroid/graphics/Rect;IILandroid/graphics/Rect;F)Z

    new-array p1, v7, [I

    iget v7, v8, Landroid/graphics/Rect;->left:I

    aput v7, p1, v6

    iget v6, v8, Landroid/graphics/Rect;->top:I

    aput v6, p1, v5

    iget v5, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    aput v5, p1, v4

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    aput v4, p1, v3

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setCropRegion([I)V

    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not reprocess timestamp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "reprocessData not ready, should wait"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no parallelTaskData with timestamp "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    return-object p0
.end method

.method public isAnyFrontProcessing(Lcom/xiaomi/camera/core/ImageProcessor;)Z
    .locals 0

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->isAnyFrontProcessingByProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)Z

    move-result p0

    return p0
.end method

.method public onImageProcessFailed(Landroid/media/Image;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageProcessFailed: image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onImageProcessStart(J)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageProcessStart: get parallelTaskData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor$6;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRaw2YuvDone()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public onImageProcessed(Landroid/media/Image;IZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[2] onImageProcessed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x3

    invoke-static {v12, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-ne v8, v13, :cond_0

    invoke-static {v8, v14}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackJpegReprocess(II)V

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/camera/base/ImageUtil;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object v0

    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    invoke-interface {v1, v0, v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onJpegAvailable([BLjava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1, v9, v10}, Lcom/xiaomi/camera/core/PostProcessor$6;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[2] onImageProcessed: captureResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getResults()Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v3

    const v4, 0x48454946

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputFormat()I

    move-result v3

    const/4 v7, 0x1

    if-ne v4, v3, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v14

    :goto_0
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v3

    invoke-static {v3}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez p3, :cond_2

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-static {v3, v0, v7}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v0

    :cond_2
    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$1900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v4}, Lcom/xiaomi/camera/core/PostProcessor;->access$1800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v15, v4}, Lcom/android/camera/storage/ImageSaver;->addHeif(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;)V

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2000(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v3

    invoke-static {v3}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2, v9, v10}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setTimeStamp(J)V

    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    sget v6, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_RAW_SUPERNIGHT:I

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v5, v11

    move v0, v7

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/camera/core/PostProcessor;->access$2100(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x4

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3, v5}, Lcom/xiaomi/camera/core/PostProcessor;->access$2202(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;

    :cond_5
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3, v5}, Lcom/xiaomi/camera/core/PostProcessor;->access$2302(Lcom/xiaomi/camera/core/PostProcessor;Ljava/util/Map;)Ljava/util/Map;

    :cond_6
    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v5, "both reprocessData and cropRegion are ready"

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v5

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v6

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getActiveRegion()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15}, Lcom/xiaomi/camera/core/ParallelTaskData;->getZoomRatio()F

    move-result v8

    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/camera2/SuperNightReprocessHandler;->convert(Landroid/graphics/Rect;IILandroid/graphics/Rect;F)Z

    new-array v4, v4, [I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    aput v5, v4, v14

    iget v6, v3, Landroid/graphics/Rect;->top:I

    aput v6, v4, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v5

    aput v0, v4, v13

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    aput v0, v4, v12

    invoke-virtual {v2, v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setCropRegion([I)V

    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$2300(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2200(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_7
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crop region not ready, should wait"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move v2, v7

    const/16 v4, 0xd

    if-eq v3, v4, :cond_a

    invoke-static {v3}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    iget-object v2, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    sget v6, Lcom/xiaomi/camera/imagecodec/ReprocessData;->REPROCESS_FUNCTION_NONE:I

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v5, v11

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/camera/core/PostProcessor;->access$2100(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;Ljava/lang/String;IZ)Lcom/xiaomi/camera/imagecodec/ReprocessData;

    move-result-object v0

    invoke-static {v8, v14}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackJpegReprocess(II)V

    :try_start_2
    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v11}, Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "raw algo 2nd, try to encode jpeg"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_b

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object v0

    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1, v9, v10, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2400(Lcom/xiaomi/camera/core/PostProcessor;JLandroid/media/Image;)V

    goto :goto_4

    :cond_b
    iget-object v1, v1, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1, v9, v10, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2400(Lcom/xiaomi/camera/core/PostProcessor;JLandroid/media/Image;)V

    :goto_4
    return-void

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no parallelTaskData with timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onMetadataReceived(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected meta type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/xiaomi/engine/ResultData;

    invoke-direct {p0, p2}, Lcom/xiaomi/camera/core/PostProcessor$6;->processAlgorithmMeta(Lcom/xiaomi/engine/ResultData;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/xiaomi/engine/ResultData;

    invoke-direct {p0, p2}, Lcom/xiaomi/camera/core/PostProcessor$6;->processCropRegionMeta(Lcom/xiaomi/engine/ResultData;)V

    :goto_0
    return-void
.end method

.method public onOriginalImageClosed(Landroid/media/Image;)V
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$6;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOriginalImageClosed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
