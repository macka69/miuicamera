.class public Lcom/xiaomi/onetrack/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackImp"

.field private static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/onetrack/a/d;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/onetrack/a/e;

.field private f:Lcom/xiaomi/onetrack/Configuration;

.field private g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

.field private h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

.field private i:Lcom/xiaomi/onetrack/h/w;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/onetrack/a/w;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/w;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "OneTrackImp init : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackImp"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "last_ver_name"

    invoke-virtual {p0, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "last_ver_code"

    invoke-virtual {p0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/m;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/l;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/onetrack/h/q;->a()V

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/h/r;->a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    new-instance v0, Lcom/xiaomi/onetrack/h/w;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/h/w;-><init>(Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->i:Lcom/xiaomi/onetrack/h/w;

    invoke-static {}, Lcom/xiaomi/onetrack/h/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/h/p;->a()Lcom/xiaomi/onetrack/h/p;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/xiaomi/onetrack/a/ah;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->i:Lcom/xiaomi/onetrack/h/w;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/onetrack/a/ah;-><init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/h/w;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/h/p;->a()Lcom/xiaomi/onetrack/h/p;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/xiaomi/onetrack/a/af;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/f;->i:Lcom/xiaomi/onetrack/h/w;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaomi/onetrack/a/af;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/h/w;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/r;->a(Z)V

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->start(Landroid/content/Context;Lcom/xiaomi/onetrack/a/f;)V

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->isSupport()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/onetrack/a/e;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/a/e;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/f;->e:Lcom/xiaomi/onetrack/a/e;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/e;->a()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/f;->d(Landroid/content/Context;)V

    sget-object p1, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/xiaomi/onetrack/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/g;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->k()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/xiaomi/onetrack/a/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/j;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/n;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/n;-><init>(Lcom/xiaomi/onetrack/a/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/r;->z()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/s;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneTrackImp"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    xor-int/2addr p0, v0

    return p0
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/h/w;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->i:Lcom/xiaomi/onetrack/h/w;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    invoke-interface {v1, p1}, Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/h/s;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {p0}, Lcom/xiaomi/onetrack/h/s;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/h/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/h/s;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommonProperty: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/k;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    return-object p0
.end method

.method private e()Z
    .locals 2

    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isServiceOnline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->f()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->d()V

    return-void
.end method

.method private f()Z
    .locals 2

    :try_start_0
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.miui.analytics"

    const-string v1, "com.miui.analytics.onetrack.OneTrackService"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic g(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/f;->j()V

    return-void
.end method

.method private static g()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.onetrack.OneTrackService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceOnline: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTrackImp"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static h()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.miui.analytics"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x7867b6b4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "OneTrackImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system analytics version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private i()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/u;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/u;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/v;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/v;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()I

    move-result v0

    int-to-long v4, v0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcom/xiaomi/onetrack/a/f;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/onetrack/h/ab;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/ab;->j(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "last_ver_code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "last_ver_name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/ab;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()J

    move-result-wide v8

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v10, p0, Lcom/xiaomi/onetrack/a/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object v11, p0, Lcom/xiaomi/onetrack/a/f;->i:Lcom/xiaomi/onetrack/h/w;

    move-wide v1, v6

    move-wide v6, v8

    move-object v8, v0

    move-object v9, v10

    move-object v10, v11

    invoke-static/range {v1 .. v10}, Lcom/xiaomi/onetrack/a/c;->a(JLjava/lang/String;JJLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/h/w;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->b:Lcom/xiaomi/onetrack/a/d;

    const-string v1, "onetrack_upgrade"

    invoke-interface {p0, v1, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackUpgradeEvent error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/onetrack/h/x;->a()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/h;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string p1, "Can\'t call this method on main thread"

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/p;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/a/p;-><init>(Lcom/xiaomi/onetrack/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->g:Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/f;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/f;->i:Lcom/xiaomi/onetrack/h/w;

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/h/w;->a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/t;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/t;-><init>(Lcom/xiaomi/onetrack/a/f;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/q;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/q;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaomi/onetrack/a/ad;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/onetrack/a/ad;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/h;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/ac;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/a/ac;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/z;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/xiaomi/onetrack/a/aa;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/onetrack/a/aa;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/r;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/xiaomi/onetrack/a/r;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/y;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/a/y;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/ab;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/ab;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/i;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/onetrack/a/i;-><init>(Lcom/xiaomi/onetrack/a/f;ZLjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/xiaomi/onetrack/h/q;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/onetrack/h/x;->a()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/h/p;->a()Lcom/xiaomi/onetrack/h/p;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/h/p;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/onetrack/OnMainThreadException;

    const-string v0, "Can\'t call this method on main thread"

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/OnMainThreadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/s;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/s;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/ae;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/ae;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/f;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/x;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/x;-><init>(Lcom/xiaomi/onetrack/a/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/a/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/onetrack/a/o;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/onetrack/a/o;-><init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
