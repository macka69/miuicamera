.class final Ljava8/util/stream/Nodes$CollectionNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollectionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    aput-object v0, p1, p2

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public count()J
    .locals 2

    iget-object p0, p0, Ljava8/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ljava8/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava8/util/stream/Nodes;->getChild()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    invoke-static {}, Ljava8/util/stream/Nodes;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getShape()Ljava8/util/stream/StreamShape;
    .locals 0

    invoke-static {}, Ljava8/util/stream/Nodes;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava8/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-static {p0}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava8/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Ljava8/util/stream/Nodes$CollectionNode;->c:Ljava/util/Collection;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "CollectionNode[%d][%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes;->truncate(Ljava8/util/stream/Node;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method
