.class final Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;
.super Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava8/util/Spliterator$OfDouble;",
        "Ljava8/util/function/DoubleConsumer;",
        ">;",
        "Ljava8/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfDouble;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfDouble;JJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method

.method static synthetic lambda$emptyConsumer$152(D)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->emptyConsumer()Ljava8/util/function/DoubleConsumer;

    move-result-object p0

    return-object p0
.end method

.method protected emptyConsumer()Ljava8/util/function/DoubleConsumer;
    .locals 0

    invoke-static {}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$$Lambda$1;->lambdaFactory$()Ljava8/util/function/DoubleConsumer;

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
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

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

.method protected makeSpliterator(Ljava8/util/Spliterator$OfDouble;JJJJ)Ljava8/util/Spliterator$OfDouble;
    .locals 11

    new-instance v10, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava8/util/Spliterator$OfDouble;JJJJ)V

    return-object v10
.end method

.method protected bridge synthetic makeSpliterator(Ljava8/util/Spliterator;JJJJ)Ljava8/util/Spliterator;
    .locals 0

    check-cast p1, Ljava8/util/Spliterator$OfDouble;

    invoke-virtual/range {p0 .. p9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->makeSpliterator(Ljava8/util/Spliterator$OfDouble;JJJJ)Ljava8/util/Spliterator$OfDouble;

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
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfDouble;

    return-object p0
.end method
