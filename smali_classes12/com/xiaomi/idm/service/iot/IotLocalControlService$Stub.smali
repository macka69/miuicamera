.class public Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;
.super Lcom/xiaomi/idm/service/iot/IotLocalControlService;
.source "IotLocalControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/IotLocalControlService;
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

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    return-void
.end method


# virtual methods
.method public exeScenes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->exeScenesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public exeScenesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$ExeScenes;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$ExeScenes;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceInformations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->getDeviceInformationsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE_IN_ACTION:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p0
.end method

.method public getDeviceInformationsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDeviceInformations;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDeviceInformations;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->getDevicePropertiesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public getDevicePropertiesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDeviceProperties;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDeviceProperties;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getDevices(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->getDevicesAsync(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public getDevicesAsync(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getHomeFastCommands(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->getHomeFastCommandsAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public getHomeFastCommandsAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetHomeFastCommands;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetHomeFastCommands;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getHomes(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->getHomesAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public getHomesAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetHomes;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetHomes;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getSceneAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->getSceneAliasAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public getSceneAliasAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetSceneAlias;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetSceneAlias;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public getScenes(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->getScenesAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public getScenesAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetScenes;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetScenes;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public invokeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->invokeActionAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public invokeActionAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$InvokeAction;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$InvokeAction;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->setDevicePropertiesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public setDevicePropertiesAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/task/CallFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v7, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$SetDeviceProperties;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$SetDeviceProperties;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public setToken(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->setTokenAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public setTokenAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$SetToken;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$SetToken;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public stop(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->stopAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
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

.method public stopAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Stub;->mIDMClient:Lcom/xiaomi/idm/api/IDMClient;

    new-instance v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$Stop;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$Stop;-><init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClient;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method
