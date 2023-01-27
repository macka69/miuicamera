.class final Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;
.super Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava8/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final s:Ljava8/util/function/LongSupplier;


# direct methods
.method constructor <init>(JLjava8/util/function/LongSupplier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    iput-object p3, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava8/util/function/LongSupplier;

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

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
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 2

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava8/util/function/LongSupplier;

    invoke-interface {p0}, Ljava8/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 4

    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    const/4 v3, 0x1

    ushr-long/2addr v0, v3

    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava8/util/function/LongSupplier;

    invoke-direct {v2, v0, v1, p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava8/util/function/LongSupplier;)V

    return-object v2
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method
