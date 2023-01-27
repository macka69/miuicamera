.class Ljava8/util/stream/IntPipeline$Head;
.super Ljava8/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/IntPipeline<",
        "TE_IN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/IntPipeline;-><init>(Ljava8/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/function/Supplier;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/IntPipeline;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava8/util/function/IntConsumer;)V
    .locals 1

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava8/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/stream/IntPipeline;->access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/IntPipeline;->forEach(Ljava8/util/function/IntConsumer;)V

    :goto_0
    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/IntConsumer;)V
    .locals 1

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava8/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/stream/IntPipeline;->access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/IntPipeline;->forEachOrdered(Ljava8/util/function/IntConsumer;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/IntPipeline;->iterator()Ljava8/util/PrimitiveIterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/IntPipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method final opIsStateful()Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method final opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/IntStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/IntStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/IntPipeline;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/IntPipeline;->unordered()Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
