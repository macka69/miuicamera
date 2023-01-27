.class public Lcom/xiaomi/idm/api/IDMClient;
.super Lcom/xiaomi/idm/api/IDM;
.source "IDMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/IDMClient$Call;,
        Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;,
        Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;,
        Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;,
        Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IDMClient"


# instance fields
.field private mCalls:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/idm/api/IDMClient$Call;",
            ">;"
        }
    .end annotation
.end field

.field private mEvents:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/idm/api/IDMService$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mIDMCallback:Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

.field private mInnerCallback:Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

.field private mNextRequestId:I

.field private mServiceFactory:Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

.field private mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/idm/api/IDMService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/idm/api/IDMProcessCallback;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/xiaomi/idm/api/IDMClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/idm/api/IDMServiceFactoryBase;Lcom/xiaomi/idm/api/IDMProcessCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/idm/api/IDMServiceFactoryBase;Lcom/xiaomi/idm/api/IDMProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/xiaomi/idm/api/IDM;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/idm/api/IDMProcessCallback;)V

    new-instance p1, Lcom/xiaomi/idm/api/IDMClient$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/idm/api/IDMClient$1;-><init>(Lcom/xiaomi/idm/api/IDMClient;)V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient;->mInnerCallback:Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

    iput-object p3, p0, Lcom/xiaomi/idm/api/IDMClient;->mServiceFactory:Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/idm/api/IDMClient;->mNextRequestId:I

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient;->mEvents:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient;->mIDMCallback:Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMServiceFactoryBase;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient;->mServiceFactory:Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/idm/api/IDMClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/IDMClient;->removeDeadCalls(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/idm/api/IDMClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClient;->clearCallCache()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient;->mEvents:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private clearCallCache()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/idm/api/IDMClient$Call;

    iget-object v3, v3, Lcom/xiaomi/idm/api/IDMClient$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    invoke-virtual {v3}, Ljava8/util/concurrent/CompletableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private doRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDMClient"

    const-string v2, "doRequest"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Request;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Request$Builder;->setIdmRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Request$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Request;

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Request;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->request(Ljava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextRequestId()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/xiaomi/idm/api/IDM;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/xiaomi/idm/api/IDMClient;->mNextRequestId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/idm/api/IDMClient;->mNextRequestId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeDeadCalls(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/idm/api/IDMClient$Call;

    iget-object v2, v1, Lcom/xiaomi/idm/api/IDMClient$Call;->request:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-virtual {v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/xiaomi/idm/api/IDMClient$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_LOST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v2}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result v2

    sget-object v3, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_LOST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v3}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/idm/task/CallFuture;->setFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClient;->clearCallCache()V

    return-void
.end method


# virtual methods
.method public abortInvitation(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abort InvitationCode, service type = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->setServiceType(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->abortInvitation(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public acceptConnection(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptConnection serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->clientAcceptConnection(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public connectService(Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;)Lcom/xiaomi/idm/api/IDMService;
    .locals 4
    .param p1    # Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectService serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->serviceProto:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->serviceProto:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    move-result-object v0

    iget v1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commType:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->setCommType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    move-result-object v0

    iget v1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->commDataType:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->setCommDataType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    move-result-object v0

    iget v1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->connLevel:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->setConnLevel(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->verifySameAccount:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->setVerifySameAccount(Z)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->privateData:[B

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->setPrivateData(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectService;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->connectService(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->serviceProto:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/IDMService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient;->mServiceFactory:Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    iget-object p1, p1, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;->serviceProto:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;->createIDMService(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public connectService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;
    .locals 1
    .param p1    # Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;

    invoke-direct {v0, p1}, Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/idm/api/IDMClient;->connectService(Lcom/xiaomi/idm/api/IDMClient$CSParamBuilder;)Lcom/xiaomi/idm/api/IDMService;

    move-result-object p0

    return-object p0
.end method

.method public disconnectService(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/idm/api/IDMClient;->disconnectService(Ljava/lang/String;I)V

    return-void
.end method

.method public disconnectService(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectService serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->setConnLevel(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$DisconnectService;->toByteArray()[B

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->disconnectService(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected doDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const-string v1, "IDMClient"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->unregisterIDMClient(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/IDMClient$Call;

    iget-object v0, v0, Lcom/xiaomi/idm/api/IDMClient$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_CLIENT_DESTROYED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result v1

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_CLIENT_DESTROYED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v2}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/idm/task/CallFuture;->setFailed(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "destroy called, but service unavailable"

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public generateEventKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serviceId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "eid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public inviteConnection(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invite Connection, service type = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->setServiceType(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->inviteConnection(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerIDM(Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;Lcom/xiaomi/idm/api/identify/IdentifyParam;)I
    .locals 3
    .param p1    # Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient;->mIDMCallback:Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;

    move-result-object p1

    const v0, 0x1e88e0

    invoke-virtual {p1, v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->setSdkVersion(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/idm/api/identify/IdentifyParam;->toProto()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->setIdentify(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IdentifyParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMClient;->toByteArray()[B

    move-result-object p1

    iget-object v2, p0, Lcom/xiaomi/idm/api/IDMClient;->mInnerCallback:Lcom/xiaomi/mi_connect_service/IIDMClientCallback;

    invoke-interface {p2, v0, p1, v2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->registerIDMClient(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IIDMClientCallback;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IDMClient"

    invoke-static {p2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public rejectConnection(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectConnection serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->clientRejectConnection(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/idm/api/IDMService$Action<",
            "TT;>;)",
            "Lcom/xiaomi/idm/task/CallFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Action;->getAid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IDMClient"

    invoke-static {v3, v0, v2}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Action;->getServiceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Action;->getAid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setAid(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClient;->getNextRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setRequestId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Action;->toBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->setRequest(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/idm/api/IDMClient$Call;

    invoke-direct {v3, p0, p1, v0}, Lcom/xiaomi/idm/api/IDMClient$Call;-><init>(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/IDMService$Action;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V

    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMClient;->mCalls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/xiaomi/idm/api/IDMClient;->doRequest(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)[B

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "IDMClient"

    const-string v2, "Response bytes null when do request"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_NULL:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->parseFrom([B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IDMClient"

    invoke-static {v4, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "IDMClient"

    const-string v2, "Response parse error when do request"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getCode()I

    move-result p1

    :goto_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when do request responseCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/xiaomi/idm/api/IDMClient$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    invoke-static {p1}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/idm/task/CallFuture;->setFailed(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/idm/api/IDMClient;->clearCallCache()V

    iget-object p0, v3, Lcom/xiaomi/idm/api/IDMClient$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "IDMClient"

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribe event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsubscribe event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Event;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService$Event;->getEid()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/idm/api/IDMClient;->generateEventKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMClient;->mEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_LOCAL_SERVICE_NOT_AVAILABLE:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->getCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setEid(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->setEnable(Z)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallback;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallback$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallback$Builder;->setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallback$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallback$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallback;

    iget-object v2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$SetEventCallback;->toByteArray()[B

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/xiaomi/mi_connect_service/IMiConnect;->setEventCallback(Ljava/lang/String;[B)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient;->mEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return p1
.end method

.method public startDiscovery(Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;)V
    .locals 2
    .param p1    # Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->serviceFilter:Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;

    invoke-static {v1}, Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;->access$100(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->addAllServiceTypes(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->serviceFilter:Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;

    invoke-static {v1}, Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;->access$000(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->addAllServiceUuids(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;

    move-result-object v0

    iget v1, p1, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->discType:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->setDiscType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;

    move-result-object v0

    iget p1, p1, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->serviceSecurityType:I

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->setServiceSecurityType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startDiscoveryIDM(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDMClient"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public startDiscovery(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;)V
    .locals 1
    .param p1    # Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;

    invoke-direct {v0, p1}, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;-><init>(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/idm/api/IDMClient;->startDiscovery(Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;)V

    return-void
.end method

.method public startDiscovery(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;I)V
    .locals 1
    .param p1    # Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;

    invoke-direct {v0, p1}, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;-><init>(Lcom/xiaomi/idm/api/IDMClient$ServiceFilter;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;->discType(I)Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/api/IDMClient;->startDiscovery(Lcom/xiaomi/idm/api/IDMClient$SDParamBuilder;)V

    return-void
.end method

.method public stopDiscovery()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopDiscoveryIDM(Ljava/lang/String;[B)I

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMClient;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDMClient"

    invoke-static {v1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
