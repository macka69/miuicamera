.class public final Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InputMethodServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->access$3300()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearActionData()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->access$3500(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;)V

    return-object p0
.end method

.method public getActionData()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->getActionData()I

    move-result p0

    return p0
.end method

.method public setActionData(I)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->access$3400(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;I)V

    return-object p0
.end method
