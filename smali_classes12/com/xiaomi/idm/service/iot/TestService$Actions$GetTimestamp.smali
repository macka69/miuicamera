.class public Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/TestService$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetTimestamp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/idm/api/IDMService$Action<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/service/iot/TestService;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/idm/service/iot/TestService;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast p0, Lcom/xiaomi/idm/service/iot/TestService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/TestService;->getTimestamp()J

    move-result-wide v1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->newBuilder()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;->setV(J)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestService"

    invoke-static {v2, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public parseResponse([B)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->parseFrom([B)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->getV()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;->parseResponse([B)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public toBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetTimestamp;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
