.class final Lcom/xiaomi/idm/api/IDMBinderBase$1;
.super Ljava/lang/Object;
.source "IDMBinderBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMBinderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$000()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$100()V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$200()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/mi_connect_service/IMiConnect$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$302(Lcom/xiaomi/mi_connect_service/IMiConnect;)Lcom/xiaomi/mi_connect_service/IMiConnect;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :try_start_1
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$300()Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->getServiceApiVersion()I

    move-result p1

    sput p1, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const-string p1, "IDMBinderBase"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get service api version: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, p0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move p1, p0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IDMBinderBase"

    invoke-static {v0, p2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_ERROR:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    :goto_0
    sget p2, Lcom/xiaomi/idm/api/IDMBinderBase;->sServiceApiVersion:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->PERMISSION_DENNY:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    :cond_1
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$400()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/api/IDMBinderBase;

    if-eqz p1, :cond_2

    iget-object v0, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMBinderBase;->isVersionSatisfied()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$300()Lcom/xiaomi/mi_connect_service/IMiConnect;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMBinderBase;->onServiceConnected()V

    iget-object v1, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    invoke-interface {v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceBind()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$502(Lcom/xiaomi/idm/api/IDMBinderBase;Z)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$400()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/xiaomi/idm/api/IDMBinderBase;->mMiAppCallback:Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    sget-object v1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->SERVICE_API_VERSION_TOO_LOW:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onServiceError(I)V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$602(Z)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "IDMBinderBase"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/idm/api/IDMBinderBase;->access$100()V

    return-void
.end method
