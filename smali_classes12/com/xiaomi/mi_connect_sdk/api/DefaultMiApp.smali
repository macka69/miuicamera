.class public Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;
.super Lcom/xiaomi/idm/api/IDMBinderBase;
.source "DefaultMiApp.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_sdk/api/InnerMiApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;
    }
.end annotation


# static fields
.field private static final MIN_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DefaultMiApp"


# instance fields
.field private commandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isAdvertising:Z

.field private volatile isDestroying:Z

.field private volatile isDiscovering:Z

.field private mAppId:I

.field private mCallback:Lcom/xiaomi/mi_connect_service/IMiConnectCallback;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/api/IDMBinderBase;-><init>(Landroid/content/Context;Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->commandList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isAdvertising:Z

    iput-boolean v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isDiscovering:Z

    iput-boolean v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isDestroying:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)V

    iput-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mCallback:Lcom/xiaomi/mi_connect_service/IMiConnectCallback;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput p3, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context or callback can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$002(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isAdvertising:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isDiscovering:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    return-object p0
.end method

.method private requestServiceFromOtherApp(ILcom/xiaomi/mi_connect_sdk/api/AppConfig;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getDiscAppIds()[I

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getDiscAppIds()[I

    move-result-object p0

    array-length p0, p0

    if-ne p0, v1, :cond_1

    invoke-virtual {p2}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getDiscAppIds()[I

    move-result-object p0

    aget p0, p0, v0

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public acceptConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->getRoleType()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->getEndPointId()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->isEndPointTrusted()Z

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->acceptConnection(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_0
    return-void
.end method

.method public destroy(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->doDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isDestroying:Z

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->destroy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->unbindService()V

    return-void
.end method

.method public deviceInfoIDM()[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "deviceInfoIDM"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-object v1

    :cond_0
    sget v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-object v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-interface {p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->deviceInfoIDM()[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public disconnectFromEndPoint(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->getRoleType()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->getEndPointId()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->disconnectFromEndPoint(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_0
    return-void
.end method

.method public getIdHash()[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "getIdHash"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-object v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-interface {p0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->getIdHash()[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method protected getMinVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected onServiceConnected()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->onServiceConnected()V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->commandList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;

    invoke-virtual {v2}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;->execute()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " did: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DefaultMiApp"

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/mi_connect_service/IMiConnect;->publish(ILjava/lang/String;Ljava/lang/String;[B)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {v3, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public registerSoundBoxWhiteName(Lcom/xiaomi/mi_connect_service/ISoundBoxWhiteNameCallBack;)I
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "registerSoundBoxWhiteName"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->registerSoundBoxWhiteName(Lcom/xiaomi/mi_connect_service/ISoundBoxWhiteNameCallBack;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {v1, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public rejectConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->getRoleType()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->getEndPointId()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->rejectConnection(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_0
    return-void
.end method

.method public requestConnection(Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->getEndPointId()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ConnectionConfig;->getCommData()[B

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->requestConnection(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_0
    return-void
.end method

.method public sendPayload(Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->getRoleType()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->getEndPointId()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/PayloadConfig;->getPayload()[B

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->sendPayload(III[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_0
    return-void
.end method

.method public setIPCDataCallback(Ljava/lang/String;Lcom/xiaomi/mi_connect_service/IIPCDataCallback;)I
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "setIPCDataCallback"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->setIPCDataCallback(ILjava/lang/String;Lcom/xiaomi/mi_connect_service/IIPCDataCallback;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {v1, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public startAdvertising(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
    .locals 10

    iget-boolean v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isDestroying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->bindService()V

    new-instance v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;

    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->commandList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    iget-object v3, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mCallback:Lcom/xiaomi/mi_connect_service/IMiConnectCallback;

    invoke-interface {v1, v2, v0, v3}, Lcom/xiaomi/mi_connect_service/IMiConnect;->setCallback(IILcom/xiaomi/mi_connect_service/IMiConnectCallback;)V

    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v5, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAdvData()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getDiscType()I

    move-result v7

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAppCommType()I

    move-result v8

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getCommData()[B

    move-result-object v9

    invoke-interface/range {v4 .. v9}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startAdvertising(I[BII[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_0
    return-void
.end method

.method public startAp(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/mi_connect_service/IApStateCallback;)J
    .locals 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "startAp"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    sget v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startSap(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/mi_connect_service/IApStateCallback;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {v1, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public startDiscovery(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isDestroying:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->bindService()V

    new-instance v2, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;

    new-instance v3, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;

    invoke-direct {v3, v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$3;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    invoke-direct {v2, v0, v3}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->commandList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_2
    :try_start_0
    iget-object v3, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v4, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    iget-object v5, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mCallback:Lcom/xiaomi/mi_connect_service/IMiConnectCallback;

    invoke-interface {v3, v4, v2, v5}, Lcom/xiaomi/mi_connect_service/IMiConnect;->setCallback(IILcom/xiaomi/mi_connect_service/IMiConnectCallback;)V

    iget v2, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->requestServiceFromOtherApp(ILcom/xiaomi/mi_connect_sdk/api/AppConfig;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    iget-object v4, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v5, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getCommData()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getDiscType()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAppCommType()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAppCommDataType()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getDiscAppIds()[I

    move-result-object v10

    invoke-interface/range {v4 .. v10}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startDiscoveryV2(I[BIII[I)V

    goto :goto_0

    :cond_3
    iget-object v11, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v12, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getCommData()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getDiscType()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAppCommType()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAppCommDataType()I

    move-result v16

    invoke-interface/range {v11 .. v16}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startDiscovery(I[BIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_0
    return-void
.end method

.method public startScannerList(Lcom/xiaomi/mi_connect_service/IDeviceScannerCallback;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "startScannerList"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startScannerList(ILcom/xiaomi/mi_connect_service/IDeviceScannerCallback;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {v1, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public stopAdvertising()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isAdvertising:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "service unbind but advertising"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTISING_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onAdvertingResult(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-interface {v0, v1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopAdvertising(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_1
    return-void
.end method

.method public stopAp(J)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "stopAp"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_0
    sget v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopSap(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {v1, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public stopDiscovery()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->isDiscovering:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "service unbind but discovering"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    iget p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onDiscoveryResult(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-interface {v0, v1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopDiscovery(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    :goto_1
    return-void
.end method

.method public updateCommConfig(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)I
    .locals 10

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    :cond_0
    sget v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service Api version too low:\n   required min version: 8\n   current version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DefaultMiApp"

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->UNKNOWN_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    iget v5, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->mAppId:I

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAppRoleType()I

    move-result v6

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAppCommType()I

    move-result v7

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getCommData()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/AppConfig;->getAppCommDataType()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Lcom/xiaomi/mi_connect_service/IMiConnect;->updateCommConfig(III[BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    sget-object p0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p0

    :goto_0
    return p0
.end method
