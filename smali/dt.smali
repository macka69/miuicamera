.class final Ldt;
.super Ldv;
.source "PG"


# static fields
.field private static final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ldt;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 2

    invoke-static {p1, p2, p3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Lds;

    if-eqz v0, :cond_0

    check-cast p0, Lds;

    invoke-interface {p0}, Lds;->e()Lds;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v0, Ldt;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p0, Leo;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ldi;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Ldi;

    invoke-interface {p0}, Ldi;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ldi;->b()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_1
    invoke-static {p1, p2, p3, p0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p2, p3, p4}, Ldt;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p3, p4}, Ldt;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Lds;

    if-eqz v1, :cond_0

    new-instance v0, Ldr;

    invoke-direct {v0, p2}, Ldr;-><init>(I)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Leo;

    if-eqz v1, :cond_2

    instance-of v1, v0, Ldi;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Ldi;

    invoke-interface {v0, p2}, Ldi;->a(I)Ldi;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-static {p1, p3, p4, v0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_3
    sget-object v1, Ldt;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p3, p4, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_4
    instance-of v1, v0, Lfl;

    if-eqz v1, :cond_5

    new-instance v1, Ldr;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ldr;-><init>(I)V

    check-cast v0, Lfl;

    invoke-virtual {v1, v0}, Lbw;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p3, p4, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_5
    instance-of v1, v0, Leo;

    if-eqz v1, :cond_6

    instance-of v1, v0, Ldi;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ldi;

    invoke-interface {v1}, Ldi;->a()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Ldi;->a(I)Ldi;

    move-result-object v0

    invoke-static {p1, p3, p4, v0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_7

    if-lez v1, :cond_7

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-gtz p2, :cond_8

    goto :goto_4

    :cond_8
    move-object p0, v0

    :goto_4
    invoke-static {p1, p3, p4, p0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
