.class final Ljava8/util/stream/SortedOps$OfLong;
.super Ljava8/util/stream/LongPipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/LongPipeline$StatefulOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v1, Ljava8/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljava8/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljava8/util/stream/LongPipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object p0, Ljava8/util/stream/StreamOpFlag;->SORTED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, p3}, Ljava8/util/stream/PipelineHelper;->evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p2, p0, p3}, Ljava8/util/stream/PipelineHelper;->evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfLong;

    invoke-interface {p0}, Ljava8/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    invoke-static {p0}, Ljava8/util/J8Arrays;->parallelSort([J)V

    invoke-static {p0}, Ljava8/util/stream/Nodes;->node([J)Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava8/util/stream/StreamOpFlag;->SORTED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava8/util/stream/SortedOps$SizedLongSortingSink;

    invoke-direct {p0, p2}, Ljava8/util/stream/SortedOps$SizedLongSortingSink;-><init>(Ljava8/util/stream/Sink;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava8/util/stream/SortedOps$LongSortingSink;

    invoke-direct {p0, p2}, Ljava8/util/stream/SortedOps$LongSortingSink;-><init>(Ljava8/util/stream/Sink;)V

    return-object p0
.end method
