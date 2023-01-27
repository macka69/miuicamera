.class public Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source "PropertyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/PropertyService$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetPropertyCommands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/idm/api/IDMService$Action<",
        "Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/service/iot/PropertyService;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/idm/service/iot/PropertyService;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->putAllPropertyMap(Ljava/util/Map;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/idm/service/iot/PropertyService;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast v1, Lcom/xiaomi/idm/service/iot/PropertyService;

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->getPropertyMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaomi/idm/service/iot/PropertyService;->setPropertyCommands(Ljava/util/Map;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PropertyService"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

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

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;->parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyResponse;

    move-result-object p0

    return-object p0
.end method

.method public toBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;->action:Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$SetPropertyCommands;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
