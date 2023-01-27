.class public final Lba;
.super Lh;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Las;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/content/Context;

.field public c:I

.field public d:Lz;

.field public e:Lx;

.field public f:Le;

.field public g:Lg;

.field public h:I

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Lar;

.field private final k:Lal;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lar;Lal;)V
    .locals 4

    sget-object v0, Lat;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0}, Lh;-><init>()V

    new-instance v1, Laz;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Laz;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lba;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    iput v1, p0, Lba;->l:I

    sget v1, Lbh;->a:I

    iput v1, p0, Lba;->h:I

    iput-object p1, p0, Lba;->b:Landroid/content/Context;

    iput-object p2, p0, Lba;->j:Lar;

    iput-object p3, p0, Lba;->k:Lal;

    iput-object v0, p0, Lba;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Leb;->c()V

    invoke-virtual {p0}, Lba;->c()Z

    move-result v0

    const-string v1, "Attempted to handover when not ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    sget-object v0, Lo;->c:Lo;

    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Ln;

    sget v1, Lm;->al:I

    iget-boolean v2, v0, Lda;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v3, v0, Lda;->c:Z

    :goto_0
    iget-object v2, v0, Lda;->b:Lde;

    check-cast v2, Lo;

    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_2

    iput v4, v2, Lo;->b:I

    iget v1, v2, Lo;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lo;->a:I

    sget-object v1, Lab;->a:Lcq;

    sget-object v2, Lad;->a:Lad;

    invoke-virtual {v2}, Lde;->e()Lda;

    move-result-object v2

    check-cast v2, Lac;

    iget-boolean v4, v2, Lda;->c:Z

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lda;->b()V

    iput-boolean v3, v2, Lda;->c:Z

    :goto_1
    iget-object v3, v2, Lda;->b:Lde;

    check-cast v3, Lad;

    invoke-static {v3}, Lad;->a(Lad;)V

    invoke-virtual {v2}, Lda;->f()Lde;

    move-result-object v2

    check-cast v2, Lad;

    invoke-virtual {v0, v1, v2}, Ldb;->a(Lcq;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lo;

    :try_start_0
    iget-object v1, p0, Lba;->g:Lg;

    invoke-static {v1}, Leb;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbu;->m()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lg;->a([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "LensServiceConnImpl"

    const-string v2, "Unable to stop Lens service session."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    sget v0, Lbh;->k:I

    iput v0, p0, Lba;->h:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lba;->a(I)V

    return-void

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public final a(I)V
    .locals 3

    invoke-static {}, Leb;->c()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lba;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Transitioning from state %s to %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget v0, p0, Lba;->l:I

    iput p1, p0, Lba;->l:I

    invoke-static {p1}, Lba;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lba;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lba;->j:Lar;

    invoke-static {}, Leb;->c()V

    check-cast v1, Laq;

    invoke-virtual {v1}, Laq;->e()V

    :cond_0
    invoke-static {p1}, Lba;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lba;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lba;->j:Lar;

    invoke-static {}, Leb;->c()V

    check-cast p0, Laq;

    invoke-virtual {p0}, Laq;->e()V

    :cond_1
    return-void
.end method

.method public final a(Lg;)V
    .locals 7

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Lba;->f:Le;

    const-string v1, "LensServiceConnImpl"

    if-nez v0, :cond_0

    const-string p1, "The service is no longer bound."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lba;->f()V

    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, Lba;->g:Lg;

    if-nez p1, :cond_1

    const-string p1, "Failed to create a Lens service session."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lbh;->j:I

    iput p1, p0, Lba;->h:I

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lba;->a(I)V

    return-void

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lba;->a(I)V

    sget-object p1, Lo;->c:Lo;

    invoke-virtual {p1}, Lde;->e()Lda;

    move-result-object p1

    check-cast p1, Ln;

    sget v0, Lm;->ak:I

    iget-boolean v2, p1, Lda;->c:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lda;->b()V

    iput-boolean v3, p1, Lda;->c:Z

    :goto_0
    iget-object v2, p1, Lda;->b:Lde;

    check-cast v2, Lo;

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    iput v4, v2, Lo;->b:I

    iget v0, v2, Lo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lo;->a:I

    invoke-virtual {p1}, Lda;->f()Lde;

    move-result-object p1

    check-cast p1, Lo;

    sget-object v0, Lo;->c:Lo;

    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Ln;

    sget v2, Lm;->cJ:I

    iget-boolean v4, v0, Lda;->c:Z

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v3, v0, Lda;->c:Z

    :goto_1
    iget-object v4, v0, Lda;->b:Lde;

    check-cast v4, Lo;

    add-int/lit8 v6, v2, -0x1

    if-eqz v2, :cond_5

    iput v6, v4, Lo;->b:I

    iget v2, v4, Lo;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v4, Lo;->a:I

    sget-object v2, Lp;->a:Lcq;

    sget-object v4, Lr;->a:Lr;

    invoke-virtual {v4}, Lde;->e()Lda;

    move-result-object v4

    check-cast v4, Lq;

    iget-boolean v5, v4, Lda;->c:Z

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lda;->b()V

    iput-boolean v3, v4, Lda;->c:Z

    :goto_2
    iget-object v3, v4, Lda;->b:Lde;

    check-cast v3, Lr;

    invoke-static {v3}, Lr;->a(Lr;)V

    invoke-virtual {v4}, Lda;->f()Lde;

    move-result-object v3

    check-cast v3, Lr;

    invoke-virtual {v0, v2, v3}, Ldb;->a(Lcq;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v2, p0, Lba;->g:Lg;

    invoke-static {v2}, Leb;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lbu;->m()[B

    move-result-object p1

    invoke-interface {v2, p1}, Lg;->a([B)V

    iget-object p1, p0, Lba;->g:Lg;

    invoke-static {p1}, Leb;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbu;->m()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lg;->a([B)V

    return-void

    :cond_5
    throw v5

    :cond_6
    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to call client event callbacks."

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lba;->f()V

    return-void
.end method

.method public final a([BLk;)V
    .locals 2

    iget-object v0, p0, Lba;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Law;

    invoke-direct {v1, p0, p1, p2}, Law;-><init>(Lba;[BLk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Leb;->c()V

    invoke-virtual {p0}, Lba;->g()Z

    move-result v0

    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget p0, p0, Lba;->c:I

    return p0
.end method

.method public final b([BLk;)V
    .locals 2

    invoke-static {}, Leb;->c()V

    invoke-virtual {p0}, Lba;->c()Z

    move-result v0

    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget-object p0, p0, Lba;->g:Lg;

    invoke-static {p0}, Leb;->a(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Lg;->a([BLk;)V

    return-void
.end method

.method final synthetic c([BLk;)V
    .locals 4

    const-class v0, Lcs;

    iget v1, p0, Lba;->l:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq v1, v2, :cond_1

    const-string p0, "LensServiceConnImpl"

    const-string p1, "ServiceEvent received after connection disposed."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcs;->a:Lcs;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcs;->a:Lcs;

    if-nez v1, :cond_3

    invoke-static {v0}, Lcy;->a(Ljava/lang/Class;)Lcs;

    move-result-object v1

    sput-object v1, Lcs;->a:Lcs;

    monitor-exit v0

    goto :goto_1

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    sget-object v0, Lah;->b:Lah;

    invoke-static {v0, p1, v1}, Lde;->a(Lde;[BLcs;)Lde;

    move-result-object p1

    check-cast p1, Lah;

    iget v0, p1, Lah;->a:I

    invoke-static {v0}, Laf;->a(I)I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    sget v0, Laf;->a:I

    :goto_2
    sget v1, Laf;->bn:I

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lba;->j:Lar;

    iget p1, p1, Lah;->a:I

    invoke-static {p1}, Laf;->a(I)I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    sget p1, Laf;->a:I

    :goto_3
    sget v1, Laf;->bD:I

    if-ne p1, v1, :cond_7

    iget-object p1, p2, Lk;->a:Landroid/os/Parcelable;

    instance-of p2, p1, Landroid/app/PendingIntent;

    if-eqz p2, :cond_7

    check-cast p1, Landroid/app/PendingIntent;

    move-object p2, v0

    check-cast p2, Laq;

    iget-object p2, p2, Laq;->a:Las;

    invoke-interface {p2}, Las;->a()V

    check-cast v0, Laq;

    iget-object p2, v0, Laq;->b:Lcom/google/lens/sdk/PendingIntentConsumer;

    if-nez p2, :cond_6

    const-string p1, "LensServiceBridge"

    const-string p2, "PendingIntentConsumer cannot be null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-interface {p2, p1}, Lcom/google/lens/sdk/PendingIntentConsumer;->onReceivedPendingIntent(Landroid/app/PendingIntent;)V

    :cond_7
    return-void

    :cond_8
    sget-object p2, Ls;->a:Lcq;

    invoke-static {p2}, Lde;->b(Lcq;)Lcq;

    move-result-object p2

    invoke-virtual {p1, p2}, Ldc;->a(Lcq;)V

    iget-object p1, p1, Ldc;->d:Lcu;

    iget-object v0, p2, Lcq;->d:Ldd;

    invoke-virtual {p1, v0}, Lcu;->a(Ldd;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    iget-object p1, p2, Lcq;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_9
    invoke-virtual {p2, p1}, Lcq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    check-cast p1, Laa;

    iget p2, p1, Laa;->a:I

    iput p2, p0, Lba;->c:I

    iget-object p2, p1, Laa;->b:Lz;

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    sget-object p2, Lz;->f:Lz;

    :goto_5
    iput-object p2, p0, Lba;->d:Lz;

    iget-object p1, p1, Laa;->c:Lx;

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    sget-object p1, Lx;->b:Lx;

    :goto_6
    iput-object p1, p0, Lba;->e:Lx;

    sget p1, Lbh;->a:I

    sget p1, Lbh;->b:I

    iput p1, p0, Lba;->h:I

    invoke-virtual {p0, v2}, Lba;->a(I)V
    :try_end_1
    .catch Ldl; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "LensServiceConnImpl"

    const-string v0, "Unable to parse the protobuf."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget p1, Lbh;->j:I

    iput p1, p0, Lba;->h:I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lba;->a(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final c()Z
    .locals 0

    invoke-static {}, Leb;->c()V

    iget p0, p0, Lba;->l:I

    invoke-static {p0}, Lba;->b(I)Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    invoke-static {}, Leb;->c()V

    iget p0, p0, Lba;->l:I

    invoke-static {p0}, Lba;->c(I)Z

    move-result p0

    return p0
.end method

.method public final e()I
    .locals 2

    invoke-static {}, Leb;->c()V

    invoke-virtual {p0}, Lba;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lba;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v0, "Attempted to use ServerFlags before ready or dead."

    invoke-static {v1, v0}, Leb;->a(ZLjava/lang/String;)V

    iget p0, p0, Lba;->h:I

    return p0
.end method

.method public final f()V
    .locals 1

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Lba;->g:Lg;

    if-nez v0, :cond_0

    sget v0, Lbh;->j:I

    iput v0, p0, Lba;->h:I

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lba;->a(I)V

    return-void

    :cond_0
    sget v0, Lbh;->j:I

    iput v0, p0, Lba;->h:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lba;->a(I)V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget p0, p0, Lba;->l:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h()Z
    .locals 1

    iget p0, p0, Lba;->l:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final i()Z
    .locals 1

    iget p0, p0, Lba;->l:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Leb;->c()V

    invoke-virtual {p0}, Lba;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lba;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lba;->a(I)V

    iget-object v0, p0, Lba;->k:Lal;

    new-instance v1, Lau;

    invoke-direct {v1, p0}, Lau;-><init>(Lba;)V

    invoke-virtual {v0, v1}, Lal;->a(Lai;)V

    :cond_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Leb;->c()V

    if-eqz p2, :cond_1

    const-string p1, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v0, p1, Le;

    if-eqz v0, :cond_0

    check-cast p1, Le;

    goto :goto_0

    :cond_0
    new-instance p1, Ld;

    invoke-direct {p1, p2}, Ld;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lba;->f:Le;

    iget-object p2, p0, Lba;->i:Ljava/util/concurrent/Executor;

    new-instance v0, Lav;

    invoke-direct {v0, p0, p1}, Lav;-><init>(Lba;Le;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {}, Leb;->c()V

    sget p1, Lbh;->j:I

    iput p1, p0, Lba;->h:I

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lba;->a(I)V

    return-void
.end method
