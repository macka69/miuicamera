.class public Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;
.super Lcom/xiaomi/idm/service/handoff/HandoffService;
.source "HandoffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/HandoffService;
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

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/handoff/HandoffService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    iput-object p1, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    return-void
.end method


# virtual methods
.method public requestHandoffData()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->requestHandoffDataAsync()Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;
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

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p0, v0}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p0
.end method

.method public requestHandoffDataAsync()Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/handoff/HandoffService$Actions$RequestHandoffData;

    invoke-direct {v1, p0}, Lcom/xiaomi/idm/service/handoff/HandoffService$Actions$RequestHandoffData;-><init>(Lcom/xiaomi/idm/service/handoff/HandoffService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public subscribeHandoffEvent(Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method

.method public unsubscribeHandoffEvent(Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method
