.class public Lcom/xiaomi/idm/api/conn/EndPoint;
.super Ljava/lang/Object;
.source "EndPoint.java"


# static fields
.field public static final MIRROR_V1_MC_VERSION:I = 0x102


# instance fields
.field private bdAddr:Ljava/lang/String;

.field private idhash:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private mVerifyStatus:I

.field private mac:Ljava/lang/String;

.field private mcVersion:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)Lcom/xiaomi/idm/api/conn/EndPoint;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/idm/api/conn/EndPoint;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/conn/EndPoint;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setIp(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getBdAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setBdAddr(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getIdhash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setIdhash(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setMac(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getMcVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/conn/EndPoint;->setMcVersion(I)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->getVerifyStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/conn/EndPoint;->setVerifyStatus(I)V

    return-object v0
.end method


# virtual methods
.method public getBdAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->bdAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getIdhash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->idhash:Ljava/lang/String;

    return-object p0
.end method

.method public getIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public getMcVersion()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mcVersion:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getVerifyStatus()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mVerifyStatus:I

    return p0
.end method

.method public setBdAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->bdAddr:Ljava/lang/String;

    return-void
.end method

.method public setIdhash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->idhash:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->ip:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMcVersion(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mcVersion:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->name:Ljava/lang/String;

    return-void
.end method

.method public setVerifyStatus(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mVerifyStatus:I

    return-void
.end method

.method public toProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;
    .locals 2

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->ip:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setIp(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->bdAddr:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setBdAddr(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->idhash:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setIdhash(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mac:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setMac(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    :cond_4
    iget v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mcVersion:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setMcVersion(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    iget p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mVerifyStatus:I

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->setVerifyStatus(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EndPoint{ip = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bdAddress = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->bdAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", idhash = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->idhash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mac = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mcVersion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mcVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", verifyStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/idm/api/conn/EndPoint;->mVerifyStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
