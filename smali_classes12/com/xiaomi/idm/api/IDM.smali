.class public Lcom/xiaomi/idm/api/IDM;
.super Lcom/xiaomi/idm/api/IDMBinderBase;
.source "IDM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;,
        Lcom/xiaomi/idm/api/IDM$InternalCallback;
    }
.end annotation


# static fields
.field private static final MIN_VERSION:I = 0x6

.field private static final TAG:Ljava/lang/String; = "IDM"


# instance fields
.field private final CLIENT_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/idm/api/IDMProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/idm/api/IDMBinderBase;-><init>(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;)V

    iput-object p2, p0, Lcom/xiaomi/idm/api/IDM;->CLIENT_ID:Ljava/lang/String;

    return-void
.end method

.method private generateSetConnParam(Lcom/xiaomi/idm/api/conn/ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->toProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->setConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    return-object p0
.end method


# virtual methods
.method public createConnection(Lcom/xiaomi/idm/api/conn/ConnParam;Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;)I
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDM"

    const-string v2, "createConnection"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/xiaomi/idm/api/IDM$InternalCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p2, v3}, Lcom/xiaomi/idm/api/IDM$InternalCallback;-><init>(Lcom/xiaomi/idm/api/IDM;Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;Lcom/xiaomi/idm/api/IDM$1;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/IDM;->generateSetConnParam(Lcom/xiaomi/idm/api/conn/ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    move-result-object p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->toByteArray()[B

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->createConnection(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IConnectionCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v2
.end method

.method public createWifiConfigConnectionByQRCode(Ljava/lang/String;Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;)I
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromQRCodeProto(Ljava/lang/String;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/api/IDM;->createConnection(Lcom/xiaomi/idm/api/conn/ConnParam;Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;)I

    move-result p0

    return p0
.end method

.method public destroyConnection(Lcom/xiaomi/idm/api/conn/ConnParam;)I
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDM"

    const-string v2, "destroyConnection"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/IDM;->generateSetConnParam(Lcom/xiaomi/idm/api/conn/ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;

    move-result-object p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetConnParam;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->destroyConnection(Ljava/lang/String;[B)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v2
.end method

.method protected getClientId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDM;->CLIENT_ID:Ljava/lang/String;

    return-object p0
.end method

.method public getIdHash()[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDM"

    const-string v2, "getIdHash"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-interface {p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->getIdHash()[B

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v2
.end method

.method protected getMinVersion()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
