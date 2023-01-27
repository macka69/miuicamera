.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$5700()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClientId()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$7000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public clearCode()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$5900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public clearMsg()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public clearRequestId()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public clearResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$7300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public clearUuid()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getClientId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getCode()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getCode()I

    move-result p0

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getRequestId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getResponse()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getResponse()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getUuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$7100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCode(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$5800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;I)V

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRequestIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$7200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->access$6800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
