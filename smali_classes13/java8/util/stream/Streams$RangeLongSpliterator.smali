.class final Ljava8/util/stream/Streams$RangeLongSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeLongSpliterator"
.end annotation


# static fields
.field private static final BALANCED_SPLIT_THRESHOLD:J = 0x1000000L

.field private static final RIGHT_BALANCED_SPLIT_RATIO:J = 0x8L


# instance fields
.field private from:J

.field private last:I

.field private final upTo:J


# direct methods
.method private constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->from:J

    iput-wide p3, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iput p5, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->last:I

    return-void
.end method

.method constructor <init>(JJZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    return-void
.end method

.method private splitPoint(J)J
    .locals 2

    const-wide/32 v0, 0x1000000

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x8

    :goto_0
    div-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    const/16 p0, 0x4555

    return p0
.end method

.method public estimateSize()J
    .locals 4

    iget-wide v0, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget-wide v2, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->from:J

    sub-long/2addr v0, v2

    iget p0, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->last:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$RangeLongSpliterator;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

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
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v2, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget v4, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->last:I

    iput-wide v2, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->from:J

    const/4 v5, 0x0

    iput v5, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->last:I

    :goto_0
    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    move-wide v0, v5

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$RangeLongSpliterator;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

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
    .locals 6

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v2, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->upTo:J

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    return v3

    :cond_0
    iget v2, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->last:I

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iput v4, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->last:I

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    return v3

    :cond_1
    return v4
.end method

.method public trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 7

    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeLongSpliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava8/util/stream/Streams$RangeLongSpliterator;

    iget-wide v2, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-direct {p0, v0, v1}, Ljava8/util/stream/Streams$RangeLongSpliterator;->splitPoint(J)J

    move-result-wide v0

    add-long v4, v2, v0

    iput-wide v4, p0, Ljava8/util/stream/Streams$RangeLongSpliterator;->from:J

    const/4 p0, 0x0

    move-object v0, v6

    move-wide v1, v2

    move-wide v3, v4

    move v5, p0

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    move-object p0, v6

    :goto_0
    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method
