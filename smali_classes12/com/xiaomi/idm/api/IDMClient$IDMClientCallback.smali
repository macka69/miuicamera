.class public abstract Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;
.super Ljava/lang/Object;
.source "IDMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IDMClientCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAccountChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "IDMClient"

    const-string p2, "onMiIdentityChanged, newIdHash = [%s], subChangeType = [%s]"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onDiscoveryResult(I)V
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string p1, "IDMClient"

    const-string v0, "onDiscoveryResult, status = [%d]"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onInvitationAccepted(Lcom/xiaomi/idm/api/IDMService;)V
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const-string p1, "IDMClient"

    const-string v0, "onInvitationAccepted, service name = [%s]\nserviceId = [%s]"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onInviteConnection(ILjava/lang/String;)V
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "IDMClient"

    const-string p2, "onInviteConnection, code = [%d], inviteStr = [%s]"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract onServiceConnectStatus(ILjava/lang/String;Lcom/xiaomi/idm/api/conn/EndPoint;Lcom/xiaomi/idm/api/conn/ConnParam;)Z
.end method

.method protected abstract onServiceFound(Lcom/xiaomi/idm/api/IDMService;)V
.end method

.method protected onServiceLost(Lcom/xiaomi/idm/api/IDMService;)V
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const-string p1, "IDMClient"

    const-string v0, "onServiceLost, service name = [%s]\nserviceId = [%s]"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
