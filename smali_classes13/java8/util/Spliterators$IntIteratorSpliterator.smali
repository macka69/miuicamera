.class final Ljava8/util/Spliterators$IntIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava8/util/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Ljava8/util/PrimitiveIterator$OfInt;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfInt;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->est:J

    and-int/lit16 p1, p2, -0x4041

    iput p1, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava8/util/PrimitiveIterator$OfInt;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfInt;

    iput-wide p2, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->est:J

    and-int/lit16 p1, p4, 0x1000

    if-nez p1, :cond_0

    or-int/lit8 p1, p4, 0x40

    or-int/lit16 p4, p1, 0x4000

    :cond_0
    iput p4, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    iget p0, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    return p0
.end method

.method public estimateSize()J
    .locals 2

    iget-wide v0, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$IntIteratorSpliterator;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

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
    .locals 0

    iget-object p0, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfInt;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-static {p0, p1}, Ljava8/util/Iterators;->forEachRemaining(Ljava8/util/PrimitiveIterator$OfInt;Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$IntIteratorSpliterator;->hasCharacteristics(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
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

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$IntIteratorSpliterator;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

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
    .locals 1

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfInt;

    invoke-interface {p0}, Ljava8/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result p0

    invoke-interface {p1, p0}, Ljava8/util/function/IntConsumer;->accept(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 9

    iget-object v0, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfInt;

    iget-wide v1, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->est:J

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    long-to-int v3, v1

    :cond_0
    const/high16 v1, 0x2000000

    if-le v3, v1, :cond_1

    move v3, v1

    :cond_1
    new-array v1, v3, [I

    const/4 v2, 0x0

    move v4, v2

    :cond_2
    invoke-interface {v0}, Ljava8/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iput v4, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->batch:I

    iget-wide v5, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->est:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    int-to-long v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->est:J

    :cond_4
    new-instance v0, Ljava8/util/Spliterators$IntArraySpliterator;

    iget p0, p0, Ljava8/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    invoke-direct {v0, v1, v2, v4, p0}, Ljava8/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$IntIteratorSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$IntIteratorSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method
