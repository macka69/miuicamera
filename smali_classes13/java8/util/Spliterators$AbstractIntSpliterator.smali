.class public abstract Ljava8/util/Spliterators$AbstractIntSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractIntSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->est:J

    and-int/lit8 p1, p3, 0x40

    if-eqz p1, :cond_0

    or-int/lit16 p3, p3, 0x4000

    :cond_0
    iput p3, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    iget p0, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->characteristics:I

    return p0
.end method

.method public estimateSize()J
    .locals 2

    iget-wide v0, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$AbstractIntSpliterator;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

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
    .locals 1

    :cond_0
    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractIntSpliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractIntSpliterator;->estimateSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractIntSpliterator;->characteristics()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

.method public trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 9

    new-instance v0, Ljava8/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;

    invoke-direct {v0}, Ljava8/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;-><init>()V

    iget-wide v1, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->est:J

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    invoke-interface {p0, v0}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->batch:I

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
    iget v5, v0, Ljava8/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;->value:I

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_3

    invoke-interface {p0, v0}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iput v4, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->batch:I

    iget-wide v5, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->est:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    int-to-long v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Ljava8/util/Spliterators$AbstractIntSpliterator;->est:J

    :cond_4
    new-instance v0, Ljava8/util/Spliterators$IntArraySpliterator;

    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractIntSpliterator;->characteristics()I

    move-result p0

    invoke-direct {v0, v1, v2, v4, p0}, Ljava8/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractIntSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractIntSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method
