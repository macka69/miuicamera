.class final Ljava8/util/stream/DistinctOps$1;
.super Ljava8/util/stream/ReferencePipeline$StatefulOp;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DistinctOps;->makeRef(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method

.method static synthetic lambda$opEvaluateParallel$131(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->DISTINCT:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1, p3}, Ljava8/util/stream/PipelineHelper;->evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p3, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/DistinctOps$1;->reduce(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x200

    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {p3, v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {p0, p3}, Ljava8/util/stream/DistinctOps$1$$Lambda$4;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentMap;)Ljava8/util/function/Consumer;

    move-result-object v0

    invoke-static {v0, v1}, Ljava8/util/stream/ForEachOps;->makeRef(Ljava8/util/function/Consumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/TerminalOp;->evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    const/16 p2, 0x7f

    if-lt p0, p2, :cond_2

    new-instance p2, Ljava8/util/stream/DistinctOps$KeysAndNullSet;

    invoke-direct {p2, p1, p0}, Ljava8/util/stream/DistinctOps$KeysAndNullSet;-><init>(Ljava/util/Set;I)V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/util/HashSet;

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    div-float/2addr p0, v3

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    const/16 p3, 0x10

    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {p2, p0}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object p1, p2

    :cond_3
    invoke-static {p1}, Ljava8/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->DISTINCT:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/DistinctOps$1;->reduce(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/stream/Node;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;

    invoke-virtual {p1, p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava8/util/Spliterator;)V

    return-object p0
.end method

.method opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "TT;>;)",
            "Ljava8/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->DISTINCT:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SORTED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava8/util/stream/DistinctOps$1$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/DistinctOps$1$1;-><init>(Ljava8/util/stream/DistinctOps$1;Ljava8/util/stream/Sink;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava8/util/stream/DistinctOps$1$2;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/DistinctOps$1$2;-><init>(Ljava8/util/stream/DistinctOps$1;Ljava8/util/stream/Sink;)V

    return-object p1
.end method

.method reduce(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava8/util/stream/DistinctOps$1$$Lambda$1;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object p0

    invoke-static {}, Ljava8/util/stream/DistinctOps$1$$Lambda$2;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/DistinctOps$1$$Lambda$3;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava8/util/stream/ReduceOps;->makeRef(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;)Ljava8/util/stream/TerminalOp;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/TerminalOp;->evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava8/util/stream/Nodes;->node(Ljava/util/Collection;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method
