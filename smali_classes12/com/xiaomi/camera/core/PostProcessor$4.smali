.class Lcom/xiaomi/camera/core/PostProcessor$4;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/core/CaptureDataListener;


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

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 16
    .param p1    # Lcom/xiaomi/camera/core/CaptureData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v7, v3, :cond_1

    if-ne v5, v3, :cond_0

    iget-object v7, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-ne v4, v3, :cond_8

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object v7

    if-eqz v7, :cond_1b

    iget-object v8, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v8, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v8

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v9

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[1] onCaptureDataAvailable: timestamp: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " | "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v11, v9, v1

    if-eqz v11, :cond_2

    invoke-virtual {v8, v9, v10}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    iget-object v11, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v11, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;J)V

    iget-object v11, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v11, v9, v10, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;JLcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_2
    if-ne v4, v3, :cond_4

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isSaveGroupshotPrimitive()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_4

    invoke-virtual {v8, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->cloneTaskData(I)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v12}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-nez v14, :cond_3

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    :cond_3
    invoke-virtual {v11, v12, v13}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    iget-object v14, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v14, v12, v13, v11}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;JLcom/xiaomi/camera/core/ParallelTaskData;)V

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[1] onCaptureDataAvailable: add "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ne v5, v3, :cond_7

    iget-object v4, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getHDRSRResult()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    const/4 v4, 0x4

    const/4 v7, 0x1

    if-ne v4, v3, :cond_d

    sget-boolean v3, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onCaptureDataAvailable: start process multi-shot image..."

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v3

    iget-object v5, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v5, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->shouldReprocessBurstShotPicture()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v0, Lcom/xiaomi/camera/core/TaskData;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3, v7, v1, v2}, Lcom/xiaomi/camera/core/TaskData;-><init>(Ljava/util/List;ZJ)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    sget-boolean v2, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_a
    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I

    goto/16 :goto_5

    :cond_b
    iget-object v1, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object v1

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(J)V

    iget-object v1, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object v1

    invoke-interface {v1, v3, v6, v6}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;IZ)V

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    goto/16 :goto_5

    :cond_c
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[1] onCaptureDataAvailable: no captureResult "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    goto/16 :goto_5

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    goto/16 :goto_6

    :cond_e
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/config/DataItemFeature;->supportAppendYUV2Jpeg()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->isSatFusionShot()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v8

    if-ne v8, v5, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1400(Lcom/xiaomi/camera/core/CaptureData;)V

    :cond_f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isFirstResult()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v8}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v8

    iget-object v5, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v5, v8, v9}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v8, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    move-object/from16 v10, p1

    invoke-static {v8, v10, v3}, Lcom/xiaomi/camera/core/PostProcessor;->access$1500(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;I)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V

    goto :goto_3

    :cond_10
    move-object/from16 v10, p1

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[1] onCaptureDataAvailable: no task data with timestamp "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v5, v6, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    goto :goto_3

    :cond_11
    move-object/from16 v10, p1

    goto :goto_2

    :cond_12
    move-object/from16 v10, p1

    :goto_3
    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_14
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/core/PostProcessor$4;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    goto :goto_4

    :cond_15
    return-void

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v5

    iget-object v0, v0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    if-eq v5, v0, :cond_17

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v6, "[1] onCaptureDataAvailable: image processor switched"

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    new-instance v0, Lcom/xiaomi/camera/core/TaskData;

    invoke-direct {v0, v4, v7, v1, v2}, Lcom/xiaomi/camera/core/TaskData;-><init>(Ljava/util/List;ZJ)V

    invoke-static {v3}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resend to algoengine"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7}, Lcom/xiaomi/camera/core/TaskData;->setProcessSessionType(I)V

    :cond_18
    invoke-virtual {v5, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I

    :goto_5
    return-void

    :cond_19
    :goto_6
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[1] onCaptureDataAvailable: There are no result to process!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There are no result to process!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No multi-frame process result!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOriginalImageClosed(Landroid/media/Image;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1600(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageMemoryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOriginalImageClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1600(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageMemoryManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageMemoryManager;->releaseAnImage(Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method public onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 2
    .param p1    # Lcom/xiaomi/camera/core/CaptureData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getNextDispatchTaskData()Lcom/xiaomi/camera/core/TaskData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onPartialDataAvailable: null task data"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$4;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object p0

    if-eq p1, p0, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[1] onPartialDataAvailable: image processor switched"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I

    return-void
.end method
