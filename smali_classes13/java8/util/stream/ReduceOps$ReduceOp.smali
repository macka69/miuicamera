.class abstract Ljava8/util/stream/ReduceOps$ReduceOp;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ReduceOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/TerminalOp<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final inputShape:Ljava8/util/stream/StreamShape;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$ReduceOp;->inputShape:Ljava8/util/stream/StreamShape;

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/ReduceOps$ReduceTask;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/ReduceOps$ReduceTask;-><init>(Ljava8/util/stream/ReduceOps$ReduceOp;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {p0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$ReduceOp;->makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/ReduceOps$AccumulatingSink;

    invoke-interface {p0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOpFlags()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public inputShape()Ljava8/util/stream/StreamShape;
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/ReduceOps$ReduceOp;->inputShape:Ljava8/util/stream/StreamShape;

    return-object p0
.end method

.method public abstract makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
