.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParamOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$15500()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConfig()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$17200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public clearConnLevel()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public clearConnType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$15800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public clearErrCode()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public clearErrMsg()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public clearIdHash()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public clearPrivateData()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$17000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public getConfig()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getConnLevel()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnLevel()I

    move-result p0

    return p0
.end method

.method public getConnType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method

.method public getConnTypeValue()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getConnTypeValue()I

    move-result p0

    return p0
.end method

.method public getErrCode()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getErrCode()I

    move-result p0

    return p0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getErrMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getIdHash()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getIdHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateData()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->getPrivateData()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setConfig(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$17100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setConnLevel(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;I)V

    return-object p0
.end method

.method public setConnType(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$15700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;)V

    return-object p0
.end method

.method public setConnTypeValue(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$15600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;I)V

    return-object p0
.end method

.method public setErrCode(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$15900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;I)V

    return-object p0
.end method

.method public setErrMsg(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIdHash(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdHashBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPrivateData(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;->access$16900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
