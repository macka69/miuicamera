.class Lcom/xiaomi/onetrack/h/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/h/a/a/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/h/a/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/m;->a:Lcom/xiaomi/onetrack/h/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/h/a/a/m;->a:Lcom/xiaomi/onetrack/h/a/a/l;

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/a/a/l;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, v0, v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusDeviceIDHelper"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/a/a/m;->a:Lcom/xiaomi/onetrack/h/a/a/l;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/l;->a:Lcom/xiaomi/onetrack/h/a/b/d;

    return-void
.end method
