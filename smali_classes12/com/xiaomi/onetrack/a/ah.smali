.class public Lcom/xiaomi/onetrack/a/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/a/aj$b;
.implements Lcom/xiaomi/onetrack/a/d;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackSystemImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x2


# instance fields
.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/xiaomi/onetrack/Configuration;

.field private f:Lcom/xiaomi/onetrack/a/aj;

.field private g:Lcom/xiaomi/onetrack/h/w;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/h/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/a/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/ah;->g:Lcom/xiaomi/onetrack/h/w;

    invoke-static {}, Lcom/xiaomi/onetrack/a/aj;->a()Lcom/xiaomi/onetrack/a/aj;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ah;->f:Lcom/xiaomi/onetrack/a/aj;

    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/a/aj;->a(Lcom/xiaomi/onetrack/a/aj$b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/ah;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/a/ah;)Lcom/xiaomi/onetrack/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    return-object p0
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/a/ai;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/ai;-><init>(Lcom/xiaomi/onetrack/a/ah;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "onetrack_bug_report"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_2

    const-string p0, "OneTrackSystemImp"

    const-string p1, "Event size exceed limitation!"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    return p0
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/a/ah;)Lcom/xiaomi/onetrack/a/aj;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ah;->f:Lcom/xiaomi/onetrack/a/aj;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/a/ah;->b()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ah;->f:Lcom/xiaomi/onetrack/a/aj;

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/aj;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ah;->g:Lcom/xiaomi/onetrack/h/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/h/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "OneTrackSystemImp"

    const-string p1, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/ah;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onetrack_cta_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/g;->a(Lcom/xiaomi/onetrack/a/d;)V

    :cond_3
    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackSystemImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ah;->f:Lcom/xiaomi/onetrack/a/aj;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1, p1, p2, v2}, Lcom/xiaomi/onetrack/a/aj;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "OneTrackSystemImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track mIOneTrackService is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
