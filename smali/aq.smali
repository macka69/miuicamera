.class public final Laq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lar;


# instance fields
.field public final a:Las;

.field public b:Lcom/google/lens/sdk/PendingIntentConsumer;

.field private final c:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Laq;->c:Ljava/util/Queue;

    new-instance v0, Lba;

    invoke-direct {v0, p1, p0, p2}, Lba;-><init>(Landroid/content/Context;Lar;Lal;)V

    iput-object v0, p0, Laq;->a:Las;

    return-void
.end method

.method private final h()Z
    .locals 2

    invoke-virtual {p0}, Laq;->c()Lz;

    move-result-object v0

    iget v1, v0, Lz;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object p0, p0, Laq;->a:Las;

    invoke-interface {p0}, Las;->b()I

    move-result p0

    iget v0, v0, Lz;->c:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-static {}, Leb;->c()V

    iget-object p0, p0, Laq;->a:Las;

    check-cast p0, Lba;

    invoke-virtual {p0}, Lba;->j()V

    return-void
.end method

.method public final a(Lap;)V
    .locals 2

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laq;->a:Las;

    check-cast v0, Lba;

    invoke-virtual {v0}, Lba;->i()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lba;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lba;->j()V

    :cond_1
    iget-object p0, p0, Laq;->c:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Laq;->a:Las;

    invoke-interface {p0}, Las;->e()I

    move-result p0

    invoke-interface {p1, p0}, Lap;->a(I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 5

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lo;->c:Lo;

    invoke-virtual {v0}, Lde;->e()Lda;

    move-result-object v0

    check-cast v0, Ln;

    sget v2, Lm;->aU:I

    iget-boolean v3, v0, Lda;->c:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v1, v0, Lda;->c:Z

    :goto_0
    iget-object v3, v0, Lda;->b:Lde;

    check-cast v3, Lo;

    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_1

    iput v4, v3, Lo;->b:I

    iget v2, v3, Lo;->a:I

    const/4 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v3, Lo;->a:I

    invoke-virtual {v0}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lo;

    new-instance v2, Lk;

    invoke-direct {v2, p1}, Lk;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p0, p0, Laq;->a:Las;

    invoke-virtual {v0}, Lbu;->m()[B

    move-result-object p1

    invoke-interface {p0, p1, v2}, Las;->b([BLk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    const-string p1, "LensServiceBridge"

    const-string v0, "Failed to inject image."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    return v1
.end method

.method public final b()V
    .locals 10

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    invoke-static {}, Leb;->c()V

    move-object v1, v0

    check-cast v1, Lba;

    invoke-virtual {v1}, Lba;->g()Z

    move-result v2

    const-string v3, "LensServiceConnImpl"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lo;->c:Lo;

    invoke-virtual {v2}, Lde;->e()Lda;

    move-result-object v2

    check-cast v2, Ln;

    sget v6, Lm;->cH:I

    iget-boolean v7, v2, Lda;->c:Z

    const/4 v8, 0x0

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lda;->b()V

    iput-boolean v8, v2, Lda;->c:Z

    :goto_0
    iget-object v7, v2, Lda;->b:Lde;

    check-cast v7, Lo;

    add-int/lit8 v9, v6, -0x1

    if-eqz v6, :cond_1

    iput v9, v7, Lo;->b:I

    iget v6, v7, Lo;->a:I

    or-int/2addr v6, v4

    iput v6, v7, Lo;->a:I

    invoke-virtual {v2}, Lda;->f()Lde;

    move-result-object v2

    check-cast v2, Lo;

    :try_start_0
    move-object v6, v0

    check-cast v6, Lba;

    iget-object v6, v6, Lba;->g:Lg;

    invoke-static {v6}, Leb;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lbu;->m()[B

    move-result-object v2

    invoke-interface {v6, v2}, Lg;->a([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v6, "Unable to end Lens service session."

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iput-object v5, v1, Lba;->g:Lg;

    iput v8, v1, Lba;->c:I

    iput-object v5, v1, Lba;->d:Lz;

    iput-object v5, v1, Lba;->e:Lx;

    sget v2, Lbh;->a:I

    goto :goto_2

    :cond_1
    throw v5

    :cond_2
    :goto_2
    invoke-virtual {v1}, Lba;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    move-object v2, v0

    check-cast v2, Lba;

    iget-object v2, v2, Lba;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string v0, "Unable to unbind, service is not registered."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput-object v5, v1, Lba;->f:Le;

    :cond_3
    sget v0, Lbh;->a:I

    iput v0, v1, Lba;->h:I

    invoke-virtual {v1, v4}, Lba;->a(I)V

    iput-object v5, p0, Laq;->b:Lcom/google/lens/sdk/PendingIntentConsumer;

    return-void
.end method

.method public final c()Lz;
    .locals 2

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const-string v1, "getServerFlags() called before ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lz;->f:Lz;

    return-object p0

    :cond_0
    iget-object p0, p0, Laq;->a:Las;

    invoke-static {}, Leb;->c()V

    check-cast p0, Lba;

    invoke-virtual {p0}, Lba;->g()Z

    move-result v0

    const-string v1, "Attempted to use ServerFlags before ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget-object p0, p0, Lba;->d:Lz;

    return-object p0
.end method

.method public final d()Lx;
    .locals 2

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->c()Z

    move-result v0

    const-string v1, "getLensCapabilities() called when Lens is not ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lx;->b:Lx;

    return-object p0

    :cond_0
    iget-object p0, p0, Laq;->a:Las;

    invoke-static {}, Leb;->c()V

    check-cast p0, Lba;

    invoke-virtual {p0}, Lba;->g()Z

    move-result v0

    const-string v1, "Attempted to use LensCapabilities before ready."

    invoke-static {v0, v1}, Leb;->a(ZLjava/lang/String;)V

    iget-object p0, p0, Lba;->e:Lx;

    return-object p0
.end method

.method public final e()V
    .locals 2

    :goto_0
    iget-object v0, p0, Laq;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laq;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap;

    iget-object v1, p0, Laq;->a:Las;

    invoke-interface {v1}, Las;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lap;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()I
    .locals 2

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Laq;->a:Las;

    invoke-interface {p0}, Las;->e()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Laq;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laq;->c()Lz;

    move-result-object v0

    iget v1, v0, Lz;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    iget-object p0, p0, Laq;->a:Las;

    invoke-interface {p0}, Las;->b()I

    move-result p0

    iget v0, v0, Lz;->e:I

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lbh;->b:I

    return p0

    :cond_2
    :goto_0
    sget p0, Lbh;->l:I

    return p0
.end method

.method public final g()I
    .locals 1

    invoke-static {}, Leb;->c()V

    iget-object v0, p0, Laq;->a:Las;

    invoke-interface {v0}, Las;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Laq;->a:Las;

    invoke-interface {p0}, Las;->e()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Laq;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lbh;->b:I

    return p0

    :cond_1
    sget p0, Lbh;->l:I

    return p0
.end method
