.class public abstract Lcom/xiaomi/idm/service/iot/InputMethodService$Skeleton;
.super Lcom/xiaomi/idm/service/iot/InputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Skeleton"
.end annotation


# instance fields
.field private mInputCompleteEventEnabled:Z

.field private mTextEventEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "urn:aiot-spec-v3:service:input:00000001:1"

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/idm/service/iot/InputMethodService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/InputMethodService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableEvent(IZ)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    iput-boolean p2, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Skeleton;->mTextEventEnabled:Z

    iput-boolean p2, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Skeleton;->mInputCompleteEventEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iput-boolean p2, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Skeleton;->mTextEventEnabled:Z

    iget-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iput-boolean p2, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Skeleton;->mInputCompleteEventEnabled:Z

    iget-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    :goto_0
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public notifyInputCompleteEvent(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Skeleton;->mInputCompleteEventEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;->setActionData(I)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService;->notifyEvent(I[B)V

    :cond_0
    return-void
.end method

.method public notifyTextEvent(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/idm/service/iot/InputMethodService$Skeleton;->mTextEventEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->setInputData(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$TextEvent;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService;->notifyEvent(I[B)V

    :cond_0
    return-void
.end method
