.class Lcom/xiaomi/camera/imagecodec/ImagePool$1;
.super Ljava/lang/Object;
.source "ImagePool.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/imagecodec/ImagePool;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/imagecodec/ImagePool;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->access$000(Lcom/xiaomi/camera/imagecodec/ImagePool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->access$200(Lcom/xiaomi/camera/imagecodec/ImagePool;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$1;->this$0:Lcom/xiaomi/camera/imagecodec/ImagePool;

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->access$000(Lcom/xiaomi/camera/imagecodec/ImagePool;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
