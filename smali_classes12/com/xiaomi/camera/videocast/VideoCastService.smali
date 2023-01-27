.class public Lcom/xiaomi/camera/videocast/VideoCastService;
.super Landroid/app/Service;
.source "VideoCastService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;,
        Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;,
        Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;,
        Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;,
        Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;
    }
.end annotation


# static fields
.field public static final INTENT_ACTION_DISCONNECT:Ljava/lang/String; = "com.xiaomi.camera.videocast.action.DISCONNET"

.field public static final INTENT_ACTION_DISMISS_ACTIVITIES:Ljava/lang/String; = "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

.field public static final INTENT_ACTION_FORCE_DISCONNECT:Ljava/lang/String; = "com.xiaomi.camera.videocast.action.FORCE_DISCONNECT"

.field public static final INTENT_ACTION_SEND_PAYLOAD:Ljava/lang/String; = "com.xiaomi.camera.videocast.action.SEND_PAYLOAD"

.field public static final INTENT_ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.xiaomi.camera.videocast.action.SERVICE_STATE_CHANGED"

.field public static final INTENT_ACTION_START_ADVERTISING:Ljava/lang/String; = "com.xiaomi.camera.videocast.action.START_ADVERTISING"

.field public static final INTENT_ACTION_STOP_ADVERTISING:Ljava/lang/String; = "com.xiaomi.camera.videocast.action.STOP_ADVERTISING"

.field public static final INTENT_EXTRA_ARGS:Ljava/lang/String; = "args"

.field public static final INTENT_EXTRA_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final INTENT_EXTRA_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final KEY_VIDEO_CAST_SERVICE_STATE:Ljava/lang/String; = "video_cast_service_state"

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_CAST_NOTIFICATION_CHANNEL:Ljava/lang/String; = "video_cast_notification"

.field private static final VIDEO_CAST_NOTIFICATION_ID:I = 0x1

.field private static mAuthorisationResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

.field private static final mCondVar:Ljava/lang/Object;


# instance fields
.field private mAuthorisationState:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

.field private mBluetoothListener:Lcom/xiaomi/camera/rcs/network/BluetoothListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIsForceDisconnect:Z

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mNetworkStateCallback:Lcom/xiaomi/camera/rcs/network/NetworkStateCallback;

.field private mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

.field private mPendingAuthorisations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceHandler:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;

.field private final mStopServiceTask:Ljava/lang/Runnable;

