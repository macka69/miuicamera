.class final Ldu;
.super Ldv;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/Object;J)Ldi;
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldi;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Ldu;->b(Ljava/lang/Object;J)Ldi;

    move-result-object p0

    invoke-interface {p0}, Ldi;->b()V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p3, p4}, Ldu;->b(Ljava/lang/Object;J)Ldi;

    move-result-object p0

    invoke-static {p2, p3, p4}, Ldu;->b(Ljava/lang/Object;J)Ldi;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_2

    invoke-interface {p0}, Ldi;->a()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/2addr v1, v0

    invoke-interface {p0, v1}, Ldi;->a(I)Ldi;

    move-result-object p0

    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p0

    :goto_1
    invoke-static {p1, p3, p4, p2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
