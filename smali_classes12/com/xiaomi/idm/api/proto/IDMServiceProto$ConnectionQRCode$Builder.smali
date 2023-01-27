.class public final Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCodeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21100()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChannel()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V

    return-object p0
.end method

.method public clearConnType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V

    return-object p0
.end method

.method public clearIdHash()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$22600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V

    return-object p0
.end method

.method public clearMacAddr()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V

    return-object p0
.end method

.method public clearPwd()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$22000(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V

    return-object p0
.end method

.method public clearSsid()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$22300(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;)V

    return-object p0
.end method

.method public getChannel()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getChannel()I

    move-result p0

    return p0
.end method

.method public getConnType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getConnType()I

    move-result p0

    return p0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getIdHash()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getIdHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getMacAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getMacAddrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getPwd()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPwdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getPwdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->getSsidBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setChannel(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;I)V

    return-object p0
.end method

.method public setConnType(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;I)V

    return-object p0
.end method

.method public setIdHash(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$22500(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdHashBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$22700(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMacAddr(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21600(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMacAddrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21800(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPwd(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$21900(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPwdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$22100(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$22200(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSsidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;->access$22400(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnectionQRCode;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
