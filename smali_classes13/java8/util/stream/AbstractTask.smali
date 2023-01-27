.class abstract Ljava8/util/stream/AbstractTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "AbstractTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava8/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TR;TK;>;>",
        "Ljava8/util/concurrent/CountedCompleter<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final LEAF_TARGET:I


# instance fields
.field protected final helper:Ljava8/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field protected leftChild:Ljava8/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private localResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field protected rightChild:Ljava8/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected spliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field protected targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    sput v0, Ljava8/util/stream/AbstractTask;->LEAF_TARGET:I

    return-void
.end method

.method protected constructor <init>(Ljava8/util/stream/AbstractTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    iget-object p2, p1, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-wide p1, p1, Ljava8/util/stream/AbstractTask;->targetSize:J

    iput-wide p1, p0, Ljava8/util/stream/AbstractTask;->targetSize:J

    return-void
.end method

.method protected constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p1, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ljava8/util/stream/AbstractTask;->targetSize:J

    return-void
.end method

.method public static getLeafTarget()I
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava8/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava8/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->getPool()Ljava8/util/concurrent/ForkJoinPool;

    move-result-object v0

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinPool;->getParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    sget v0, Ljava8/util/stream/AbstractTask;->LEAF_TARGET:I

    return v0
.end method

.method public static suggestTargetSize(J)J
    .locals 2

    invoke-static {}, Ljava8/util/stream/AbstractTask;->getLeafTarget()I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x1

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public compute()V
    .locals 8

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava8/util/stream/AbstractTask;->getTargetSize(J)J

    move-result-wide v3

    const/4 v5, 0x0

    :goto_0
    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava8/util/stream/AbstractTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;

    move-result-object v2

    iput-object v2, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;

    move-result-object v6

    iput-object v6, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava8/util/concurrent/CountedCompleter;->setPendingCount(I)V

    if-eqz v5, :cond_0

    move-object v0, v1

    move-object p0, v2

    move-object v2, v6

    goto :goto_1

    :cond_0
    move-object p0, v6

    :goto_1
    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->doLeaf()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method

.method protected abstract doLeaf()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected getLocalResult()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object p0
.end method

.method protected getParent()Ljava8/util/stream/AbstractTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->getCompleter()Ljava8/util/concurrent/CountedCompleter;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/AbstractTask;

    return-object p0
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-object p0
.end method

.method protected final getTargetSize(J)J
    .locals 4

    iget-wide v0, p0, Ljava8/util/stream/AbstractTask;->targetSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava8/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava8/util/stream/AbstractTask;->targetSize:J

    :goto_0
    return-wide v0
.end method

.method protected isLeaf()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isLeftmostNode()Z
    .locals 2

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    if-eq v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected isRoot()Z
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/AbstractTask;->getParent()Ljava8/util/stream/AbstractTask;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TK;"
        }
    .end annotation
.end method

.method public onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    iput-object p1, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    iput-object p1, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    return-void
.end method

.method protected setLocalResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava8/util/stream/AbstractTask;->localResult:Ljava/lang/Object;

    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
