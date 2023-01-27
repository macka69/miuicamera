.class abstract Ljava8/util/stream/AbstractPipeline;
.super Ljava8/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava8/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava8/util/stream/BaseStream<",
        "TE_OUT;TS;>;>",
        "Ljava8/util/stream/PipelineHelper<",
        "TE_OUT;>;",
        "Ljava8/util/stream/BaseStream<",
        "TE_OUT;TS;>;"
    }
.end annotation


# static fields
.field private static final MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field private static final MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field private combinedFlags:I

.field private depth:I

.field private linkedOrConsumed:Z

.field private nextStage:Ljava8/util/stream/AbstractPipeline;

.field private parallel:Z

.field private final previousStage:Ljava8/util/stream/AbstractPipeline;

.field private sourceAnyStateful:Z

.field private sourceCloseAction:Ljava/lang/Runnable;

.field protected final sourceOrOpFlags:I

.field private sourceSpliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "*>;"
        }
    .end annotation
.end field

.field private final sourceStage:Ljava8/util/stream/AbstractPipeline;

.field private sourceSupplier:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    iput-object p0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    sget p1, Ljava8/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    sget p2, Ljava8/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 p1, 0x0

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    iput-boolean p3, p0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method constructor <init>(Ljava8/util/function/Supplier;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "*>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/stream/PipelineHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    iput-object p0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    sget p1, Ljava8/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    sget p2, Ljava8/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr p1, p2

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    const/4 p1, 0x0

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    iput-boolean p3, p0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/AbstractPipeline;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/stream/PipelineHelper;-><init>()V

    iget-boolean v0, p1, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iput-object p0, p1, Ljava8/util/stream/AbstractPipeline;->nextStage:Ljava8/util/stream/AbstractPipeline;

    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    sget v1, Ljava8/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v1, p2

    iput v1, p0, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    iget v1, p1, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v1}, Ljava8/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result p2

    iput p2, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    iget-object p2, p1, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iput-boolean v0, p2, Ljava8/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    :cond_0
    iget p1, p1, Ljava8/util/stream/AbstractPipeline;->depth:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "stream has already been operated upon or closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$opEvaluateParallelLazy$79(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic lambda$spliterator$77(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$wrapSpliterator$78(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    return-object p0
.end method

.method private sourceSpliterator(I)Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/Spliterator<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava8/util/Spliterator;

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    :goto_0
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-boolean v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Ljava8/util/stream/AbstractPipeline;->nextStage:Ljava8/util/stream/AbstractPipeline;

    const/4 v3, 0x1

    :goto_1
    if-eq v0, p0, :cond_4

    iget v4, v2, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v2}, Ljava8/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    sget-object v5, Ljava8/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {v5, v4}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Ljava8/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v5, v5

    and-int/2addr v4, v5

    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava8/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v1

    const/16 v5, 0x40

    invoke-interface {v1, v5}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v5, v5

    and-int/2addr v4, v5

    sget v5, Ljava8/util/stream/StreamOpFlag;->IS_SIZED:I

    goto :goto_2

    :cond_2
    sget v5, Ljava8/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v5, v5

    and-int/2addr v4, v5

    sget v5, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    add-int/lit8 v5, v3, 0x1

    iput v3, v2, Ljava8/util/stream/AbstractPipeline;->depth:I

    iget v0, v0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v4, v0}, Ljava8/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v0

    iput v0, v2, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    iget-object v0, v2, Ljava8/util/stream/AbstractPipeline;->nextStage:Ljava8/util/stream/AbstractPipeline;

    move v3, v5

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v0}, Ljava8/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result p1

    iput p1, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    :cond_5
    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "source already consumed or closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    iget-object p0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljava8/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iput-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method final copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava8/util/stream/Sink;->begin(J)V

    invoke-interface {p2, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    invoke-interface {p1}, Ljava8/util/stream/Sink;->end()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/AbstractPipeline;->copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z

    :goto_0
    return-void
.end method

.method final copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation

    :goto_0
    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-lez v0, :cond_0

    iget-object p0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava8/util/stream/Sink;->begin(J)V

    invoke-virtual {p0, p2, p1}, Ljava8/util/stream/AbstractPipeline;->forEachWithCancel(Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)Z

    move-result p0

    invoke-interface {p1}, Ljava8/util/stream/Sink;->end()V

    return p0
.end method

.method final evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/TerminalOp<",
            "TE_OUT;TR;>;)TR;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava8/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava8/util/stream/TerminalOp;->evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava8/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava8/util/stream/TerminalOp;->evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "stream has already been operated upon or closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0, p1, p2, p3}, Ljava8/util/stream/AbstractPipeline;->evaluateToNode(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Ljava8/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava8/util/stream/AbstractPipeline;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$Builder;

    invoke-interface {p0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method final evaluateToArrayNode(Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v2, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    invoke-direct {v0, v2}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ljava8/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, v2}, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava8/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Ljava8/util/stream/AbstractPipeline;->evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "stream has already been operated upon or closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract evaluateToNode(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method abstract forEachWithCancel(Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;",
            "Ljava8/util/stream/Sink<",
            "TE_OUT;>;)Z"
        }
    .end annotation
.end method

.method abstract getOutputShape()Ljava8/util/stream/StreamShape;
.end method

.method final getSourceShape()Ljava8/util/stream/StreamShape;
    .locals 1

    :goto_0
    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-lez v0, :cond_0

    iget-object p0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object p0

    return-object p0
.end method

.method final getStreamAndOpFlags()I
    .locals 0

    iget p0, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    return p0
.end method

.method final getStreamFlags()I
    .locals 0

    iget p0, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p0}, Ljava8/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result p0

    return p0
