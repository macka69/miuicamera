.class public Lcom/xiaomi/onetrack/a/aj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/aj$c;,
        Lcom/xiaomi/onetrack/a/aj$b;,
        Lcom/xiaomi/onetrack/a/aj$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.miui.analytics"

.field public static final b:Ljava/lang/String; = "com.miui.analytics.onetrack.OneTrackService"

.field private static final c:Ljava/lang/String; = "ServiceConnectManager"

.field private static final j:I = 0x1


# instance fields
.field private d:Lcom/miui/analytics/ITrack;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:Landroid/content/Context;

.field private k:Lcom/xiaomi/onetrack/a/aj$c;

.field private l:Landroid/content/ServiceConnection;

.field private m:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/onetrack/a/aj$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->g:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/xiaomi/onetrack/a/aj;->h:Z

    new-instance v0, Lcom/xiaomi/onetrack/a/ak;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/ak;-><init>(Lcom/xiaomi/onetrack/a/aj;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->l:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->i:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/onetrack/a/aj$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/a/aj$c;-><init>(Lcom/xiaomi/onetrack/a/aj;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->k:Lcom/xiaomi/onetrack/a/aj$c;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/aj;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/a/aj;->h:Z

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/aj;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/a/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/aj;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/aj;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/aj;->d:Lcom/miui/analytics/ITrack;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/onetrack/a/aj;
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/a/aj$a;->a()Lcom/xiaomi/onetrack/a/aj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/aj;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->d:Lcom/miui/analytics/ITrack;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/aj;->c()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureService mConnecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsBindSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAnalytics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->d:Lcom/miui/analytics/ITrack;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ServiceConnectManager"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/a/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c()V
    .locals 5

    const-string v0, "ServiceConnectManager"

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/a/aj;->h:Z

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.onetrack.OneTrackService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/aj;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/aj;->l:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService:  mConnecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    const-string v0, "ServiceConnectManager"

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/a/aj;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aj;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/aj;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindService  mIsBindSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/xiaomi/onetrack/a/aj;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/aj;->f()V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/onetrack/a/aj;)Lcom/miui/analytics/ITrack;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->d:Lcom/miui/analytics/ITrack;

    return-object p0
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.miui.analytics"

    const-string v3, "com.miui.analytics.onetrack.OneTrackService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/aj;->i:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/aj;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceOnline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ServiceConnectManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private f()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/onetrack/a/aj$b;

    invoke-interface {v0}, Lcom/xiaomi/onetrack/a/aj$b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/xiaomi/onetrack/a/aj;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/aj;->d()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->k:Lcom/xiaomi/onetrack/a/aj$c;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/aj;->k:Lcom/xiaomi/onetrack/a/aj$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->k:Lcom/xiaomi/onetrack/a/aj$c;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/a/aj$b;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/aj;->b()V

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aj;->d:Lcom/miui/analytics/ITrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aj;->d:Lcom/miui/analytics/ITrack;

    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p3, v3, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/aj;->d()V

    iget-object p2, p0, Lcom/xiaomi/onetrack/a/aj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/xiaomi/onetrack/a/aj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/aj;->d:Lcom/miui/analytics/ITrack;

    const-string p0, "ServiceConnectManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "track: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aj;->g:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/aj;->d:Lcom/miui/analytics/ITrack;

    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p3, v1, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackCacheData error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceConnectManager"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
