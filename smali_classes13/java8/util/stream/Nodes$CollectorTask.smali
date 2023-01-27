.class Ljava8/util/stream/Nodes$CollectorTask;
.super Ljava8/util/stream/AbstractTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectorTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Nodes$CollectorTask$OfDouble;,
        Ljava8/util/stream/Nodes$CollectorTask$OfLong;,
        Ljava8/util/stream/Nodes$CollectorTask$OfInt;,
        Ljava8/util/stream/Nodes$CollectorTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava8/util/stream/Node<",
        "TP_OUT;>;T_BUI",
        "LDER::Ljava8/util/stream/Node$Builder<",
        "TP_OUT;>;>",
        "Ljava8/util/stream/AbstractTask<",
        "TP_IN;TP_OUT;TT_NODE;",
        "Ljava8/util/stream/Nodes$CollectorTask<",
        "TP_IN;TP_OUT;TT_NODE;TT_BUI",
        "LDER;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final builderFactory:Ljava8/util/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/LongFunction<",
            "TT_BUI",
            "LDER;",
            ">;"
        }
    .end annotation
.end field

.field protected final concFactory:Ljava8/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/BinaryOperator<",
            "TT_NODE;>;"
        }
    .end annotation
.end field

.field protected final helper:Ljava8/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/stream/Nodes$CollectorTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Nodes$CollectorTask<",
            "TP_IN;TP_OUT;TT_NODE;TT_BUI",
            "LDER;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/AbstractTask;Ljava8/util/Spliterator;)V

    iget-object p2, p1, Ljava8/util/stream/Nodes$CollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava8/util/stream/Nodes$CollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object p2, p1, Ljava8/util/stream/Nodes$CollectorTask;->builderFactory:Ljava8/util/function/LongFunction;

    iput-object p2, p0, Ljava8/util/stream/Nodes$CollectorTask;->builderFactory:Ljava8/util/function/LongFunction;

    iget-object p1, p1, Ljava8/util/stream/Nodes$CollectorTask;->concFactory:Ljava8/util/function/BinaryOperator;

    iput-object p1, p0, Ljava8/util/stream/Nodes$CollectorTask;->concFactory:Ljava8/util/function/BinaryOperator;

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/LongFunction;Ljava8/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/LongFunction<",
            "TT_BUI",
            "LDER;",
            ">;",
            "Ljava8/util/function/BinaryOperator<",
            "TT_NODE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    iput-object p1, p0, Ljava8/util/stream/Nodes$CollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    iput-object p3, p0, Ljava8/util/stream/Nodes$CollectorTask;->builderFactory:Ljava8/util/function/LongFunction;

    iput-object p4, p0, Ljava8/util/stream/Nodes$CollectorTask;->concFactory:Ljava8/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$CollectorTask;->doLeaf()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method protected doLeaf()Ljava8/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_NODE;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/Nodes$CollectorTask;->builderFactory:Ljava8/util/function/LongFunction;

    iget-object v1, p0, Ljava8/util/stream/Nodes$CollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v1, v2}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava8/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node$Builder;

    iget-object v1, p0, Ljava8/util/stream/Nodes$CollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object p0, p0, Ljava8/util/stream/AbstractTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v1, v0, p0}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$Builder;

    invoke-interface {p0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$CollectorTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/Nodes$CollectorTask;

    move-result-object p0

    return-object p0
.end method

.method protected makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/Nodes$CollectorTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/Nodes$CollectorTask<",
            "TP_IN;TP_OUT;TT_NODE;TT_BUI",
            "LDER;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/Nodes$CollectorTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Nodes$CollectorTask;-><init>(Ljava8/util/stream/Nodes$CollectorTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method public onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 3
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

    iget-object v0, p0, Ljava8/util/stream/Nodes$CollectorTask;->concFactory:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/AbstractTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/Nodes$CollectorTask;

    invoke-virtual {v1}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava8/util/stream/AbstractTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v2, Ljava8/util/stream/Nodes$CollectorTask;

    invoke-virtual {v2}, Ljava8/util/stream/AbstractTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/AbstractTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractTask;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    return-void
.end method
