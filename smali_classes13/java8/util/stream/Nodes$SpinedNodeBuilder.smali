.class final Ljava8/util/stream/Nodes$SpinedNodeBuilder;
.super Ljava8/util/stream/SpinedBuffer;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node;
.implements Ljava8/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpinedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/SpinedBuffer<",
        "TT;>;",
        "Ljava8/util/stream/Node<",
        "TT;>;",
        "Ljava8/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava8/util/stream/SpinedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer;->asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public begin(J)V
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer;->clear()V

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer;->ensureCapacity(J)V

    return-void
.end method

.method public build()Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public cancellationRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer;->forEach(Ljava8/util/function/Consumer;)V

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

    invoke-super {p0}, Ljava8/util/stream/SpinedBuffer;->spliterator()Ljava8/util/Spliterator;

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
