.class Lcom/xiaomi/camera/core/ImageProcessor$2;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ImageProcessor;->configOutputConfigurations2(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$2;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    const-string v2, "[  EFFECT2]"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    invoke-static {}, Lcom/xiaomi/camera/core/ImageProcessor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageAvailable: effectImage2 received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor$2;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    new-instance p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4, v3}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor$2;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v2, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$2;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageDone(J)V

    return-void
.end method
