.class public Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source "IPCameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/IPCameraService$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetIpcSkeletonInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/idm/api/IDMService$Action<",
        "Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;",
        ">;"
    }
.end annotation


# instance fields
.field action:Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/service/iot/IPCameraService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo$Builder;->setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;->action:Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/idm/service/iot/IPCameraService;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;->action:Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast v1, Lcom/xiaomi/idm/service/iot/IPCameraService;

    iget-object v2, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;->action:Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;

    invoke-virtual {v2}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;->action:Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;->getServiceToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/idm/service/iot/IPCameraService;->getIpcSkeletonInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPCameraService"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/xiaomi/idm/api/RequestException;

    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE_IN_ACTION:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p0
.end method

.method public bridge synthetic parseResponse([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;->parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$IPCResponse;

    move-result-object p0

    return-object p0
.end method

.method public toBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/IPCameraService$Actions$GetIpcSkeletonInfo;->action:Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$GetIpcSkeletonInfo;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
