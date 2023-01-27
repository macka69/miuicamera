.class public Ldq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected volatile a:Leh;

.field public volatile b:Lck;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcs;->a()Lcs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lck;
    .locals 1

    iget-object v0, p0, Ldq;->b:Lck;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldq;->b:Lck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldq;->b:Lck;

    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldq;->a:Leh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldq;->a:Leh;

    invoke-interface {v0}, Leh;->a()Lck;

    move-result-object v0

    iput-object v0, p0, Ldq;->b:Lck;

    goto :goto_0

    :cond_1
    sget-object v0, Lck;->b:Lck;

    iput-object v0, p0, Ldq;->b:Lck;

    :goto_0
    iget-object v0, p0, Ldq;->b:Lck;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object p0, p0, Ldq;->b:Lck;

    return-object p0
.end method

.method public final a(Leh;)Leh;
    .locals 1

    iget-object v0, p0, Ldq;->a:Leh;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldq;->a:Leh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iput-object p1, p0, Ldq;->a:Leh;

    sget-object v0, Lck;->b:Lck;

    iput-object v0, p0, Ldq;->b:Lck;
    :try_end_1
    .catch Ldl; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Ldq;->a:Leh;

    sget-object p1, Lck;->b:Lck;

    iput-object p1, p0, Ldq;->b:Lck;

    :goto_0
    monitor-exit p0

    goto :goto_1

    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p0, p0, Ldq;->a:Leh;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_6

    instance-of v0, p1, Ldq;

    if-eqz v0, :cond_5

    check-cast p1, Ldq;

    iget-object v0, p0, Ldq;->a:Leh;

    iget-object v1, p1, Ldq;->a:Leh;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldq;->a()Lck;

    move-result-object p0

    invoke-virtual {p1}, Ldq;->a()Lck;

    move-result-object p1

    invoke-virtual {p0, p1}, Lck;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    invoke-interface {v1}, Lei;->i()Leh;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldq;->a(Leh;)Leh;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    invoke-interface {v0}, Lei;->i()Leh;

    move-result-object p0

    invoke-virtual {p1, p0}, Ldq;->a(Leh;)Leh;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
