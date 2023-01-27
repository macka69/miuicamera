.class Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlService.java"

# interfaces
.implements Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;
.implements Lcom/xiaomi/camera/rcs/streaming/RpcMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/service/RemoteControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteControlClient"
.end annotation


# instance fields
.field private volatile mIsGroupOwner:Z

.field private mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;


# direct methods
.method private constructor <init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlClient: create: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    iput-object p3, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mPkgName:Ljava/lang/String;

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->addCallbackListener(Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;)V

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->setRpcMessageHandler(Lcom/xiaomi/camera/rcs/streaming/RpcMessageHandler;)V

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteControlClient: create: X"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;-><init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->release()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->startStreaming(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->isStreaming()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->stopStreaming(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->customClientRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteControlClient: customCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private customClientRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteControlClient: customClientRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private isStreaming()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->isStreaming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private release()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteControlClient: release: E -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->removeCallbackListener(Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->setRpcMessageHandler(Lcom/xiaomi/camera/rcs/streaming/RpcMessageHandler;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RemoteControlClient: release: X"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private startStreaming(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlClient: start: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->isGroupOwner(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: is client group owner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    monitor-enter p1

    if-nez v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->start()V

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteControlClient: start: notify port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v2}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingServerState(I)V

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteControlClient: start: X"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private stopStreaming(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlClient: stop: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->isGroupOwner(Landroid/os/Bundle;)Z

    move-result p1

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: is client group owner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->stop()V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$302(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteControlClient: stop: X"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public handleMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "id"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "method"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "set_recording_state"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "params"

    const/4 v8, -0x1

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, v8}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    if-eq v2, v8, :cond_0

    invoke-static {v5, v2}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->setRecordingState(Landroid/os/Bundle;I)V

    :cond_0
    move v8, v2

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: set_recording_state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "set_layout_type"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1, v8}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    if-eq v2, v8, :cond_3

    invoke-static {v5, v2}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->setLayoutType(Landroid/os/Bundle;I)V

    :cond_3
    move v8, v2

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: set_layout_type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage: unknown method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "com.xiaomi.camera.rcs.videoCastStateChanged"

    invoke-direct {p0, v2, v5}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "result"

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$400(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Landroid/hardware/input/InputManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteControlClient: exception in injectKeyEvent"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method injectMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const/16 v0, 0x1002

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$400(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Landroid/hardware/input/InputManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteControlClient: exception in injectMotionEvent"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onStreamingServerStateChanged(ILandroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamingServerStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->streamingServerStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStreamingSessionStateChanged(ILandroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamingSessionStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->streamingSessionStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mPkgName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "RCC(ID=%d, CN=%s, GO=%s, BP=%s)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
