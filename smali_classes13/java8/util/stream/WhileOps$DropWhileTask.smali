.class final Ljava8/util/stream/WhileOps$DropWhileTask;
.super Ljava8/util/stream/AbstractTask;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DropWhileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;",
        "Ljava8/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava8/util/stream/WhileOps$DropWhileTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private final generator:Ljava8/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private index:J

.field private final isOrdered:Z

.field private final op:Ljava8/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)V
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
            "[TP_OUT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    iput-object p1, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iput-object p4, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->generator:Ljava8/util/function/IntFunction;

    sget-object p1, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p1

    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/WhileOps$DropWhileTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/WhileOps$DropWhileTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/AbstractTask;Ljava8/util/Spliterator;)V

    iget-object p2, p1, Ljava8/util/stream/WhileOps$DropWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object p2, p1, Ljava8/util/stream/WhileOps$DropWhileTask;->generator:Ljava8/util/function/IntFunction;

    iput-object p2, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->generator:Ljava8/util/function/IntFunction;

    iget-boolean p1, p1, Ljava8/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    return-void
.end method

.method private doTruncate(Ljava8/util/stream/Node;)Ljava8/util/stream/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->index:J

    invoke-interface {p1}, Ljava8/util/stream/Node;->count()J

    move-result-wide v4

    iget-object v6, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->generator:Ljava8/util/function/IntFunction;

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Ljava8/util/stream/Node;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private merge()Ljava8/util/stream/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    move-object v1, v0

    check-cast v1, Ljava8/util/stream/WhileOps$DropWhileTask;

    iget-wide v1, v1, Ljava8/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p0, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast p0, Ljava8/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node;

    return-object p0

    :cond_0
    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/WhileOps$DropWhileTask;

    iget-wide v1, v1, Ljava8/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    check-cast v0, Ljava8/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node;

    return-object p0

    :cond_1
    iget-object v0, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {v1}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/Node;

    iget-object p0, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast p0, Ljava8/util/stream/WhileOps$DropWhileTask;

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node;

    invoke-static {v0, v1, p0}, Ljava8/util/stream/Nodes;->conc(Ljava8/util/stream/StreamShape;Ljava8/util/stream/Node;Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$DropWhileTask;->doLeaf()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method protected final doLeaf()Ljava8/util/stream/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    iget-object v3, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget v3, v3, Ljava8/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    invoke-virtual {v2, v3}, Ljava8/util/stream/StreamOpFlag;->isPreserved(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v3, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v2, v3}, Ljava8/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    iget-object v4, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v5, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->generator:Ljava8/util/function/IntFunction;

    invoke-virtual {v4, v2, v3, v5}, Ljava8/util/stream/PipelineHelper;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object v2

    iget-object v3, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    check-cast v3, Ljava8/util/stream/WhileOps$DropWhileOp;

    iget-boolean v4, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3, v2, v1}, Ljava8/util/stream/WhileOps$DropWhileOp;->opWrapSink(Ljava8/util/stream/Sink;Z)Ljava8/util/stream/WhileOps$DropWhileSink;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v3, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v1, v0, v3}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    invoke-interface {v2}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object v1

    invoke-interface {v1}, Ljava8/util/stream/Node;->count()J

    move-result-wide v2

    iput-wide v2, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    invoke-interface {v0}, Ljava8/util/stream/WhileOps$DropWhileSink;->getDropCount()J

    move-result-wide v2

    iput-wide v2, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->index:J

    return-object v1
.end method

.method protected bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$DropWhileTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/WhileOps$DropWhileTask;

    move-result-object p0

    return-object p0
.end method

.method protected makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/WhileOps$DropWhileTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/WhileOps$DropWhileTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/WhileOps$DropWhileTask;-><init>(Ljava8/util/stream/WhileOps$DropWhileTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    move-object v1, v0

    check-cast v1, Ljava8/util/stream/WhileOps$DropWhileTask;

    iget-wide v1, v1, Ljava8/util/stream/WhileOps$DropWhileTask;->index:J

    iput-wide v1, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->index:J

    check-cast v0, Ljava8/util/stream/WhileOps$DropWhileTask;

    iget-wide v3, v0, Ljava8/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$DropWhileTask;

    iget-wide v3, v0, Ljava8/util/stream/WhileOps$DropWhileTask;->index:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->index:J

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$DropWhileTask;

    iget-wide v0, v0, Ljava8/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v2, Ljava8/util/stream/WhileOps$DropWhileTask;

    iget-wide v2, v2, Ljava8/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/stream/WhileOps$DropWhileTask;->thisNodeSize:J

    invoke-direct {p0}, Ljava8/util/stream/WhileOps$DropWhileTask;->merge()Ljava8/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Ljava8/util/stream/WhileOps$DropWhileTask;->doTruncate(Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_2
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractTask;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    return-void
.end method
