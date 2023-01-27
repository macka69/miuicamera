.class public abstract Lcom/xiaomi/idm/service/iot/TestService;
.super Lcom/xiaomi/idm/api/IDMService$BuiltinService;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/TestService$Events;,
        Lcom/xiaomi/idm/service/iot/TestService$Actions;,
        Lcom/xiaomi/idm/service/iot/TestService$Skeleton;,
        Lcom/xiaomi/idm/service/iot/TestService$Stub;
    }
.end annotation


# static fields
.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:aiot-spec-v3:service:idm-test:00000001:1"

.field public static final SERVICE_UUID:Ljava/lang/String; = "10000000-0000-1000-8000-00805f9b34fc"

.field private static final TAG:Ljava/lang/String; = "TestService"


# direct methods
.method protected constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/IDMService$BuiltinService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "10000000-0000-1000-8000-00805f9b34fc"

    const-string v1, "urn:aiot-spec-v3:service:idm-test:00000001:1"

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/idm/api/IDMService$BuiltinService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/api/IDMService$BuiltinService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getAPlusB(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation
.end method

.method public abstract getSomeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation
.end method

.method public abstract getTimestamp()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation
.end method

.method public request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 5

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getAid()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getRequest()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v3, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;-><init>(Lcom/xiaomi/idm/service/iot/TestService;[B)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;-><init>(Lcom/xiaomi/idm/service/iot/TestService;[B)V

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetAPlusB;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetAPlusB;-><init>(Lcom/xiaomi/idm/service/iot/TestService;[B)V

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;-><init>(Lcom/xiaomi/idm/service/iot/TestService;[B)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TestService"

    invoke-static {v4, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_5

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_ACTION_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_ACTION_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v4}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " aid: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1, v2}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v3}, Lcom/xiaomi/idm/api/IDMService$Action;->invoke()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0
.end method

.method public abstract triggerClick()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation
.end method
