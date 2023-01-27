.class final Ljava8/util/stream/Streams$IntStreamBuilderImpl;
.super Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava8/util/stream/IntStream$Builder;
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Integer;",
        "Ljava8/util/Spliterator$OfInt;",
        ">;",
        "Ljava8/util/stream/IntStream$Builder;",
        "Ljava8/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

.field first:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    iput p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    const/4 p1, -0x2

    iput p1, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    iput p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    iget-object v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    if-nez v0, :cond_1

    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfInt;-><init>()V

    iput-object v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    iget v1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-virtual {v0, v1}, Ljava8/util/stream/SpinedBuffer$OfInt;->accept(I)V

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    :cond_1
    iget-object p0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfInt;->accept(I)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public add(I)Ljava8/util/stream/IntStream$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->accept(I)V

    return-object p0
.end method

.method public build()Ljava8/util/stream/IntStream;
    .locals 3

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-ltz v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    :goto_0
    invoke-static {p0, v2}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

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

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    const/4 p1, -0x1

    iput p1, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

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
    .locals 2

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    const/4 p1, -0x1

    iput p1, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfInt;

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfPrimitive;

    return-object p0
.end method
