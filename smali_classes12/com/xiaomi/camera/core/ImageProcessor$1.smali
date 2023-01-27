.class Lcom/xiaomi/camera/core/ImageProcessor$1;
.super Landroid/os/Handler;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/ImageProcessor;->startWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$1;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/core/ImageProcessor;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$1;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->access$300(Lcom/xiaomi/camera/core/ImageProcessor;J)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$1;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->doFilter(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$1;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    iget-object p1, p1, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor$1;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    iget-object v2, v2, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/core/ImageProcessor;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "handleMessage: no task session"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor$1;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-static {v2}, Lcom/xiaomi/camera/core/ImageProcessor;->access$100(Lcom/xiaomi/camera/core/ImageProcessor;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/TaskData;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/xiaomi/camera/core/ImageProcessor;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processImage: timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$1;->this$0:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-static {p0, v2}, Lcom/xiaomi/camera/core/ImageProcessor;->access$200(Lcom/xiaomi/camera/core/ImageProcessor;Lcom/xiaomi/camera/core/TaskData;)V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
