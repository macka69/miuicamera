.class public Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/TestService$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriggerClick"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/idm/api/IDMService$Action<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/service/iot/TestService;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/idm/service/iot/TestService;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast p0, Lcom/xiaomi/idm/service/iot/TestService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/TestService;->triggerClick()V
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestService"

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public parseResponse([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public toBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$TriggerClick;->toByteArray()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
