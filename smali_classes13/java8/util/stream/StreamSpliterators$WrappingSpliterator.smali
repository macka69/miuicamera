.class final Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;
.super Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;TP_OUT;",
        "Ljava8/util/stream/SpinedBuffer<",
        "TP_OUT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
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
            "TP_OUT;>;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-void
.end method

.method static synthetic lambda$initPartialTraversalState$144(Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;)Z
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TP_OUT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator$$Lambda$3;->lambdaFactory$(Ljava8/util/function/Consumer;)Ljava8/util/function/Consumer;

    move-result-object p1

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v0, p1, v1}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/function/Consumer;Ljava8/util/Spliterator;)Ljava8/util/function/Consumer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 2

    new-instance v0, Ljava8/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    invoke-static {v0}, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/SpinedBuffer;)Ljava8/util/function/Consumer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/function/Consumer;)Ljava8/util/stream/Sink;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    invoke-static {p0}, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator$$Lambda$2;->lambdaFactory$(Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;)Ljava8/util/function/BooleanSupplier;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava8/util/function/BooleanSupplier;

    return-void
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava8/util/stream/SpinedBuffer;

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava8/util/stream/SpinedBuffer;->get(J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method bridge synthetic wrap(Ljava8/util/Spliterator;)Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;->wrap(Ljava8/util/Spliterator;)Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;

    move-result-object p0

    return-object p0
.end method

.method wrap(Ljava8/util/Spliterator;)Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/StreamSpliterators$WrappingSpliterator<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    iget-boolean p0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, p0}, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V

    return-object v0
.end method
