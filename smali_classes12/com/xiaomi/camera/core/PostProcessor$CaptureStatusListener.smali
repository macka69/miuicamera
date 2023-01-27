.class public Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[0] onCaptureCompleted: timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " frameNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getFrameNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    return-void
.end method

.method public onCaptureFailed(JI)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[0] onCaptureFailed: reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " timestamp = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;J)V

    return-void
.end method

.method public onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 11
    .param p1    # Lcom/xiaomi/camera/core/ParallelTaskData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$500(Lcom/xiaomi/camera/core/PostProcessor;I)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isSatFusionShot()Z

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "[0] onCaptureStarted: timestamp = %d, savePath = %s, fusion = %b"

    invoke-static {v3, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0, v6, v7, p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$600(Lcom/xiaomi/camera/core/PostProcessor;JLcom/xiaomi/camera/core/ParallelTaskData;)V

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mAddToProcessorCallback:Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;->OnParallelTaskDataAddToProcessor()V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iput-boolean v5, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsFrontProcessing:Z

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/camera/core/DualCameraProcessor;

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getBurstNum()I

    move-result v5

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned()Z

    move-result v9

    new-instance v0, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureId()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v1}, Lcom/xiaomi/camera/core/PostProcessor;->access$700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/xiaomi/camera/core/CaptureData;-><init>(IIIJLjava/lang/String;ZLcom/xiaomi/camera/core/ImageProcessor;)V

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0}, Lcom/xiaomi/camera/core/PostProcessor;->access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/CaptureData;->setDataListener(Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isRequireTuningData()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/CaptureData;->setRequireTuningData(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isSatFusionShot()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/CaptureData;->setIsSatFusionShot(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->isHdrSR()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/CaptureData;->setHdrSR(Z)V

    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->startTask(Lcom/xiaomi/camera/core/CaptureData;)V

    return-void
.end method
