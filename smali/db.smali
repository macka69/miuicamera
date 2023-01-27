.class public Ldb;
.super Lda;
.source "PG"

# interfaces
.implements Lei;


# direct methods
.method protected constructor <init>(Ldc;)V
    .locals 0

    invoke-direct {p0, p1}, Lda;-><init>(Lde;)V

    return-void
.end method


# virtual methods
.method public final a(Lcq;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lde;->b(Lcq;)Lcq;

    move-result-object p1

    iget-object v0, p1, Lcq;->a:Leh;

    iget-object v1, p0, Lda;->a:Lde;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lda;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lda;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lda;->c:Z

    :goto_0
    iget-object v0, p0, Lda;->b:Lde;

    check-cast v0, Ldc;

    iget-object v0, v0, Ldc;->d:Lcu;

    iget-boolean v1, v0, Lcu;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcu;->c()Lcu;

    move-result-object v0

    iget-object p0, p0, Lda;->b:Lde;

    check-cast p0, Ldc;

    iput-object v0, p0, Ldc;->d:Lcu;

    :cond_1
    iget-object p0, p1, Lcq;->d:Ldd;

    invoke-virtual {p1, p2}, Lcq;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcu;->a(Ldd;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 1

    invoke-super {p0}, Lda;->b()V

    iget-object p0, p0, Lda;->b:Lde;

    check-cast p0, Ldc;

    iget-object v0, p0, Ldc;->d:Lcu;

    invoke-virtual {v0}, Lcu;->c()Lcu;

    move-result-object v0

    iput-object v0, p0, Ldc;->d:Lcu;

    return-void
.end method

.method public final bridge synthetic e()Lde;
    .locals 0

    invoke-virtual {p0}, Ldb;->j()Ldc;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic g()Leh;
    .locals 0

    invoke-virtual {p0}, Ldb;->j()Ldc;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ldc;
    .locals 1

    iget-boolean v0, p0, Lda;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lda;->b:Lde;

    check-cast v0, Ldc;

    iget-object v0, v0, Ldc;->d:Lcu;

    invoke-virtual {v0}, Lcu;->b()V

    invoke-super {p0}, Lda;->e()Lde;

    move-result-object p0

    check-cast p0, Ldc;

    return-object p0

    :cond_0
    iget-object p0, p0, Lda;->b:Lde;

    check-cast p0, Ldc;

    return-object p0
.end method
