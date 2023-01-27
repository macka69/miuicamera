.class public abstract Lcom/xiaomi/idm/service/handoff/HandoffService$Skeleton;
.super Lcom/xiaomi/idm/service/handoff/HandoffService;
.source "HandoffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/HandoffService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Skeleton"
.end annotation


# instance fields
.field private mHandoffEventEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "urn:aiot-spec-v3:service:handoff:00000001:1"

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/idm/service/handoff/HandoffService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/handoff/HandoffService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    iput-boolean p2, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Skeleton;->mHandoffEventEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iput-boolean p2, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Skeleton;->mHandoffEventEnabled:Z

    iget-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    :goto_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public notifyHandoffEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/idm/service/handoff/HandoffService$Skeleton;->mHandoffEventEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->newBuilder()Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->setIdHash(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->setAppKey(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->setKey(Ljava/lang/String;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;

    move-result-object p1

    invoke-static {p4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;

    const/4 p2, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffEvent;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaomi/idm/api/IDMService;->notifyEvent(I[B)V

    :cond_0
    return-void
.end method
