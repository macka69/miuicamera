.class public Lcom/xiaomi/onetrack/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DbExecutor"

.field private static b:Ljava/lang/String; = "onetrack_db"

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    sget-object v0, Lcom/xiaomi/onetrack/c/a;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/onetrack/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/c/a;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/xiaomi/onetrack/c/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/onetrack/c/a;->c:Landroid/os/Handler;

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
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/c/a;->a()V

    sget-object v0, Lcom/xiaomi/onetrack/c/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
