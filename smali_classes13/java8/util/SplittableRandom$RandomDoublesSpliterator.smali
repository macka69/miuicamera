.class final Ljava8/util/SplittableRandom$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/SplittableRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final bound:D

.field final fence:J

.field index:J

.field final origin:D

.field final rng:Ljava8/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava8/util/SplittableRandom;JJDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava8/util/SplittableRandom;

    iput-wide p2, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iput-wide p4, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    iput-wide p6, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iput-wide p8, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    const/16 p0, 0x4540

    return p0
.end method

.method public estimateSize()J
    .locals 4

    iget-wide v0, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    iget-wide v2, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 11

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-wide v2, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iput-wide v2, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-object v4, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava8/util/SplittableRandom;

    iget-wide v5, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v7, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    :cond_0
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava8/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    const-wide/16 v9, 0x1

    add-long/2addr v0, v9

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object p0

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

    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

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
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 7

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-wide v2, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava8/util/SplittableRandom;

    iget-wide v3, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v5, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava8/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava8/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava8/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->trySplit()Ljava8/util/SplittableRandom$RandomDoublesSpliterator;

    move-result-object p0

    return-object p0
.end method

.method public trySplit()Ljava8/util/SplittableRandom$RandomDoublesSpliterator;
    .locals 11

    iget-wide v2, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-wide v0, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v10, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;

    iget-object v0, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->rng:Ljava8/util/SplittableRandom;

    invoke-virtual {v0}, Ljava8/util/SplittableRandom;->split()Ljava8/util/SplittableRandom;

    move-result-object v1

    iput-wide v4, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->index:J

    iget-wide v6, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->origin:D

    iget-wide v8, p0, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;->bound:D

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ljava8/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava8/util/SplittableRandom;JJDD)V

    move-object p0, v10

    :goto_0
    return-object p0
.end method
