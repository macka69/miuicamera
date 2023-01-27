.class public abstract Lcom/xiaomi/idm/api/IDMService;
.super Lcom/xiaomi/idm/api/IIDMService;
.source "IDMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/IDMService$Event;,
        Lcom/xiaomi/idm/api/IDMService$BuiltinService;,
        Lcom/xiaomi/idm/api/IDMService$Action;,
        Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IDMService"

.field public static final TYPE_HANDOFF:Ljava/lang/String; = "urn:aiot-spec-v3:service:handoff:00000001:1"

.field public static final TYPE_INPUT:Ljava/lang/String; = "urn:aiot-spec-v3:service:input:00000001:1"

.field public static final TYPE_IOT:Ljava/lang/String; = "urn:aiot-spec-v3:service:iot-local-control:00000001:1"

.field public static final TYPE_IPC:Ljava/lang/String; = "urn:aiot-spec-v3:service:ip-camera:00000001:1"

.field public static final TYPE_LIGHT:Ljava/lang/String; = "urn:aiot-spec-v3:service:light:00000001:1"

.field public static final TYPE_MOTIONSENSOR:Ljava/lang/String; = "urn:aiot-spec-v3:service:motionsensor:00000001:1"

.field private static final sCallingClientInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/xiaomi/idm/api/ClientInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

.field protected mEventEnable:Z

.field private mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/IDMService;->sCallingClientInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IIDMService;-><init>()V

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    iput-object v0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method protected constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IIDMService;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IIDMService;-><init>()V

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setType(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setOriginalUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/api/IDMService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setSuperType(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method public static getCallingClient()Lcom/xiaomi/idm/api/ClientInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/IDMService;->sCallingClientInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/ClientInfo;

    return-object v0
.end method

.method static setCallingClient(Lcom/xiaomi/idm/api/ClientInfo;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/idm/api/IDMService;->sCallingClientInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enableEvent(IZ)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    move-result-object p0

    return-object p0
.end method

.method public getIDMServiceProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getOriginalUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUseSuper()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getSuperType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEventEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    return p0
.end method

.method protected notifyEvent(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMService;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setEid(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setEvent(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    iget-object p2, p0, Lcom/xiaomi/idm/api/IDMService;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    invoke-interface {p2, p0, p1}, Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;->onEvent(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    :cond_0
    return-void
.end method

.method public onAdvertisingResult(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdvertisingResult: status = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "IDMService"

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "IDMService"

    const-string p2, "onServiceChanged"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceChanged([B)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMService"

    const-string v3, "onServiceChanged"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

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

    const-string p1, "    onServiceChangeResult proto from native is null!"

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getOldServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "    oldServiceId from native does not match current serviceId!"

    invoke-static {v2, v4, v3}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getNewServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getSubChangeTypeValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    changedReason["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$SubChangeType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]oldServiceId["

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], newServiceId["

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/idm/api/IDMService;->setUUID(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v1, v3}, Lcom/xiaomi/idm/api/IDMService;->onServiceChanged(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnectStatus(ILjava/lang/String;Lcom/xiaomi/idm/api/conn/EndPoint;Lcom/xiaomi/idm/api/conn/ConnParam;)Z
    .locals 0

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "IDMService"

    const-string p3, "onServiceConnectStatus request: default "

    invoke-static {p2, p3, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final onServiceConnectStatus([B)Z
    .locals 3

    const-string v0, "IDMService"

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-string v1, " onConnectServiceRequest Called but param is null"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/idm/api/conn/EndPoint;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)Lcom/xiaomi/idm/api/conn/EndPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequest;->getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/xiaomi/idm/api/IDMService;->onServiceConnectStatus(ILjava/lang/String;Lcom/xiaomi/idm/api/conn/EndPoint;Lcom/xiaomi/idm/api/conn/ConnParam;)Z

    move-result p0

    return p0
.end method

.method public abstract request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
.end method

.method public final request([B)[B
    .locals 3

    const-string v0, "IDMService"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

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
    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "request Called but bytes is null"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/ClientInfo;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/ClientInfo;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/ClientInfo;->setClientId(Ljava/lang/String;)Lcom/xiaomi/idm/api/ClientInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMService;->setCallingClient(Lcom/xiaomi/idm/api/ClientInfo;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/api/IDMService;->request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    invoke-static {v1}, Lcom/xiaomi/idm/api/IDMService;->setCallingClient(Lcom/xiaomi/idm/api/ClientInfo;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public setEventCallback(Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method

.method public toByteArray()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public update(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService;->mService:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    return-void
.end method
