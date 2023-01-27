.class final Lfa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lfc;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lfc;)V
    .locals 0

    iput-object p1, p0, Lfa;->a:Lfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lfa;->b:I

    return-void
.end method

.method private final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lfa;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfa;->a:Lfc;

    iget-object v0, v0, Lfc;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lfa;->d:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lfa;->d:Ljava/util/Iterator;

    return-object p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lfa;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lfa;->a:Lfc;

    iget-object v2, v2, Lfc;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lfa;->a:Lfc;

    iget-object v0, v0, Lfc;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lfa;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa;->c:Z

    iget v1, p0, Lfa;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lfa;->b:I

    iget-object v0, p0, Lfa;->a:Lfc;

    iget-object v0, v0, Lfc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-direct {p0}, Lfa;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfa;->a:Lfc;

    iget-object v0, v0, Lfc;->a:Ljava/util/List;

    iget p0, p0, Lfa;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    :goto_0
    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lfa;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfa;->c:Z

    iget-object v0, p0, Lfa;->a:Lfc;

    invoke-virtual {v0}, Lfc;->c()V

    iget v0, p0, Lfa;->b:I

    iget-object v1, p0, Lfa;->a:Lfc;

    iget-object v1, v1, Lfc;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lfa;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    iget-object v0, p0, Lfa;->a:Lfc;

    iget v1, p0, Lfa;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lfa;->b:I

    invoke-virtual {v0, v1}, Lfc;->c(I)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() was called before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
