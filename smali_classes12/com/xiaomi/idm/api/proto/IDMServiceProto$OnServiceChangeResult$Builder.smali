.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13100()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNewServiceId()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;)V

    return-object p0
.end method

.method public clearOldServiceId()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;)V

    return-object p0
.end method

.method public clearSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$14000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;)V

    return-object p0
.end method

.method public getNewServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getNewServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNewServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getNewServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getOldServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getOldServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOldServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getOldServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$SubChangeType;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$SubChangeType;

    move-result-object p0

    return-object p0
.end method

.method public getSubChangeTypeValue()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->getSubChangeTypeValue()I

    move-result p0

    return p0
.end method

.method public setNewServiceId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNewServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOldServiceId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOldServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSubChangeType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$SubChangeType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$SubChangeType;)V

    return-object p0
.end method

.method public setSubChangeTypeValue(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;->access$13800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult;I)V

    return-object p0
.end method
