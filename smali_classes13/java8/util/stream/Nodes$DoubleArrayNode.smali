.class Ljava8/util/stream/Nodes$DoubleArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleArrayNode"
.end annotation


# instance fields
.field final array:[D

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    new-array p1, p1, [D

    iput-object p1, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->array:[D

    const/4 p1, 0x0

    iput p1, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->curSize:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length p1, p1

    iput p1, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->curSize:I

    return-void
.end method


# virtual methods
.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Double;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)[",
            "Ljava/lang/Double;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfPrimitive;->asArray(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Double;

    return-object p0
.end method

.method public bridge synthetic asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$DoubleArrayNode;->asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$DoubleArrayNode;->asPrimitiveArray()[D

    move-result-object p0

    return-object p0
.end method

.method public asPrimitiveArray()[D
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v1, v0

    iget p0, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$DoubleArrayNode;->copyInto([DI)V

    return-void
.end method

.method public copyInto([DI)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget p0, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyInto([Ljava/lang/Double;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfDouble;->copyInto(Ljava8/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$DoubleArrayNode;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public count()J
    .locals 2

    iget p0, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->curSize:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$DoubleArrayNode;->forEach(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfDouble;->forEach(Ljava8/util/stream/Node$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEach(Ljava8/util/function/DoubleConsumer;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->array:[D

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node$OfDouble;
    .locals 0

    invoke-static {}, Ljava8/util/stream/Nodes$OfPrimitive;->getChild()Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfDouble;

    return-object p0
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$DoubleArrayNode;->getChild(I)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$DoubleArrayNode;->getChild(I)Ljava8/util/stream/Node$OfDouble;

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

    invoke-static {}, Ljava8/util/stream/Nodes$OfDouble;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$DoubleArrayNode;->newArray(I)[D

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[D
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfDouble;->newArray(Ljava8/util/stream/Node$OfDouble;I)[D

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava8/util/Spliterator$OfDouble;
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget p0, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava8/util/J8Arrays;->spliterator([DII)Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v1, v1

    iget v2, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->curSize:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Ljava8/util/stream/Nodes$DoubleArrayNode;->array:[D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "DoubleArrayNode[%d][%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node$OfDouble;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfDouble;->truncate(Ljava8/util/stream/Node$OfDouble;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$DoubleArrayNode;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$DoubleArrayNode;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method
