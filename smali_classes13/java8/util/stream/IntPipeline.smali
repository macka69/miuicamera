.class abstract Ljava8/util/stream/IntPipeline;
.super Ljava8/util/stream/AbstractPipeline;
.source "IntPipeline.java"

# interfaces
.implements Ljava8/util/stream/IntStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/IntPipeline$StatefulOp;,
        Ljava8/util/stream/IntPipeline$StatelessOp;,
        Ljava8/util/stream/IntPipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Integer;",
        "Ljava8/util/stream/IntStream;",
        ">;",
        "Ljava8/util/stream/IntStream;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/function/Supplier;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/AbstractPipeline;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/stream/AbstractPipeline;I)V

    return-void
.end method

.method static synthetic access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfInt;
    .locals 0

    invoke-static {p0}, Ljava8/util/stream/IntPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method private static adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfInt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/Spliterator$OfInt;"
        }
    .end annotation

    instance-of v0, p0, Ljava8/util/Spliterator$OfInt;

    if-eqz v0, :cond_0

    check-cast p0, Ljava8/util/Spliterator$OfInt;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IntStream.adapt(Spliterator<Integer> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static adapt(Ljava8/util/stream/Sink;)Ljava8/util/function/IntConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/function/IntConsumer;"
        }
    .end annotation

    instance-of v0, p0, Ljava8/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava8/util/function/IntConsumer;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava8/util/stream/IntPipeline$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/Sink;)Ljava8/util/function/IntConsumer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$average$95()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$average$96([JI)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$average$97([J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$collect$98(Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$distinct$94(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private mapToObj(Ljava8/util/function/IntFunction;I)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/IntFunction<",
            "+TU;>;I)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    new-instance v6, Ljava8/util/stream/IntPipeline$1;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/IntPipeline$1;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava8/util/function/IntPredicate;)Z
    .locals 1

    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ALL:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeInt(Ljava8/util/function/IntPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final anyMatch(Ljava8/util/function/IntPredicate;)Z
    .locals 1

    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ANY:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeInt(Ljava8/util/function/IntPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final asDoubleStream()Ljava8/util/stream/DoubleStream;
    .locals 3

    new-instance v0, Ljava8/util/stream/IntPipeline$3;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/IntPipeline$3;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final asLongStream()Ljava8/util/stream/LongStream;
    .locals 3

    new-instance v0, Ljava8/util/stream/IntPipeline$2;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/IntPipeline$2;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Ljava8/util/OptionalDouble;
    .locals 5

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$7;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$8;->lambdaFactory$()Ljava8/util/function/ObjIntConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$9;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/IntPipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava8/util/OptionalDouble;->of(D)Ljava8/util/OptionalDouble;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava8/util/OptionalDouble;->empty()Ljava8/util/OptionalDouble;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final boxed()Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$2;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava8/util/stream/IntPipeline;->mapToObj(Ljava8/util/function/IntFunction;I)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public final collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjIntConsumer<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava8/util/stream/IntPipeline$$Lambda$12;->lambdaFactory$(Ljava8/util/function/BiConsumer;)Ljava8/util/function/BinaryOperator;

    move-result-object p3

    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeInt(Ljava8/util/function/Supplier;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final count()J
    .locals 2

    invoke-static {}, Ljava8/util/stream/ReduceOps;->makeIntCounting()Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava8/util/stream/IntStream;
    .locals 1

    invoke-virtual {p0}, Ljava8/util/stream/IntPipeline;->boxed()Ljava8/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/stream/Stream;->distinct()Ljava8/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$3;->lambdaFactory$()Ljava8/util/function/ToIntFunction;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava8/util/stream/Stream;->mapToInt(Ljava8/util/function/ToIntFunction;)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public final dropWhile(Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeDropWhileInt(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method final evaluateToNode(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Ljava8/util/stream/Nodes;->collectInt(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/IntPipeline$9;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v4, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/IntPipeline$9;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntPredicate;)V

    return-object v6
.end method

.method public final findAny()Ljava8/util/OptionalInt;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeInt(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/OptionalInt;

    return-object p0
.end method

.method public final findFirst()Ljava8/util/OptionalInt;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeInt(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/OptionalInt;

    return-object p0
.end method

.method public final flatMap(Ljava8/util/function/IntFunction;)Ljava8/util/stream/IntStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "+",
            "Ljava8/util/stream/IntStream;",
            ">;)",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/IntPipeline$7;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/IntPipeline$7;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntFunction;)V

    return-object v6
.end method

.method public forEach(Ljava8/util/function/IntConsumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeInt(Ljava8/util/function/IntConsumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/IntConsumer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeInt(Ljava8/util/function/IntConsumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/stream/IntPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    invoke-static {p2}, Ljava8/util/stream/IntPipeline;->adapt(Ljava8/util/stream/Sink;)Ljava8/util/function/IntConsumer;

    move-result-object p1

    :cond_0
    invoke-interface {p2}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method final getOutputShape()Ljava8/util/stream/StreamShape;
    .locals 0

    sget-object p0, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/IntPipeline;->iterator()Ljava8/util/PrimitiveIterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava8/util/PrimitiveIterator$OfInt;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/IntPipeline;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfInt;)Ljava8/util/PrimitiveIterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method final lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfInt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava8/util/Spliterator$OfInt;"
        }
    .end annotation

    new-instance p0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;

    invoke-direct {p0, p1}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;-><init>(Ljava8/util/function/Supplier;)V

    return-object p0
.end method

.method bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/IntPipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public final limit(J)Ljava8/util/stream/IntStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-static {p0, v0, v1, p1, p2}, Ljava8/util/stream/SliceOps;->makeInt(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Node$Builder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava8/util/stream/Nodes;->intBuilder(J)Ljava8/util/stream/Node$Builder$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public final map(Ljava8/util/function/IntUnaryOperator;)Ljava8/util/stream/IntStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/IntPipeline$4;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/IntPipeline$4;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntUnaryOperator;)V

    return-object v6
.end method

.method public final mapToDouble(Ljava8/util/function/IntToDoubleFunction;)Ljava8/util/stream/DoubleStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/IntPipeline$6;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/IntPipeline$6;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntToDoubleFunction;)V

    return-object v6
.end method

.method public final mapToLong(Ljava8/util/function/IntToLongFunction;)Ljava8/util/stream/LongStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/IntPipeline$5;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/IntPipeline$5;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntToLongFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava8/util/function/IntFunction;)Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/IntFunction<",
            "+TU;>;)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava8/util/stream/IntPipeline;->mapToObj(Ljava8/util/function/IntFunction;I)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public final max()Ljava8/util/OptionalInt;
    .locals 1

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$6;->lambdaFactory$()Ljava8/util/function/IntBinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/IntPipeline;->reduce(Ljava8/util/function/IntBinaryOperator;)Ljava8/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public final min()Ljava8/util/OptionalInt;
    .locals 1

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$5;->lambdaFactory$()Ljava8/util/function/IntBinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/IntPipeline;->reduce(Ljava8/util/function/IntBinaryOperator;)Ljava8/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public final noneMatch(Ljava8/util/function/IntPredicate;)Z
    .locals 1

    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->NONE:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeInt(Ljava8/util/function/IntPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/IntStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method

.method public final peek(Ljava8/util/function/IntConsumer;)Ljava8/util/stream/IntStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/IntPipeline$10;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/IntPipeline$10;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntConsumer;)V

    return-object v6
.end method

.method public final reduce(ILjava8/util/function/IntBinaryOperator;)I
    .locals 0

    invoke-static {p1, p2}, Ljava8/util/stream/ReduceOps;->makeInt(ILjava8/util/function/IntBinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final reduce(Ljava8/util/function/IntBinaryOperator;)Ljava8/util/OptionalInt;
    .locals 0

    invoke-static {p1}, Ljava8/util/stream/ReduceOps;->makeInt(Ljava8/util/function/IntBinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/OptionalInt;

    return-object p0
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/IntStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method

.method public final skip(J)Ljava8/util/stream/IntStream;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava8/util/stream/SliceOps;->makeInt(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sorted()Ljava8/util/stream/IntStream;
    .locals 0

    invoke-static {p0}, Ljava8/util/stream/SortedOps;->makeInt(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public final spliterator()Ljava8/util/Spliterator$OfInt;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->spliterator()Ljava8/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/stream/IntPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/IntPipeline;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public final sum()I
    .locals 2

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$4;->lambdaFactory$()Ljava8/util/function/IntBinaryOperator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava8/util/stream/IntPipeline;->reduce(ILjava8/util/function/IntBinaryOperator;)I

    move-result p0

    return p0
.end method

.method public final summaryStatistics()Ljava8/util/IntSummaryStatistics;
    .locals 3

    sget-object v0, Ljava8/util/stream/Collectors;->INT_SUM_STATS:Ljava8/util/function/Supplier;

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$10;->lambdaFactory$()Ljava8/util/function/ObjIntConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/IntPipeline$$Lambda$11;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/IntPipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/IntSummaryStatistics;

    return-object p0
.end method

.method public final takeWhile(Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeTakeWhileInt(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public final toArray()[I
    .locals 1

    sget-object v0, Ljava8/util/stream/WhileOps;->INT_ARR_GEN:Ljava8/util/function/IntFunction;

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->evaluateToArrayNode(Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfInt;

    invoke-static {p0}, Ljava8/util/stream/Nodes;->flattenInt(Ljava8/util/stream/Node$OfInt;)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/IntPipeline;->unordered()Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public unordered()Ljava8/util/stream/IntStream;
    .locals 3

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava8/util/stream/IntPipeline$8;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/IntPipeline$8;-><init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-object v0
.end method

.method final wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-object p0
.end method
