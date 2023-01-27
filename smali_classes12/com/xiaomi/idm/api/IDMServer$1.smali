.class Lcom/xiaomi/idm/api/IDMServer$1;
.super Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback$Stub;
.source "IDMServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/idm/api/IDMServer;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/IDMServer;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingResult([B)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMServer"

    const-string v3, "onAdvertisingResult"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onAdvertisingResult called but param is null. Ignore request."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v1, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onAdvertisingResult onIDMAdvertisingResult is null"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnIDMAdvertisingResult;->getIdmAdvertisingResult()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;

    move-result-object p1

    if-nez p1, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onAdvertisingResult called but parse failed. Ignore request."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMServer;->access$000(Lcom/xiaomi/idm/api/IDMServer;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/IDMService;

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onAdvertisingResult service not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMAdvertisingResult;->getStatus()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/api/IDMService;->onAdvertisingResult(I)V

    return-void
.end method

.method public onConnectServiceStatus([B)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMServer"

    const-string v3, "onServiceConnectStatus"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onServiceConnectStatus called but param is null. Ignore request."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnConnectServiceRequest;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnConnectServiceRequest;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v1, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onServiceConnectStatus onConnectServiceRequestParam is null"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnConnectServiceRequest;->getIdmConnectServiceRequest()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;

    move-result-object p1

    if-nez p1, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onServiceConnectStatus called but parse failed. Ignore request."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-static {v3}, Lcom/xiaomi/idm/api/IDMServer;->access$000(Lcom/xiaomi/idm/api/IDMServer;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/idm/api/IDMService;

    if-nez v3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onServiceConnectStatus service not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getStatus()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConnectServiceStatus : status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " clientId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v5, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/idm/api/conn/EndPoint;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)Lcom/xiaomi/idm/api/conn/EndPoint;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object v6

    invoke-virtual {v3, v0, v2, v5, v6}, Lcom/xiaomi/idm/api/IDMService;->onServiceConnectStatus(ILjava/lang/String;Lcom/xiaomi/idm/api/conn/EndPoint;Lcom/xiaomi/idm/api/conn/ConnParam;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_TO_BE_CONFIRM:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->getCode()I

    move-result v0

    if-ne v4, v0, :cond_4

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/idm/api/IDMServer;->acceptConnection(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onRequest([B)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMServer"

    const-string v3, "onRequest"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onRequest called but param is null. Ignore request."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnRequest;->getIdmRequest()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onRequest called but parse failed. Ignore request."

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-static {v3}, Lcom/xiaomi/idm/api/IDMServer;->access$000(Lcom/xiaomi/idm/api/IDMServer;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/idm/api/IDMService;

    if-eqz v3, :cond_3

    new-instance v4, Lcom/xiaomi/idm/api/ClientInfo;

    invoke-direct {v4}, Lcom/xiaomi/idm/api/ClientInfo;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/idm/api/ClientInfo;->setClientId(Ljava/lang/String;)Lcom/xiaomi/idm/api/ClientInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/idm/api/IDMService;->setCallingClient(Lcom/xiaomi/idm/api/ClientInfo;)V

    invoke-virtual {v3, p1}, Lcom/xiaomi/idm/api/IDMService;->request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    invoke-static {v1}, Lcom/xiaomi/idm/api/IDMService;->setCallingClient(Lcom/xiaomi/idm/api/ClientInfo;)V

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequest service not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-static {p1}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_4

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "onRequest response null"

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_NULL:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-static {p1}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->setIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    iget-object v0, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->response(Ljava/lang/String;[B)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onRequest, service unavailable"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public onServiceChanged([B)V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMServer"

    const-string v3, "onServiceChanged"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "onServiceChanged proto is null"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getOldServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getNewServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getSubChangeTypeValue()I

    move-result p1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-static {v4}, Lcom/xiaomi/idm/api/IDMServer;->access$000(Lcom/xiaomi/idm/api/IDMServer;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/idm/api/IDMService;

    if-nez v4, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onServiceChanged Could not find service, oldServiceId = ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v4, v3}, Lcom/xiaomi/idm/api/IDMService;->setUUID(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v1, v3}, Lcom/xiaomi/idm/api/IDMService;->onServiceChanged(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMServer;->access$000(Lcom/xiaomi/idm/api/IDMServer;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    :goto_1
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "newServiceId is null"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_2
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "oldServiceId is null"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSetEventCallback([B)I
    .locals 5

    const-string v0, "IDMServer"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "onSetEventCallback eventParam is null"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnSetEventCallback;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "onSetEventCallback idmEvent is null"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEid()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEnable()Z

    move-result p1

    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    invoke-static {v4}, Lcom/xiaomi/idm/api/IDMServer;->access$000(Lcom/xiaomi/idm/api/IDMServer;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/IDMService;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/idm/api/IDMService;->enableEvent(IZ)I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMService;->isEventEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServer$1;->this$0:Lcom/xiaomi/idm/api/IDMServer;

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServer;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/IDMService;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMService;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;)V

    :cond_3
    :goto_1
    return v3
.end method
