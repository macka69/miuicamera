.class final Ljava8/util/Spliterators$LongIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava8/util/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Ljava8/util/PrimitiveIterator$OfLong;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    and-int/lit16 p1, p2, -0x4041

    iput p1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava8/util/PrimitiveIterator$OfLong;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    iput-wide p2, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    and-int/lit16 p1, p4, 0x1000

    if-nez p1, :cond_0

    or-int/lit8 p1, p4, 0x40

    or-int/lit16 p4, p1, 0x4000

    :cond_0
    iput p4, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    iget p0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return p0
.end method

.method public estimateSize()J
    .locals 2

    iget-wide v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$LongIteratorSpliterator;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

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

    iget-object p0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-static {p0, p1}, Ljava8/util/Iterators;->forEachRemaining(Ljava8/util/PrimitiveIterator$OfLong;Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$LongIteratorSpliterator;->hasCharacteristics(I)Z

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

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$LongIteratorSpliterator;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

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

    iget-object v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    invoke-interface {p0}, Ljava8/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 9

    iget-object v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    iget-wide v1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->batch:I

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
    new-array v1, v3, [J

    const/4 v2, 0x0

    move v4, v2

    :cond_2
    invoke-interface {v0}, Ljava8/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v5

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iput v4, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->batch:I

    iget-wide v5, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    int-to-long v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    :cond_4
    new-instance v0, Ljava8/util/Spliterators$LongArraySpliterator;

    iget p0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    invoke-direct {v0, v1, v2, v4, p0}, Ljava8/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method
