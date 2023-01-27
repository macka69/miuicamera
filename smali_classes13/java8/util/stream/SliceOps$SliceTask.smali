.class final Ljava8/util/stream/SliceOps$SliceTask;
.super Ljava8/util/stream/AbstractShortCircuitTask;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SliceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;",
        "Ljava8/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava8/util/stream/SliceOps$SliceTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava8/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final op:Ljava8/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private final targetOffset:J

.field private final targetSize:J

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;JJ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    iput-object p1, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iput-object p4, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    iput-wide p5, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide p7, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/SliceOps$SliceTask;Ljava8/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/AbstractShortCircuitTask;Ljava8/util/Spliterator;)V

    iget-object p2, p1, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object p2, p1, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    iput-object p2, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    iget-wide v0, p1, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iput-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide p1, p1, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    iput-wide p1, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    return-void
.end method

.method private completedSize(J)J
    .locals 4

    iget-boolean v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    iget-wide p0, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide p0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/SliceOps$SliceTask;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {v0, p1, p2}, Ljava8/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v2

    cmp-long p0, v2, p1

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {v1, p1, p2}, Ljava8/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide p0

    add-long/2addr v2, p0

    :goto_0
    return-wide v2

    :cond_3
    :goto_1
    iget-wide p0, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    return-wide p0
.end method

.method private doTruncate(Ljava8/util/stream/Node;)Ljava8/util/stream/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    iget-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava8/util/stream/Node;->count()J

    move-result-wide v0

    iget-wide v2, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v4, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    :goto_0
    move-wide v5, v0

    iget-wide v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-object v7, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Ljava8/util/stream/Node;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method private isLeftCompleted(J)Z
    .locals 8

    iget-boolean v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, p1

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v2

    check-cast v2, Ljava8/util/stream/SliceOps$SliceTask;

    move-wide v6, v0

    move-object v0, p0

    move-object p0, v2

    move-wide v1, v6

    :goto_1
    if-eqz p0, :cond_3

    iget-object v4, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    if-eqz v0, :cond_2

    invoke-direct {v0, p1, p2}, Ljava8/util/stream/SliceOps$SliceTask;->completedSize(J)J

    move-result-wide v4

    add-long/2addr v1, v4

    cmp-long v0, v1, p1

    if-ltz v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_1

    :cond_3
    cmp-long p0, v1, p1

    if-ltz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    return v3
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    invoke-super {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->cancel()V

    iget-boolean v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->doLeaf()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method protected final doLeaf()Ljava8/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    iget-object v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget v3, v3, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v0, v3}, Ljava8/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v0, v1}, Ljava8/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v1

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava8/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    iget-object p0, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v2, v1, p0}, Ljava8/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z

    invoke-interface {v0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->generator:Ljava8/util/function/IntFunction;

    invoke-virtual {v0, v1, v2, v3}, Ljava8/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object v0

    iget-wide v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    iget-object v3, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v2, v1, v3}, Ljava8/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v1, v0, v2}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    :goto_0
    invoke-interface {v0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/stream/Node;->count()J

    move-result-wide v1

    iput-wide v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    return-object v0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method protected final getEmptyResult()Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/stream/Nodes;->emptyNode(Ljava8/util/stream/StreamShape;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/SliceOps$SliceTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/SliceOps$SliceTask;

    move-result-object p0

    return-object p0
.end method

.method protected makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/SliceOps$SliceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/SliceOps$SliceTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/SliceOps$SliceTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/SliceOps$SliceTask;-><init>(Ljava8/util/stream/SliceOps$SliceTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isLeaf()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v5, v0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    iget-boolean v0, p0, Ljava8/util/stream/AbstractShortCircuitTask;->canceled:Z

    if-eqz v0, :cond_0

    iput-wide v1, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/stream/SliceOps$SliceTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v3, v0, Ljava8/util/stream/SliceOps$SliceTask;->thisNodeSize:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/SliceOps$SliceTask;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    iget-object v3, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v3, Ljava8/util/stream/SliceOps$SliceTask;

    invoke-virtual {v3}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava8/util/stream/Node;

    iget-object v4, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v4, Ljava8/util/stream/SliceOps$SliceTask;

    invoke-virtual {v4}, Ljava8/util/stream/AbstractShortCircuitTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava8/util/stream/Node;

    invoke-static {v0, v3, v4}, Ljava8/util/stream/Nodes;->conc(Ljava8/util/stream/StreamShape;Ljava8/util/stream/Node;Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Ljava8/util/stream/SliceOps$SliceTask;->doTruncate(Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractShortCircuitTask;->setLocalResult(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->completed:Z

    :cond_4
    iget-wide v3, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetOffset:J

    iget-wide v2, p0, Ljava8/util/stream/SliceOps$SliceTask;->targetSize:J

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava8/util/stream/SliceOps$SliceTask;->isLeftCompleted(J)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->cancelLaterNodes()V

    :cond_5
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractTask;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    return-void
.end method
