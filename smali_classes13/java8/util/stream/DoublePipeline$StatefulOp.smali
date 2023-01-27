.class abstract Ljava8/util/stream/DoublePipeline$StatefulOp;
.super Ljava8/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StatefulOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/DoublePipeline<",
        "TE_IN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TE_IN;*>;",
            "Ljava8/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljava8/util/stream/DoublePipeline;-><init>(Ljava8/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/DoublePipeline;->iterator()Ljava8/util/PrimitiveIterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/DoublePipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method abstract opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method final opIsStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/DoubleStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/DoubleStream;

    return-object p0
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/DoubleStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/DoubleStream;

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/DoublePipeline;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/DoublePipeline;->unordered()Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method
