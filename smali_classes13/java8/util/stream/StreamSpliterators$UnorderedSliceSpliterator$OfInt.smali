.class final Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;
.super Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;
.implements Ljava8/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava8/util/function/IntConsumer;",
        "Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;",
        "Ljava8/util/Spliterator$OfInt;",
        ">;",
        "Ljava8/util/Spliterator$OfInt;",
        "Ljava8/util/function/IntConsumer;"
    }
.end annotation


# instance fields
.field tmpValue:I


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfInt;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfInt;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 0

    iput p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->acceptConsumed(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava8/util/function/IntConsumer;)V
    .locals 0

    iget p0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    invoke-interface {p1, p0}, Ljava8/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method protected bufferCreate(I)Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
    .locals 0

    new-instance p0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    invoke-direct {p0, p1}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;-><init>(I)V

    return-object p0
.end method

.method protected bridge synthetic bufferCreate(I)Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->bufferCreate(I)Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    move-result-object p0

    return-object p0
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

.method public bridge synthetic forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

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

.method protected makeSpliterator(Ljava8/util/Spliterator$OfInt;)Ljava8/util/Spliterator$OfInt;
    .locals 1

    new-instance v0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Ljava8/util/Spliterator$OfInt;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    check-cast p1, Ljava8/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->makeSpliterator(Ljava8/util/Spliterator$OfInt;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
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

.method public bridge synthetic tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfInt;

    return-object p0
.end method
