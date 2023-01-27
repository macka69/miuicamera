.class final Ljava8/util/stream/FindOps$FindOp;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljava8/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/TerminalOp<",
        "TT;TO;>;"
    }
.end annotation


# instance fields
.field final emptyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field final opFlags:I

.field final presentPredicate:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final shape:Ljava8/util/stream/StreamShape;

.field final sinkSupplier:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "TT;TO;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava8/util/stream/StreamShape;",
            "TO;",
            "Ljava8/util/function/Predicate<",
            "TO;>;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "TT;TO;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Ljava8/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Ljava8/util/stream/FindOps$FindOp;->opFlags:I

    iput-object p2, p0, Ljava8/util/stream/FindOps$FindOp;->shape:Ljava8/util/stream/StreamShape;

    iput-object p3, p0, Ljava8/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    iput-object p4, p0, Ljava8/util/stream/FindOps$FindOp;->presentPredicate:Ljava8/util/function/Predicate;

    iput-object p5, p0, Ljava8/util/stream/FindOps$FindOp;->sinkSupplier:Ljava8/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TO;"
        }
    .end annotation

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    new-instance v1, Ljava8/util/stream/FindOps$FindTask;

    invoke-direct {v1, p0, v0, p1, p2}, Ljava8/util/stream/FindOps$FindTask;-><init>(Ljava8/util/stream/FindOps$FindOp;ZLjava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    invoke-virtual {v1}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;)TO;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/FindOps$FindOp;->sinkSupplier:Ljava8/util/function/Supplier;

    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Sink;

    invoke-virtual {p1, v0, p2}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/TerminalSink;

    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljava8/util/stream/FindOps$FindOp;->emptyValue:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public getOpFlags()I
    .locals 0

    iget p0, p0, Ljava8/util/stream/FindOps$FindOp;->opFlags:I

    return p0
.end method

.method public inputShape()Ljava8/util/stream/StreamShape;
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/FindOps$FindOp;->shape:Ljava8/util/stream/StreamShape;

    return-object p0
.end method
