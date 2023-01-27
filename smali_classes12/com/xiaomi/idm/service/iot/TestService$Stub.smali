.class public Lcom/xiaomi/idm/service/iot/TestService$Stub;
.super Lcom/xiaomi/idm/service/iot/TestService;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/TestService;
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

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/TestService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    return-void
.end method


# virtual methods
.method public getAPlusB(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/TestService$Stub;->getAPlusBAsync(II)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

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

.method public getAPlusBAsync(II)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetAPlusB;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetAPlusB;-><init>(Lcom/xiaomi/idm/service/iot/TestService;II)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getSomeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/TestService$Stub;->getSomeStringAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;
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

.method public getSomeStringAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;-><init>(Lcom/xiaomi/idm/service/iot/TestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/TestService$Stub;->getTimestampAsync()Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

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

.method public getTimestampAsync()Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;

    invoke-direct {v1, p0}, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;-><init>(Lcom/xiaomi/idm/service/iot/TestService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public subscribeMyTestEvent(Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method

.method public triggerClick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/TestService$Stub;->triggerClickAsync()Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

.method public triggerClickAsync()Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;

    invoke-direct {v1, p0}, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;-><init>(Lcom/xiaomi/idm/service/iot/TestService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public unsubscribeMyTestEvent(Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/TestService$Events$MyTestEvent$Callback;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/idm/api/IDMClient;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I

    return-void
.end method
