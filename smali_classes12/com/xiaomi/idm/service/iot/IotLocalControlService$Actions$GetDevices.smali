.class public Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source "IotLocalControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDevices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/idm/api/IDMService$Action<",
        "Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;",
        ">;"
    }
.end annotation


# instance fields
.field action:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;->setServiceToken(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;->setIsLocal(Z)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;->action:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/idm/service/iot/IotLocalControlService;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;->action:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast v1, Lcom/xiaomi/idm/service/iot/IotLocalControlService;

    iget-object v2, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;->action:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;

    invoke-virtual {v2}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;->getServiceToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;->action:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;

    invoke-virtual {v3}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;->action:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;->getIsLocal()Z

    move-result p0

    invoke-virtual {v1, v2, v3, p0}, Lcom/xiaomi/idm/service/iot/IotLocalControlService;->getDevices(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IotLocalControlService"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;

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

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;->parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$IotResponse;

    move-result-object p0

    return-object p0
.end method

.method public toBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;->action:Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IotLocalControlServiceProto$GetDevices;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
