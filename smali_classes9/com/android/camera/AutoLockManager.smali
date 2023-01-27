.class public Lcom/android/camera/AutoLockManager;
.super Ljava/lang/Object;
.source "AutoLockManager.java"


# static fields
.field public static HIBERNATION_TIMEOUT:I = 0x3

.field private static MILLIS_IN_MINUTE:J = 0xea60L

.field private static final MSG_HIBERNATE:I = 0x1

.field private static final MSG_LOCK_SCREEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoLockManager"

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/android/camera/AutoLockManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraAlwaysKeepScreenOn:Z

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHibernationTimeOut:J

.field private mPaused:Z

.field private mScreenOffTimeOut:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/AutoLockManager;->mContext:Ljava/lang/ref/WeakReference;

    const-string v1, "camera.debug.hibernation_timeout_seconds"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "camera_always_keep_screen_on"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    if-lez v1, :cond_0

    const-wide/16 v2, 0x3e8

    int-to-long v0, v1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/android/camera/AutoLockManager;->MILLIS_IN_MINUTE:J

    invoke-static {}, Lcom/mi/config/Device;->getHibernationTimeout()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    :goto_0
    sget-object v0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHibernationTimeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenOffTimeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/camera/AutoLockManager;->updateScreenOffTimeout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AutoLockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->lockScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/AutoLockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->hibernate()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;
    .locals 2

    sget-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoLockManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/AutoLockManager;

    invoke-direct {v0, p0}, Lcom/android/camera/AutoLockManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private hibernate()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onHibernate()V

    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "my_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/camera/AutoLockManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/camera/AutoLockManager$1;-><init>(Lcom/android/camera/AutoLockManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private lockScreen()V
    .locals 1

    iget-boolean p0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-nez p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/AutoLockManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private updateScreenOffTimeout(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_off_timeout"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelHibernate()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public hibernateDelayed()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->initHandler()V

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isRecording()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isStreaming()Z

    move-result v0

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget-object p0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    const-string v0, "send MSG_HIBERNATE"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecording = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStreaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public lockScreenDelayed()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->initHandler()V

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockScreenDelayed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/AutoLockManager;->updateScreenOffTimeout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    return-void
.end method

.method public removeMessage()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object p0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    const-string v0, "removeMessage"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
