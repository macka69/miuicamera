.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$7500()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEid()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$8000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public clearEnable()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$8200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public clearEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$8400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public clearUuid()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$7700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public getEid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEid()I

    move-result p0

    return p0
.end method

.method public getEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEnable()Z

    move-result p0

    return p0
.end method

.method public getEvent()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEvent()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getUuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setEid(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$7900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;I)V

    return-object p0
.end method

.method public setEnable(Z)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$8100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;Z)V

    return-object p0
.end method

.method public setEvent(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$8300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$7600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->access$7800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
