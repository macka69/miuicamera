.class final Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;
.super Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final s:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava8/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/Supplier<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    iput-object p3, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava8/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators;->forEachRemaining(Ljava8/util/Spliterator;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava8/util/function/Supplier;

    invoke-interface {p0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    const/4 v3, 0x1

    ushr-long/2addr v0, v3

    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;->s:Ljava8/util/function/Supplier;

    invoke-direct {v2, v0, v1, p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava8/util/function/Supplier;)V

    return-object v2
.end method