.field private mWiFiStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->mCondVar:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mPendingAuthorisations:Ljava/util/LinkedList;

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mAuthorisationState:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastService$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/videocast/VideoCastService$4;-><init>(Lcom/xiaomi/camera/videocast/VideoCastService;)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mStopServiceTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/camera/videocast/VideoCastService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mStopServiceTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/camera/videocast/VideoCastService;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/videocast/VideoCastService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/videocast/VideoCastService;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->createNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/videocast/VideoCastService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->showToast(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/videocast/VideoCastService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mIsForceDisconnect:Z

    return p0
.end method

.method static synthetic access$502(Lcom/xiaomi/camera/videocast/VideoCastService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mIsForceDisconnect:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/videocast/VideoCastService;)Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mServiceHandler:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/camera/videocast/VideoCastService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->stopAdvertising(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->mCondVar:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/camera/videocast/VideoCastService;Ljava/lang/String;)Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->promptForAuthorisation(Ljava/lang/String;)Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    move-result-object p0

    return-object p0
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/camera/videocast/VideoCastService;

    const-string v2, "com.xiaomi.camera.videocast.action.STOP_ADVERTISING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "video_cast_notification"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0803a2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f11091c

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f11091b

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x106001c

    invoke-virtual {p0, v1}, Landroid/app/Service;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static disconnect(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaomi.camera.videocast.action.DISCONNET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private disconnect(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v1, "sending CMD_DISCONNECT"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static forceDisconnect(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaomi.camera.videocast.action.FORCE_DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private forceDisconnect(Landroid/os/Bundle;)V
    .locals 1

    sget-object p1, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v0, "forceDisconnect"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mIsForceDisconnect:Z

    return-void
.end method

.method public static declared-synchronized getServiceState(Landroid/content/Context;)Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/xiaomi/camera/videocast/VideoCastService;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "video_cast_service_state"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STARTING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STARTING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->ADVERTISING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->ADVERTISING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isServiceRunning(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/xiaomi/camera/videocast/VideoCastService;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->getServiceState(Landroid/content/Context;)Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private promptForAuthorisation(Ljava/lang/String;)Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;
    .locals 5

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authorisation requested from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/xiaomi/camera/videocast/AuthoriseActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "device_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;

    invoke-direct {v1, v0}, Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;-><init>(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mPendingAuthorisations:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mAuthorisationState:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorisation state idle - displaying immediately - queue contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mPendingAuthorisations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mPendingAuthorisations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaying an authorisation from the queue - now contains "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mPendingAuthorisations:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->ACTIVE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    iput-object v2, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mAuthorisationState:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->UNKNOWN:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    sput-object v2, Lcom/xiaomi/camera/videocast/VideoCastService;->mAuthorisationResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v3, "going to start authorisation activity: E"

    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v3, "going to start authorisation activity: X"

    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService;->mAuthorisationResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    sget-object v3, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->UNKNOWN:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService;->mCondVar:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService;->mAuthorisationResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    iput-object v2, v0, Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;->mResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->mCondVar:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mPendingAuthorisations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mAuthorisationState:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationState;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorisation already active - not displaying - queue contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mPendingAuthorisations:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_1
    iget-object p0, v1, Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;->mResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->UNKNOWN:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mCondVar:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_3
    :goto_2
    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authorisation result now known for \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;->mResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v1, Lcom/xiaomi/camera/videocast/VideoCastService$PendingAuthorisation;->mResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    return-object p0
.end method

.method public static returnAuthorisationResult(Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authorisation result supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->mCondVar:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mAuthorisationResult:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mCondVar:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static sendPayload(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaomi.camera.videocast.action.SEND_PAYLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private sendPayload(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v1, "sendPayload"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v1, "sending CMD_SEND_PAYLOAD"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->jsonify(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private setNotificationChannel()V
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x7f11091c

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_cast_notification"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static declared-synchronized setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/xiaomi/camera/videocast/VideoCastService;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STARTING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    if-ne p1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->ADVERTISING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    if-ne p1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "video_cast_service_state"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private showToast(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static startAdvertising(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaomi.camera.videocast.action.START_ADVERTISING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startAdvertising(Landroid/os/Bundle;)V
    .locals 3

    sget-object p1, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v0, "startAdvertising"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STARTING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->updateTile()V

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mStopServiceTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mStopServiceTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v0, "sending CMD_START_SERVICE"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const p1, 0xbabe

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public static stopAdvertising(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xiaomi.camera.videocast.action.STOP_ADVERTISING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopAdvertising(Landroid/os/Bundle;)V
    .locals 1

    sget-object p1, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v0, "stopAdvertising"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STOPPING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->updateTile()V

    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v0, "sending CMD_STOP_SERVICE"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const p1, 0xdead

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mIsForceDisconnect:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoCastService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;-><init>(Lcom/xiaomi/camera/videocast/VideoCastService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mServiceHandler:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->setNotificationChannel()V

    new-instance v0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;

    new-instance v1, Lcom/xiaomi/camera/videocast/VideoCastService$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/videocast/VideoCastService$1;-><init>(Lcom/xiaomi/camera/videocast/VideoCastService;)V

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/rcs/network/BluetoothListener;-><init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mBluetoothListener:Lcom/xiaomi/camera/rcs/network/BluetoothListener;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->start()V

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastService$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/videocast/VideoCastService$2;-><init>(Lcom/xiaomi/camera/videocast/VideoCastService;)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mWiFiStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mWiFiStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastService$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/videocast/VideoCastService$3;-><init>(Lcom/xiaomi/camera/videocast/VideoCastService;)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateCallback:Lcom/xiaomi/camera/rcs/network/NetworkStateCallback;

    new-instance v0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const/16 v3, 0x3ff6

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateCallback:Lcom/xiaomi/camera/rcs/network/NetworkStateCallback;

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->addListener(Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mServiceHandler:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mServiceHandler:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;

    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-static {p0, v1}, Lcom/xiaomi/camera/videocast/VideoCastService;->setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->updateTile()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.camera.videocast.action.SERVICE_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mBluetoothListener:Lcom/xiaomi/camera/rcs/network/BluetoothListener;

    invoke-virtual {v1}, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->stop()V

    iget-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mWiFiStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget-object v2, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateCallback:Lcom/xiaomi/camera/rcs/network/NetworkStateCallback;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->removeListener(Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;)V

    iget-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const v2, 0xdead

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(I)V

    iget-object v1, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {v1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stop()V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService;->mNetworkStateMachine:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", startId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->createNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    if-eqz p1, :cond_4

    const-string v0, "args"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.camera.videocast.action.START_ADVERTISING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/VideoCastService;->startAdvertising(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.camera.videocast.action.STOP_ADVERTISING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/VideoCastService;->stopAdvertising(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.camera.videocast.action.SEND_PAYLOAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/VideoCastService;->sendPayload(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.camera.videocast.action.DISCONNET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/VideoCastService;->disconnect(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.camera.videocast.action.FORCE_DISCONNECT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/xiaomi/camera/videocast/VideoCastService;->forceDisconnect(Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
