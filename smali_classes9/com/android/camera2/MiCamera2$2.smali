.class Lcom/android/camera2/MiCamera2$2;
.super Ljava/lang/Object;
.source "MiCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2;->preparePhotoImageReader(Lcom/android/camera/CameraSize;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera2/MiCamera2;


# direct methods
.method constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7

    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImageAvailable: main"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onImageAvailable: null image"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$600(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$700(Lcom/android/camera2/MiCamera2;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2;->access$700(Lcom/android/camera2/MiCamera2;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    instance-of v2, v1, Lcom/android/camera2/MiCamera2ShotStill;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/camera2/MiCamera2ShotStill;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2ShotStill;->getTimeStamp()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v1, p1}, Lcom/android/camera2/MiCamera2;->access$800(Lcom/android/camera2/MiCamera2;Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2;->access$700(Lcom/android/camera2/MiCamera2;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/android/camera2/MiCamera2ShotBurst;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "repeating request is ongoing"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2;->access$700(Lcom/android/camera2/MiCamera2;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageAvailable: mMiCamera2ShotQueue.poll, size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2;->access$700(Lcom/android/camera2/MiCamera2;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/camera2/MiCamera2;->access$900(Lcom/android/camera2/MiCamera2;Z)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/camera2/MiCamera2$2;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2;->access$1000(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    const/4 p0, 0x0

    invoke-virtual {v1, p1, p0}, Lcom/android/camera2/MiCamera2Shot;->onImageReceived(Landroid/media/Image;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onImageAvailable: NO main image processor!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
