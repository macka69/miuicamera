.class Lcom/xiaomi/camera/core/PostProcessor$8;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/android/camera/storage/HeifSaveRequest$SaveHeifCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/PostProcessor;->init()V
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

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFinish(Landroid/media/Image;Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/camera/core/CaptureDataListener;->onOriginalImageClosed(Landroid/media/Image;)V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTuningImage()Landroid/media/Image;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/camera/core/PostProcessor;->access$2600(Lcom/xiaomi/camera/core/PostProcessor;Landroid/media/Image;)V

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$2700(Lcom/xiaomi/camera/core/PostProcessor;Lcom/xiaomi/camera/core/ParallelTaskData;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->access$2500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide p1

    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor$8;->this$0:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->access$900(Lcom/xiaomi/camera/core/PostProcessor;J)V

    invoke-static {}, Lcom/xiaomi/camera/core/PostProcessor;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HEIF] onSaveFinish: parallelTaskHashMap remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
