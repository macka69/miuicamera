.class Lcom/xiaomi/camera/core/PostProcessor$3;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;


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

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParallelDataAbandoned(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParallelDataAbandoned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;J)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onParallelDataAbandoned: mainImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onParallelDataAbandoned: subImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    iget-object v2, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onParallelDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 10
    .param p1    # Lcom/xiaomi/camera/core/CaptureData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[z] onParallelDataAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[z] onParallelDataAvailable: ------------------------"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[z] Result timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportAppendYUV2Jpeg()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v0

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isSatFusionShot()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v4, "evZeroSubImage"

    const-string v5, "evZeroMainImage"

    if-le v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSessionId()I

    move-result v0

    invoke-static {v6, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v6, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v6, "evMinusMainImage"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/camera/base/ImageUtil;->dumpYuvImageAppendWH(Landroid/media/Image;Ljava/lang/String;)Z

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getAlgoType()I

    move-result v0

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[z] onParallelDataAvailable: algoType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_7

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v7}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v7

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v7

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[z] wait image pool>>"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v8

    invoke-virtual {v8, v7, v5, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v7, "[z] wait image pool<<"

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v5, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-nez v5, :cond_6

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRaw2YuvDone()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget-object v7, v5, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ImageProcessor;->isBokekMode()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v5, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v5, v5, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_6
    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v5}, Lcom/xiaomi/camera/core/PostProcessor;->access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v7

    invoke-interface {v5, v7, v8}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessStart(J)V

    :cond_7
    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTIKRawSuperNightEngine2ND(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v5, v0, v4, p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1000(Lcom/xiaomi/camera/core/PostProcessor;ILcom/xiaomi/camera/core/ParallelTaskData;Lcom/xiaomi/camera/core/CaptureData;)V

    :cond_8
    if-eq v1, v0, :cond_e

    if-ne v6, v0, :cond_9

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PostProcessor;->isSRRequireReprocess()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x5

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setMultiFrameProcessListener(Lcom/xiaomi/camera/core/CaptureDataListener;)V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/xiaomi/camera/core/PostProcessor;->access$400(Lcom/xiaomi/camera/core/PostProcessor;J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isSaveGroupshotPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/core/CaptureData;->setSaveInputImage(Z)V

    :cond_a
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->getInstance()Lcom/xiaomi/camera/core/MultiFrameProcessor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->processData(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V

    goto :goto_3

    :cond_b
    const/16 v1, 0xb

    if-ne v1, v0, :cond_c

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setOriginalProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$1200(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/CaptureData;)V

    goto :goto_3

    :cond_c
    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->setOriginalProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)V

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onCaptureDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    goto :goto_3

    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setMultiFrameProcessListener(Lcom/xiaomi/camera/core/CaptureDataListener;)V

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isMoonMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setMoonMode(Z)V

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->isHdrSR()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setHdrSR(Z)V

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isFrontCamera()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setCapturedByFrontCamera(Z)V

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/CaptureData;->setAlgoSize(Landroid/util/Size;)V

    :cond_f
    invoke-static {}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->getInstance()Lcom/xiaomi/camera/core/MultiFrameProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ImageProcessor;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/camera/core/MultiFrameProcessor;->processData(Lcom/xiaomi/camera/core/CaptureData;Lcom/xiaomi/engine/TaskSession;)V

    :goto_3
    if-eqz v4, :cond_10

    iput-boolean v3, v4, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    :cond_10
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1300(Lcom/xiaomi/camera/core/PostProcessor;)V

    return-void
.end method

.method public onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[z] onPartialDataAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$3;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method
