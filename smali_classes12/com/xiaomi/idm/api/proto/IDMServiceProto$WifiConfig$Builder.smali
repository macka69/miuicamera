.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfigOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$17400()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChannel()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V

    return-object p0
.end method

.method public clearLocalIp()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$19200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V

    return-object p0
.end method

.method public clearMacAddr()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V

    return-object p0
.end method

.method public clearPwd()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$17900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V

    return-object p0
.end method

.method public clearRemoteIp()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V

    return-object p0
.end method

.method public clearSsid()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$17600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V

    return-object p0
.end method

.method public clearUse5GBand()Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;)V

    return-object p0
.end method

.method public getChannel()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getChannel()I

    move-result p0

    return p0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getLocalIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalIpBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getLocalIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getMacAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getMacAddrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getPwd()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPwdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getPwdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getRemoteIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteIpBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getRemoteIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getSsidBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUse5GBand()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->getUse5GBand()Z

    move-result p0

    return p0
.end method

.method public setChannel(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;I)V

    return-object p0
.end method

.method public setLocalIp(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$19100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLocalIpBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$19300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMacAddr(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMacAddrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPwd(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$17800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPwdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRemoteIp(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRemoteIpBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$19000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$17500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSsidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$17700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUse5GBand(Z)Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;->access$18100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$WifiConfig;Z)V

    return-object p0
.end method
