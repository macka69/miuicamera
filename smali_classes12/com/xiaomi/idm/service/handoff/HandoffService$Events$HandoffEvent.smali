.class public Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;
.super Lcom/xiaomi/idm/api/IDMService$Event;
.source "HandoffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/HandoffService$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandoffEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/idm/api/IDMService$Event;-><init>(Lcom/xiaomi/idm/api/IDMService;I)V

    iput-object p2, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;->callback:Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;

    return-void
.end method


# virtual methods
.method protected onEvent([B)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->parseFrom([B)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent;->callback:Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getIdHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lcom/xiaomi/idm/service/handoff/HandoffService$Events$HandoffEvent$Callback;->onHandoffEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HandoffService"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
