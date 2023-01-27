.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$EndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$EndpointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2100()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBdAddr()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public clearIdhash()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public clearIp()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public clearMac()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public clearMcVersion()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public clearName()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public clearVerifyStatus()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$4000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)V

    return-object p0
.end method

.method public getBdAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getBdAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBdAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getBdAddrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIdhash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getIdhash()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdhashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getIdhashBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIpBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getMac()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getMacBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMcVersion()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getMcVersion()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getVerifyStatus()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getVerifyStatus()I

    move-result p0

    return p0
.end method

.method public setBdAddr(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBdAddrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIdhash(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdhashBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIp(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIpBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMac(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMacBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMcVersion(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$2700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVerifyStatus(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->access$3900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;I)V

    return-object p0
.end method
