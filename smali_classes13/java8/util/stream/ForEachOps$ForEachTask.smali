.class final Ljava8/util/stream/ForEachOps$ForEachTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final helper:Ljava8/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sink:Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/Sink<",
            "TS;>;"
        }
    .end annotation
.end field

.field private spliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field private targetSize:J


# direct methods
.method constructor <init>(Ljava8/util/stream/ForEachOps$ForEachTask;Ljava8/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/ForEachOps$ForEachTask<",
            "TS;TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava8/util/Spliterator;

    iget-object p2, p1, Ljava8/util/stream/ForEachOps$ForEachTask;->sink:Ljava8/util/stream/Sink;

    iput-object p2, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->sink:Ljava8/util/stream/Sink;

    iget-wide v0, p1, Ljava8/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iput-wide v0, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iget-object p1, p1, Ljava8/util/stream/ForEachOps$ForEachTask;->helper:Ljava8/util/stream/PipelineHelper;

    iput-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->helper:Ljava8/util/stream/PipelineHelper;

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;",
            "Ljava8/util/stream/Sink<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p3, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->sink:Ljava8/util/stream/Sink;

    iput-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->helper:Ljava8/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava8/util/Spliterator;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->targetSize:J

    return-void
.end method


# virtual methods
.method public compute()V
    .locals 11

    iget-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v1

    iget-wide v3, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->targetSize:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    invoke-static {v1, v2}, Ljava8/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v3

    iput-wide v3, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->targetSize:J

    :cond_0
    sget-object v5, Ljava8/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava8/util/stream/StreamOpFlag;

    iget-object v6, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v6}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->sink:Ljava8/util/stream/Sink;

    :goto_0
    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_1
    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava8/util/stream/ForEachOps$ForEachTask;

    invoke-direct {v2, p0, v1}, Ljava8/util/stream/ForEachOps$ForEachTask;-><init>(Ljava8/util/stream/ForEachOps$ForEachTask;Ljava8/util/Spliterator;)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava8/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    if-eqz v6, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    :goto_1
    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v8

    move-object p0, v2

    move-wide v1, v8

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v1, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v1, v7, v0}, Ljava8/util/stream/PipelineHelper;->copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void
.end method
