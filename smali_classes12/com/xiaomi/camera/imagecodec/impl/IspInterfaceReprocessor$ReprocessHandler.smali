.class Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;
.super Landroid/os/Handler;
.source "IspInterfaceReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReprocessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p0, v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1600(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recv MSG_DESTROY_ENCODER"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1400(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$402(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/isp/IspInterface;)Lcom/xiaomi/camera/isp/IspInterface;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1500(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recv MSG_REPROCESS_IMAGE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1200(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$ReprocessHandler;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;->access$1300(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    :cond_3
    :goto_0
    return-void
.end method
