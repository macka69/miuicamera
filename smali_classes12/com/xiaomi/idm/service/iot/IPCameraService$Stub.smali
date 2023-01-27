.class public Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;
.super Lcom/xiaomi/idm/service/iot/IPCameraService;
.source "IPCameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/IPCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation


# instance fields
.field private mIDMClient:Lcom/xiaomi/idm/api/IDMClient;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/IPCameraService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    return-void
.end method


# virtual methods
.method public getIpcSkeletonInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->getIpcSkeletonInfoAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/idm/api/RmiException;->createException(Ljava/util/concurrent/ExecutionException;)Lcom/xiaomi/idm/api/RmiException;

    move-result-object p0

    throw p0

    :catch_1
    new-instance p0, Lcom/xiaomi/idm/api/RequestException;

    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p0
.end method

.method public getIpcSkeletonInfoAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;-><init>(Lcom/xiaomi/idm/service/iot/IPCameraService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public subscribeSkeletonEvent(Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method

.method public unsubscribeSkeletonEvent(Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/IPCameraService$Events$SkeletonEvent$Callback;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method
