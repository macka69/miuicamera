.class final Lel;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Les;


# instance fields
.field private final a:Leh;

.field private final b:Lfh;

.field private final c:Z

.field private final d:Lej;


# direct methods
.method private constructor <init>(Lfh;Lej;Leh;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel;->b:Lfh;

    invoke-static {p3}, Lej;->a(Leh;)Z

    move-result p1

    iput-boolean p1, p0, Lel;->c:Z

    iput-object p2, p0, Lel;->d:Lej;

    iput-object p3, p0, Lel;->a:Leh;

    return-void
.end method

.method static a(Lfh;Lej;Leh;)Lel;
    .locals 2

    new-instance v0, Lel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lel;-><init>(Lfh;Lej;Leh;[B)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lel;->b:Lfh;

    invoke-virtual {v0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lel;->c:Z

    if-eqz p0, :cond_0

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p0

    invoke-virtual {p0}, Lcu;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lel;->a:Leh;

    invoke-interface {p0}, Leh;->l()Leg;

    move-result-object p0

    invoke-interface {p0}, Leg;->g()Leh;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lgb;)V
    .locals 5

    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object v0

    invoke-virtual {v0}, Lcu;->d()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd;

    invoke-virtual {v2}, Ldd;->c()Lfz;

    move-result-object v3

    sget-object v4, Lfz;->i:Lfz;

    if-ne v3, v4, :cond_1

    instance-of v3, v1, Ldn;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ldd;->a()I

    move-result v2

    check-cast v1, Ldn;

    iget-object v1, v1, Ldn;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldp;

    invoke-virtual {v1}, Ldq;->a()Lck;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lgb;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ldd;->a()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lgb;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Found invalid MessageSet item."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lel;->b:Lfh;

    invoke-virtual {p0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lfh;->a(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;[BIILby;)V
    .locals 10

    move-object v0, p1

    check-cast v0, Lde;

    iget-object v1, v0, Lde;->h:Lfi;

    sget-object v2, Lfi;->a:Lfi;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lfi;->a()Lfi;

    move-result-object v1

    iput-object v1, v0, Lde;->h:Lfi;

    :cond_0
    check-cast p1, Ldc;

    invoke-virtual {p1}, Ldc;->d()Lcu;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    invoke-static {p2, p3, p5}, Leb;->a([BILby;)I

    move-result v4

    iget p3, p5, Lby;->a:I

    sget v3, Lga;->a:I

    const/4 v5, 0x2

    if-ne p3, v3, :cond_7

    const/4 p3, 0x0

    move-object v3, v0

    :goto_1
    if-ge v4, p4, :cond_5

    invoke-static {p2, v4, p5}, Leb;->a([BILby;)I

    move-result v4

    iget v6, p5, Lby;->a:I

    invoke-static {v6}, Lga;->a(I)I

    move-result v7

    invoke-static {v6}, Lga;->b(I)I

    move-result v8

    if-eq v8, v5, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    sget-object v6, Lep;->a:Lep;

    move-object v7, v2

    check-cast v7, Lcq;

    iget-object v8, v7, Lcq;->c:Leh;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Lep;->a(Ljava/lang/Class;)Les;

    move-result-object v6

    invoke-static {v6, p2, v4, p4, p5}, Leb;->a(Les;[BIILby;)I

    move-result v4

    iget-object v6, v7, Lcq;->d:Ldd;

    iget-object v7, p5, Lby;->c:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcu;->a(Ldd;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-ne v7, v5, :cond_4

    invoke-static {p2, v4, p5}, Leb;->e([BILby;)I

    move-result v4

    iget-object v3, p5, Lby;->c:Ljava/lang/Object;

    check-cast v3, Lck;

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    invoke-static {p2, v4, p5}, Leb;->a([BILby;)I

    move-result v4

    iget p3, p5, Lby;->a:I

    iget-object v2, p5, Lby;->d:Lcs;

    iget-object v6, p0, Lel;->a:Leh;

    invoke-static {v2, v6, p3}, Lej;->a(Lcs;Leh;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_4
    :goto_2
    sget v7, Lga;->b:I

    if-eq v6, v7, :cond_5

    invoke-static {v6, p2, v4, p4, p5}, Leb;->a(I[BIILby;)I

    move-result v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {p3, v5}, Lga;->a(II)I

    move-result p3

    invoke-virtual {v1, p3, v3}, Lfi;->a(ILjava/lang/Object;)V

    :cond_6
    move p3, v4

    goto :goto_0

    :cond_7
    invoke-static {p3}, Lga;->a(I)I

    move-result v3

    if-ne v3, v5, :cond_9

    iget-object v2, p5, Lby;->d:Lcs;

    iget-object v3, p0, Lel;->a:Leh;

    invoke-static {p3}, Lga;->b(I)I

    move-result v5

    invoke-static {v2, v3, v5}, Lej;->a(Lcs;Leh;I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    sget-object p3, Lep;->a:Lep;

    move-object v2, v8

    check-cast v2, Lcq;

    iget-object v3, v2, Lcq;->c:Leh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3, v3}, Lep;->a(Ljava/lang/Class;)Les;

    move-result-object p3

    invoke-static {p3, p2, v4, p4, p5}, Leb;->a(Les;[BIILby;)I

    move-result p3

    iget-object v2, v2, Lcq;->d:Ldd;

    iget-object v3, p5, Lby;->c:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcu;->a(Ldd;Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Leb;->a(I[BIILfi;Lby;)I

    move-result p3

    :goto_3
    move-object v2, v8

    goto/16 :goto_0

    :cond_9
    invoke-static {p3, p2, v4, p4, p5}, Leb;->a(I[BIILby;)I

    move-result p3

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    :cond_b
    invoke-static {}, Ldl;->e()Ldl;

    move-result-object p0

    throw p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lel;->b:Lfh;

    invoke-virtual {v0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lel;->b:Lfh;

    invoke-virtual {v1, p2}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lel;->c:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p0

    invoke-static {p2}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcu;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lel;->b:Lfh;

    invoke-virtual {v0, p1}, Lfh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfh;->e(Ljava/lang/Object;)I

    move-result v0

    iget-boolean p0, p0, Lel;->c:Z

    if-eqz p0, :cond_2

    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    iget-object v2, p0, Lcu;->a:Lfc;

    invoke-virtual {v2}, Lfc;->a()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcu;->a:Lfc;

    invoke-virtual {v2, p1}, Lfc;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcu;->b(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcu;->a:Lfc;

    invoke-virtual {p1}, Lfc;->b()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p0, v2}, Lcu;->b(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lel;->b:Lfh;

    invoke-static {v0, p1, p2}, Leu;->a(Lfh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lel;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lel;->d:Lej;

    invoke-static {p0, p1, p2}, Leu;->a(Lej;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lel;->b:Lfh;

    invoke-virtual {v0, p1}, Lfh;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lel;->d:Lej;

    invoke-virtual {p0, p1}, Lej;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lej;->b(Ljava/lang/Object;)Lcu;

    move-result-object p0

    invoke-virtual {p0}, Lcu;->e()Z

    move-result p0

    return p0
.end method
