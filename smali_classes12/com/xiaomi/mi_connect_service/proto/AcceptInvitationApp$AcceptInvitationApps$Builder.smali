.class public final Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AcceptInvitationApp.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationAppsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationAppsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$600()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllApps(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;)",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-object p0
.end method

.method public addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-object p0
.end method

.method public addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-object p0
.end method

.method public addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-object p0
.end method

.method public clearApps()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$3000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public clearBtAddr()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$3300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public clearDeviceType()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public clearIdHash()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public clearMcVersion()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public clearName()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public clearPbVersion()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public clearSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public clearSwVersion()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;)V

    return-object p0
.end method

.method public getApps(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getApps(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    move-result-object p0

    return-object p0
.end method

.method public getAppsCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getAppsCount()I

    move-result p0

    return p0
.end method

.method public getAppsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getAppsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBtAddr()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getBtAddr()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getDeviceType()I

    move-result p0

    return p0
.end method

.method public getIdHash()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getIdHash()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMcVersion()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getMcVersion()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPbVersion()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getPbVersion()I

    move-result p0

    return p0
.end method

.method public getSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public getSecurityModeValue()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getSecurityModeValue()I

    move-result p0

    return p0
.end method

.method public getSwVersion()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->getSwVersion()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public removeApps(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$3100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V

    return-object p0
.end method

.method public setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-object p0
.end method

.method public setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-object p0
.end method

.method public setBtAddr(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$3200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDeviceType(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V

    return-object p0
.end method

.method public setIdHash(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMcVersion(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPbVersion(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V

    return-object p0
.end method

.method public setSecurityMode(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)V

    return-object p0
.end method

.method public setSecurityModeValue(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$2000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;I)V

    return-object p0
.end method

.method public setSwVersion(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;->access$1100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationApps;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
