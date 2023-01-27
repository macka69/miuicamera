.class abstract Ljava8/util/stream/Nodes$InternalNodeSpliterator;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InternalNodeSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfDouble;,
        Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfLong;,
        Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfInt;,
        Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;,
        Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava8/util/Spliterator<",
        "TT;>;N::",
        "Ljava8/util/stream/Node<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field curChildIndex:I

.field curNode:Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field lastNodeSpliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field tryAdvanceSpliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field tryAdvanceStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public final estimateSize()J
    .locals 5

    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava8/util/Spliterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    :goto_0
    iget-object v3, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    invoke-interface {v3}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    invoke-interface {v3, v0}, Ljava8/util/stream/Node;->getChild(I)Ljava8/util/stream/Node;

    move-result-object v3

    invoke-interface {v3}, Ljava8/util/stream/Node;->count()J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method protected final findNextLeafNode(Ljava/util/Deque;)Ljava8/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TN;>;)TN;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava8/util/stream/Node;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p0, v0}, Ljava8/util/stream/Node;->getChild(I)Ljava8/util/stream/Node;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final initStack()Ljava/util/Deque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iget-object v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    invoke-interface {v1}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    invoke-interface {v2, v1}, Ljava8/util/stream/Node;->getChild(I)Ljava8/util/stream/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final initTryAdvance()Z
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    if-nez v0, :cond_3

    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava8/util/Spliterator;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava8/util/stream/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    return v1

    :cond_2
    iput-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final trySplit()Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    if-eqz v0, :cond_4

    iget-object v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava8/util/Spliterator;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_1
    iget v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    iget v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava8/util/stream/Node;->getChild(I)Ljava8/util/stream/Node;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    iget v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Ljava8/util/stream/Node;->getChild(I)Ljava8/util/stream/Node;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    invoke-interface {v0}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    invoke-interface {v0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v1, v0}, Ljava8/util/stream/Node;->getChild(I)Ljava8/util/stream/Node;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
