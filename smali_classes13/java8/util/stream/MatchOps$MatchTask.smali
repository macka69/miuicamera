.class final Ljava8/util/stream/MatchOps$MatchTask;
.super Ljava8/util/stream/AbstractShortCircuitTask;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchTask"
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
        "Ljava/lang/Boolean;",
        "Ljava8/util/stream/MatchOps$MatchTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private final op:Ljava8/util/stream/MatchOps$MatchOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/MatchOps$MatchOp<",
            "TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/stream/MatchOps$MatchOp;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/MatchOps$MatchOp<",
            "TP_OUT;>;",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    iput-object p1, p0, Ljava8/util/stream/MatchOps$MatchTask;->op:Ljava8/util/stream/MatchOps$MatchOp;

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/MatchOps$MatchTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/MatchOps$MatchTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/AbstractShortCircuitTask;Ljava8/util/Spliterator;)V

    iget-object p1, p1, Ljava8/util/stream/MatchOps$MatchTask;->op:Ljava8/util/stream/MatchOps$MatchOp;

    iput-object p1, p0, Ljava8/util/stream/MatchOps$MatchTask;->op:Ljava8/util/stream/MatchOps$MatchOp;

    return-void
.end method


# virtual methods
.method protected doLeaf()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Ljava8/util/stream/AbstractTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava8/util/stream/MatchOps$MatchTask;->op:Ljava8/util/stream/MatchOps$MatchOp;

    iget-object v1, v1, Ljava8/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava8/util/function/Supplier;

    invoke-interface {v1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/Sink;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {v0}, Ljava8/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    move-result v0

    iget-object v1, p0, Ljava8/util/stream/MatchOps$MatchTask;->op:Ljava8/util/stream/MatchOps$MatchOp;

    iget-object v1, v1, Ljava8/util/stream/MatchOps$MatchOp;->matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {v1}, Ljava8/util/stream/MatchOps$MatchKind;->access$100(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractShortCircuitTask;->shortCircuit(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/MatchOps$MatchTask;->doLeaf()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected getEmptyResult()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/MatchOps$MatchTask;->op:Ljava8/util/stream/MatchOps$MatchOp;

    iget-object p0, p0, Ljava8/util/stream/MatchOps$MatchOp;->matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p0}, Ljava8/util/stream/MatchOps$MatchKind;->access$100(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/MatchOps$MatchTask;->getEmptyResult()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/MatchOps$MatchTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/MatchOps$MatchTask;

    move-result-object p0

    return-object p0
.end method

.method protected makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/MatchOps$MatchTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/MatchOps$MatchTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/MatchOps$MatchTask;-><init>(Ljava8/util/stream/MatchOps$MatchTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method
