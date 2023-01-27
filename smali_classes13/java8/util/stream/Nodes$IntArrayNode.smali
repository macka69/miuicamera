.class Ljava8/util/stream/Nodes$IntArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayNode"
.end annotation


# instance fields
.field final array:[I

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    const/4 p1, 0x0

    iput p1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    array-length p1, p1

    iput p1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    return-void
.end method


# virtual methods
.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfPrimitive;->asArray(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntArrayNode;->asPrimitiveArray()[I

    move-result-object p0

    return-object p0
.end method

.method public asPrimitiveArray()[I
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v0

    iget p0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$IntArrayNode;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    iget p0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyInto([Ljava/lang/Integer;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfInt;->copyInto(Ljava8/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$IntArrayNode;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public count()J
    .locals 2

    iget p0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->forEach(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfInt;->forEach(Ljava8/util/stream/Node$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEach(Ljava8/util/function/IntConsumer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava8/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node$OfInt;
    .locals 0

    invoke-static {}, Ljava8/util/stream/Nodes$OfPrimitive;->getChild()Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfInt;

    return-object p0
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->getChild(I)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->getChild(I)Ljava8/util/stream/Node$OfInt;

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

    invoke-static {}, Ljava8/util/stream/Nodes$OfInt;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->newArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[I
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfInt;->newArray(Ljava8/util/stream/Node$OfInt;I)[I

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava8/util/Spliterator$OfInt;
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    iget p0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava8/util/J8Arrays;->spliterator([III)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntArrayNode;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntArrayNode;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v1

    iget v2, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "IntArrayNode[%d][%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Node$OfInt;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfInt;->truncate(Ljava8/util/stream/Node$OfInt;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$IntArrayNode;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$IntArrayNode;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method
