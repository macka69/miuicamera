.class public Lcom/xiaomi/onetrack/h/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static volatile b:Lcom/xiaomi/onetrack/h/a/a;


# instance fields
.field private volatile c:Z

.field private volatile d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/h/a/a;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/h/a/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/onetrack/h/a/a;->b:Lcom/xiaomi/onetrack/h/a/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/onetrack/h/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/h/a/a;->b:Lcom/xiaomi/onetrack/h/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/onetrack/h/a/a;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/h/a/a;->b:Lcom/xiaomi/onetrack/h/a/a;

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
    sget-object v0, Lcom/xiaomi/onetrack/h/a/a;->b:Lcom/xiaomi/onetrack/h/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/x;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean p0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/xiaomi/onetrack/h/a/a;->a:Ljava/lang/String;

    const-string p1, "getOaid() throw exception : Don\'t use it on the main thread"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    monitor-exit v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t use it on the main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_2
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/h/a/a;->c:Z

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/xiaomi/onetrack/h/r;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_4
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/j;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/j;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-object v1, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_5
    new-instance v1, Lcom/xiaomi/onetrack/h/a/a/c;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/h/a/a/c;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/h/a/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object p1, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/h/a/a;->c:Z

    iget-object p0, p0, Lcom/xiaomi/onetrack/h/a/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
