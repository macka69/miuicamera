.class abstract Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava8/util/function/IntConsumer;
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;,
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Integer;",
        "Ljava8/util/Spliterator$OfInt;",
        ">;",
        "Ljava8/util/function/IntConsumer;",
        "Ljava8/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final p:Ljava8/util/function/IntPredicate;

.field t:I


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfInt;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    iget-object p1, p2, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava8/util/function/IntPredicate;

    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava8/util/function/IntPredicate;

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfInt;ZLjava8/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava8/util/Spliterator;Z)V

    iput-object p3, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava8/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    iget v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    iput p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->t:I

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

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

    invoke-static {p0, p1}, Ljava8/util/Spliterators;->forEachRemaining(Ljava8/util/Spliterator;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

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

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfInt;

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfPrimitive;

    return-object p0
.end method