.end method

.method final isOrdered()Z
    .locals 1

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    iget p0, p0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, p0}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p0

    return p0
.end method

.method public final isParallel()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-boolean p0, p0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return p0
.end method

.method abstract lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;>;)",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method abstract makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node$Builder<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Ljava8/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Ljava8/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "stream has already been operated upon or closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Parallel evaluation is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    invoke-static {}, Ljava8/util/stream/AbstractPipeline$$Lambda$3;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava8/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method abstract opIsStateful()Z
.end method

.method abstract opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation
.end method

.method public final parallel()Ljava8/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method public final sequential()Ljava8/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava8/util/stream/AbstractPipeline;->parallel:Z

    return-object p0
.end method

.method final sourceStageSpliterator()Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_3

    iget-boolean v1, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    return-object v1

    :cond_0
    iget-object v0, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator;

    iget-object p0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    iput-object v2, p0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "source already consumed or closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public spliterator()Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->sourceStage:Ljava8/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_2

    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSpliterator:Ljava8/util/Spliterator;

    return-object v1

    :cond_0
    iget-object v1, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    if-eqz v1, :cond_1

    iput-object v2, v0, Ljava8/util/stream/AbstractPipeline;->sourceSupplier:Ljava8/util/function/Supplier;

    invoke-virtual {p0, v1}, Ljava8/util/stream/AbstractPipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "source already consumed or closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Ljava8/util/stream/AbstractPipeline$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava8/util/stream/AbstractPipeline;->wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method abstract wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final wrapAndCopyInto(Ljava8/util/function/Consumer;Ljava8/util/Spliterator;)Ljava8/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S_::",
            "Ljava8/util/function/Consumer<",
            "TE_OUT;>;>(TS_;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TS_;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/function/Consumer;

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->wrapSink(Ljava8/util/function/Consumer;)Ljava8/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava8/util/stream/AbstractPipeline;->copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V

    return-object p1
.end method

.method final wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S_::",
            "Ljava8/util/stream/Sink<",
            "TE_OUT;>;>(TS_;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TS_;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Sink;

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractPipeline;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava8/util/stream/AbstractPipeline;->copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V

    return-object p1
.end method

.method final wrapSink(Ljava8/util/function/Consumer;)Ljava8/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Consumer<",
            "TE_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava8/util/stream/AbstractPipeline$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/AbstractPipeline$1;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/Consumer;)V

    :goto_0
    iget p1, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-lez p1, :cond_0

    iget-object p1, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    iget p1, p1, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {p0, p1, v0}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v0

    iget-object p0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method final wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    iget v0, v0, Ljava8/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {p0, v0, p1}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object p1

    iget-object p0, p0, Ljava8/util/stream/AbstractPipeline;->previousStage:Ljava8/util/stream/AbstractPipeline;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method final wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    iget v0, p0, Ljava8/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava8/util/stream/AbstractPipeline$$Lambda$2;->lambdaFactory$(Ljava8/util/Spliterator;)Ljava8/util/function/Supplier;

    move-result-object p1

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Ljava8/util/stream/AbstractPipeline;->wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
