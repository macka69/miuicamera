.class abstract Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_BUFFER:",
        "Ljava8/util/stream/AbstractSpinedBuffer;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field buffer:Ljava8/util/stream/AbstractSpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_BUFFER;"
        }
    .end annotation
.end field

.field bufferSink:Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field finished:Z

.field final isParallel:Z

.field nextToConsume:J

.field final ph:Ljava8/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field pusher:Ljava8/util/function/BooleanSupplier;

.field spliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field private spliteratorSupplier:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;"
        }
    .end annotation
.end field


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    const/4 p1, 0x0

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava8/util/function/Supplier;

    iput-object p2, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    iput-boolean p3, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava8/util/function/Supplier;

    const/4 p1, 0x0

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    iput-boolean p3, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    return-void
.end method

.method private fillBuffer()Z
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava8/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava8/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-boolean v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->end()V

    iput-boolean v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public final characteristics()I
    .locals 2

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v0}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v0

    invoke-static {v0}, Ljava8/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    invoke-static {v0}, Ljava8/util/stream/StreamOpFlag;->toCharacteristics(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    and-int/lit16 v0, v0, -0x4041

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->characteristics()I

    move-result p0

    and-int/lit16 p0, p0, 0x4040

    or-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method final doAdvance()Z
    .locals 8

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->initPartialTraversalState()V

    iput-wide v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-interface {v1}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava8/util/stream/Sink;->begin(J)V

    invoke-direct {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    move-result p0

    return p0

    :cond_1
    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v0}, Ljava8/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    iput-wide v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractSpinedBuffer;->clear()V

    invoke-direct {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    move-result v3

    :cond_3
    return v3
.end method

.method public final estimateSize()J
    .locals 2

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->hasCharacteristics(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final getExactSizeIfKnown()J
    .locals 2

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    sget-object v0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p0

    return p0
.end method

.method final init()V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava8/util/function/Supplier;

    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator;

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava8/util/function/Supplier;

    :cond_0
    return-void
.end method

.method abstract initPartialTraversalState()V
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s[%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->wrap(Ljava8/util/Spliterator;)Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method abstract wrap(Ljava8/util/Spliterator;)Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
            "TP_IN;TP_OUT;*>;"
        }
    .end annotation
.end method
