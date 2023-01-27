.class public final Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AcceptInvitationApp.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$3500()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllApps(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;)",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-object p0
.end method

.method public addApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-object p0
.end method

.method public addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-object p0
.end method

.method public addApps(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-object p0
.end method

.method public clearApps()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearBtAddr()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearChannel()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$3900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearConnType()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$3700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearDeviceType()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearDiscType()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$8500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearIdHash()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearInviteKey()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$8700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearInvitePort()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$8100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearInviteType()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$8300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearMacAddr()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearMcVersion()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearName()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearPbVersion()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearPwd()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearRole()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearSsid()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public clearSwVersion()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;)V

    return-object p0
.end method

.method public getApps(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getApps(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    move-result-object p0

    return-object p0
.end method

.method public getAppsCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getAppsCount()I

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

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getAppsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBtAddr()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getBtAddr()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getChannel()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getChannel()I

    move-result p0

    return p0
.end method

.method public getConnType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getConnType()I

    move-result p0

    return p0
.end method

.method public getDeviceType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDeviceType()I

    move-result p0

    return p0
.end method

.method public getDiscType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getDiscType()I

    move-result p0

    return p0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getIdHash()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdHashBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getIdHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getInviteKey()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getInviteKey()I

    move-result p0

    return p0
.end method

.method public getInvitePort()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getInvitePort()I

    move-result p0

    return p0
.end method

.method public getInviteType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getInviteType()I

    move-result p0

    return p0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getMacAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacAddrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getMacAddrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getMcVersion()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getMcVersion()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPbVersion()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getPbVersion()I

    move-result p0

    return p0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getPwd()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPwdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getPwdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getRole()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getRole()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;

    move-result-object p0

    return-object p0
.end method

.method public getRoleValue()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getRoleValue()I

    move-result p0

    return p0
.end method

.method public getSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public getSecurityModeValue()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getSecurityModeValue()I

    move-result p0

    return p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSsidBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getSsidBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getSwVersion()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->getSwVersion()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public removeApps(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;)V

    return-object p0
.end method

.method public setApps(ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;ILcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-object p0
.end method

.method public setBtAddr(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setChannel(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$3800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setConnType(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$3600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setDeviceType(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setDiscType(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$8400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setIdHash(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdHashBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInviteKey(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$8600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setInvitePort(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$8000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setInviteType(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$8200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setMacAddr(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4000(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMacAddrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMcVersion(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5900(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPbVersion(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$5700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setPwd(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPwdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4500(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRole(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;)V

    return-object p0
.end method

.method public setRoleValue(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setSecurityMode(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;)V

    return-object p0
.end method

.method public setSecurityModeValue(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$7700(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;I)V

    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4600(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSsidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$4800(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSwVersion(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;->access$6100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetter;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
