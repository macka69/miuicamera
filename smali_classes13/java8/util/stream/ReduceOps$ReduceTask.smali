.class final Ljava8/util/stream/ReduceOps$ReduceTask;
.super Ljava8/util/stream/AbstractTask;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReduceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "TP_OUT;TR;TS;>;>",
        "Ljava8/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TS;",
        "Ljava8/util/stream/ReduceOps$ReduceTask<",
        "TP_IN;TP_OUT;TR;TS;>;>;"
    }
.end annotation


# instance fields
.field private final op:Ljava8/util/stream/ReduceOps$ReduceOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/ReduceOps$ReduceOp<",
            "TP_OUT;TR;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/stream/ReduceOps$ReduceOp;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/ReduceOps$ReduceOp<",
            "TP_OUT;TR;TS;>;",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$ReduceTask;->op:Ljava8/util/stream/ReduceOps$ReduceOp;

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/ReduceOps$ReduceTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/ReduceOps$ReduceTask<",
            "TP_IN;TP_OUT;TR;TS;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/AbstractTask;Ljava8/util/Spliterator;)V

    iget-object p1, p1, Ljava8/util/stream/ReduceOps$ReduceTask;->op:Ljava8/util/stream/ReduceOps$ReduceOp;

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$ReduceTask;->op:Ljava8/util/stream/ReduceOps$ReduceOp;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$ReduceTask;->doLeaf()Ljava8/util/stream/ReduceOps$AccumulatingSink;

    move-result-object p0

    return-object p0
.end method

.method protected doLeaf()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$ReduceTask;->op:Ljava8/util/stream/ReduceOps$ReduceOp;

    invoke-virtual {v1}, Ljava8/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;

    move-result-object v1

    iget-object p0, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v0, v1, p0}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/ReduceOps$AccumulatingSink;

    return-object p0
.end method

.method protected bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/ReduceOps$ReduceTask;

    move-result-object p0

    return-object p0
.end method

.method protected makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/ReduceOps$ReduceTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/ReduceOps$ReduceTask<",
            "TP_IN;TP_OUT;TR;TS;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/ReduceOps$ReduceTask;-><init>(Ljava8/util/stream/ReduceOps$ReduceTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/ReduceOps$AccumulatingSink;

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/ReduceOps$ReduceTask;

    invoke-virtual {v1}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {v0, v1}, Ljava8/util/stream/ReduceOps$AccumulatingSink;->combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractTask;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    return-void
.end method
