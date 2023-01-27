.class abstract Ljava8/util/stream/LongPipeline;
.super Ljava8/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Ljava8/util/stream/LongStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/LongPipeline$StatefulOp;,
        Ljava8/util/stream/LongPipeline$StatelessOp;,
        Ljava8/util/stream/LongPipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Long;",
        "Ljava8/util/stream/LongStream;",
        ">;",
        "Ljava8/util/stream/LongStream;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
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
            "Ljava/lang/Long;",
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

.method static synthetic access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;
    .locals 0

    invoke-static {p0}, Ljava8/util/stream/LongPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method private static adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/Spliterator$OfLong;"
        }
    .end annotation

    instance-of v0, p0, Ljava8/util/Spliterator$OfLong;

    if-eqz v0, :cond_0

    check-cast p0, Ljava8/util/Spliterator$OfLong;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static adapt(Ljava8/util/stream/Sink;)Ljava8/util/function/LongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/function/LongConsumer;"
        }
    .end annotation

    instance-of v0, p0, Ljava8/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava8/util/function/LongConsumer;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava8/util/stream/LongPipeline$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/Sink;)Ljava8/util/function/LongConsumer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$average$90()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$average$91([JJ)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    add-long/2addr v1, p1

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$average$92([J[J)V
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

.method static synthetic lambda$collect$93(Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$distinct$89(Ljava/lang/Long;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private mapToObj(Ljava8/util/function/LongFunction;I)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/LongFunction<",
            "+TU;>;I)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    new-instance v6, Ljava8/util/stream/LongPipeline$1;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$1;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava8/util/function/LongPredicate;)Z
    .locals 1

    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ALL:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeLong(Ljava8/util/function/LongPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final anyMatch(Ljava8/util/function/LongPredicate;)Z
    .locals 1

    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ANY:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeLong(Ljava8/util/function/LongPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

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

    new-instance v0, Ljava8/util/stream/LongPipeline$2;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/LongPipeline$2;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Ljava8/util/OptionalDouble;
    .locals 5

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$7;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$8;->lambdaFactory$()Ljava8/util/function/ObjLongConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$9;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/LongPipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$2;->lambdaFactory$()Ljava8/util/function/LongFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava8/util/stream/LongPipeline;->mapToObj(Ljava8/util/function/LongFunction;I)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public final collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjLongConsumer<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava8/util/stream/LongPipeline$$Lambda$12;->lambdaFactory$(Ljava8/util/function/BiConsumer;)Ljava8/util/function/BinaryOperator;

    move-result-object p3

    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeLong(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final count()J
    .locals 2

    invoke-static {}, Ljava8/util/stream/ReduceOps;->makeLongCounting()Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava8/util/stream/LongStream;
    .locals 1

    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->boxed()Ljava8/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/stream/Stream;->distinct()Ljava8/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$3;->lambdaFactory$()Ljava8/util/function/ToLongFunction;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava8/util/stream/Stream;->mapToLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public final dropWhile(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeDropWhileLong(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Ljava8/util/stream/Nodes;->collectLong(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/LongPipeline$8;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v4, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$8;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongPredicate;)V

    return-object v6
.end method

.method public final findAny()Ljava8/util/OptionalLong;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeLong(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/OptionalLong;

    return-object p0
.end method

.method public final findFirst()Ljava8/util/OptionalLong;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeLong(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/OptionalLong;

    return-object p0
.end method

.method public final flatMap(Ljava8/util/function/LongFunction;)Ljava8/util/stream/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/LongFunction<",
            "+",
            "Ljava8/util/stream/LongStream;",
            ">;)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/LongPipeline$6;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$6;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongFunction;)V

    return-object v6
.end method

.method public forEach(Ljava8/util/function/LongConsumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeLong(Ljava8/util/function/LongConsumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/LongConsumer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeLong(Ljava8/util/function/LongConsumer;Z)Ljava8/util/stream/TerminalOp;

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/stream/LongPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    invoke-static {p2}, Ljava8/util/stream/LongPipeline;->adapt(Ljava8/util/stream/Sink;)Ljava8/util/function/LongConsumer;

    move-result-object p1

    :cond_0
    invoke-interface {p2}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method final getOutputShape()Ljava8/util/stream/StreamShape;
    .locals 0

    sget-object p0, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->iterator()Ljava8/util/PrimitiveIterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava8/util/PrimitiveIterator$OfLong;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/PrimitiveIterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method final lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfLong;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava8/util/Spliterator$OfLong;"
        }
    .end annotation

    new-instance p0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    invoke-direct {p0, p1}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava8/util/function/Supplier;)V

    return-object p0
.end method

.method bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public final limit(J)Ljava8/util/stream/LongStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-static {p0, v0, v1, p1, p2}, Ljava8/util/stream/SliceOps;->makeLong(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/LongStream;

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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node$Builder<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava8/util/stream/Nodes;->longBuilder(J)Ljava8/util/stream/Node$Builder$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public final map(Ljava8/util/function/LongUnaryOperator;)Ljava8/util/stream/LongStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/LongPipeline$3;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$3;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongUnaryOperator;)V

    return-object v6
.end method

.method public final mapToDouble(Ljava8/util/function/LongToDoubleFunction;)Ljava8/util/stream/DoubleStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/LongPipeline$5;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$5;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongToDoubleFunction;)V

    return-object v6
.end method

.method public final mapToInt(Ljava8/util/function/LongToIntFunction;)Ljava8/util/stream/IntStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/LongPipeline$4;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$4;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongToIntFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava8/util/function/LongFunction;)Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/LongFunction<",
            "+TU;>;)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava8/util/stream/LongPipeline;->mapToObj(Ljava8/util/function/LongFunction;I)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public final max()Ljava8/util/OptionalLong;
    .locals 1

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$6;->lambdaFactory$()Ljava8/util/function/LongBinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/LongPipeline;->reduce(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public final min()Ljava8/util/OptionalLong;
    .locals 1

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$5;->lambdaFactory$()Ljava8/util/function/LongBinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/LongPipeline;->reduce(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public final noneMatch(Ljava8/util/function/LongPredicate;)Z
    .locals 1

    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->NONE:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeLong(Ljava8/util/function/LongPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/LongStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/LongStream;

    return-object p0
.end method

.method public final peek(Ljava8/util/function/LongConsumer;)Ljava8/util/stream/LongStream;
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava8/util/stream/LongPipeline$9;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$9;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongConsumer;)V

    return-object v6
.end method

.method public final reduce(JLjava8/util/function/LongBinaryOperator;)J
    .locals 0

    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeLong(JLjava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final reduce(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/OptionalLong;
    .locals 0

    invoke-static {p1}, Ljava8/util/stream/ReduceOps;->makeLong(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/OptionalLong;

    return-object p0
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/LongStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/LongStream;

    return-object p0
.end method

.method public final skip(J)Ljava8/util/stream/LongStream;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava8/util/stream/SliceOps;->makeLong(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sorted()Ljava8/util/stream/LongStream;
    .locals 0

    invoke-static {p0}, Ljava8/util/stream/SortedOps;->makeLong(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public final spliterator()Ljava8/util/Spliterator$OfLong;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->spliterator()Ljava8/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/stream/LongPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public final sum()J
    .locals 3

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$4;->lambdaFactory$()Ljava8/util/function/LongBinaryOperator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava8/util/stream/LongPipeline;->reduce(JLjava8/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava8/util/LongSummaryStatistics;
    .locals 3

    sget-object v0, Ljava8/util/stream/Collectors;->LNG_SUM_STATS:Ljava8/util/function/Supplier;

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$10;->lambdaFactory$()Ljava8/util/function/ObjLongConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$11;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/LongPipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/LongSummaryStatistics;

    return-object p0
.end method

.method public final takeWhile(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeTakeWhileLong(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public final toArray()[J
    .locals 1

    sget-object v0, Ljava8/util/stream/WhileOps;->LONG_ARR_GEN:Ljava8/util/function/IntFunction;

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->evaluateToArrayNode(Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfLong;

    invoke-static {p0}, Ljava8/util/stream/Nodes;->flattenLong(Ljava8/util/stream/Node$OfLong;)Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->unordered()Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public unordered()Ljava8/util/stream/LongStream;
    .locals 3

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava8/util/stream/LongPipeline$7;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/LongPipeline$7;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-object p0
.end method
