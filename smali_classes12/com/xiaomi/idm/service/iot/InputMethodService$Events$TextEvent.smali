.class public Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent;
.super Lcom/xiaomi/idm/api/IDMService$Event;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/InputMethodService$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/idm/api/IDMService$Event;-><init>(Lcom/xiaomi/idm/api/IDMService;I)V

    iput-object p2, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent;->callback:Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;

    return-void
.end method


# virtual methods
.method protected onEvent([B)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent;->callback:Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->getInputData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent$Callback;->onTextEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodService"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
