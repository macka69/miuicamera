.class final Ljava8/util/stream/Nodes$LongFixedNodeBuilder;
.super Ljava8/util/stream/Nodes$LongArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$Builder$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongFixedNodeBuilder"
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$LongArrayNode;-><init>(J)V

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
    .locals 3

    iget v0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$LongArrayNode;->curSize:I

    aput-wide p1, v1, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object p0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "Accept exceeded fixed size of %d"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfLong;->accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$LongFixedNodeBuilder;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public begin(J)V
    .locals 3

    iget-object v0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Ljava8/util/stream/Nodes$LongArrayNode;->curSize:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    iget-object p0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    const-string p0, "Begin size %d is not equal to fixed size %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Ljava8/util/stream/Node$OfLong;
    .locals 4

    iget v0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/stream/Nodes$LongArrayNode;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Current size %d is less than fixed size %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic build()Ljava8/util/stream/Node;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$LongFixedNodeBuilder;->build()Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public cancellationRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public end()V
    .locals 4

    iget v0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/stream/Nodes$LongArrayNode;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "End size %d is less than fixed size %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    iget v2, p0, Ljava8/util/stream/Nodes$LongArrayNode;->curSize:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Ljava8/util/stream/Nodes$LongArrayNode;->array:[J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "LongFixedNodeBuilder[%d][%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
