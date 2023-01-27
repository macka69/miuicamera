.class final Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;
.super Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Integer;",
        "Ljava8/util/stream/SpinedBuffer$OfInt;",
        ">;",
        "Ljava8/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-void
.end method

.method static synthetic lambda$initPartialTraversalState$145(Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;)Z
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    new-instance v0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$2;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$2;-><init>(Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;Ljava8/util/function/IntConsumer;)V

    iget-object p1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {p1, v0, v1}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 2

    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfInt;-><init>()V

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    new-instance v1, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$1;

    invoke-direct {v1, p0, v0}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$1;-><init>(Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;Ljava8/util/stream/SpinedBuffer$OfInt;)V

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v0, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    invoke-static {p0}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;)Ljava8/util/function/BooleanSupplier;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava8/util/function/BooleanSupplier;

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 4

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava8/util/stream/SpinedBuffer$OfInt;

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava8/util/stream/SpinedBuffer$OfInt;->get(J)I

    move-result p0

    invoke-interface {p1, p0}, Ljava8/util/function/IntConsumer;->accept(I)V

    :cond_0
    return v0
.end method

.method public trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfInt;

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method wrap(Ljava8/util/Spliterator;)Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
            "TP_IN;",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    iget-boolean p0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, p0}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V

    return-object v0
.end method
