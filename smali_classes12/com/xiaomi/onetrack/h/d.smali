.class public Lcom/xiaomi/onetrack/h/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static final b:Ljava/lang/String; = "com.xiaomi.onetrack.DEBUG"

.field private static final c:Ljava/lang/String; = "com.xiaomi.onetrack.permissions.DEBUG_MODE"

.field private static final d:Ljava/lang/String; = "/api/open/device/writeBack"

.field private static final e:Ljava/lang/String; = "http://"

.field private static volatile f:Lcom/xiaomi/onetrack/h/d; = null

.field private static final g:I = 0x64


# instance fields
.field private final h:Landroid/content/Context;

.field private i:Landroid/os/Handler;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/onetrack/h/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/h/e;-><init>(Lcom/xiaomi/onetrack/h/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/h/d;->i:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/onetrack/h/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/h/f;-><init>(Lcom/xiaomi/onetrack/h/d;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/h/d;->j:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/h/d;->h:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/h/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/h/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/d;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/h/d;
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/h/d;->f:Lcom/xiaomi/onetrack/h/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/onetrack/h/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/h/d;->f:Lcom/xiaomi/onetrack/h/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/onetrack/h/d;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/d;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/h/d;->f:Lcom/xiaomi/onetrack/h/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/h/d;->f:Lcom/xiaomi/onetrack/h/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.onetrack.DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/d;->j:Landroid/content/BroadcastReceiver;

    const-string v1, "com.xiaomi.onetrack.permissions.DEBUG_MODE"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/xiaomi/onetrack/h/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerDebugModeReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/h/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/h/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/h/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/onetrack/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x64

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "hint"

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/d;->i:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/xiaomi/onetrack/h/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/h/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/h/g;-><init>(Lcom/xiaomi/onetrack/h/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/h/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/d;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/h/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/h/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/h/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/d;->h:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
