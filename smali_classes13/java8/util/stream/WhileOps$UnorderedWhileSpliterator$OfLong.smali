.class abstract Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava8/util/function/LongConsumer;
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;,
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Long;",
        "Ljava8/util/Spliterator$OfLong;",
        ">;",
        "Ljava8/util/function/LongConsumer;",
        "Ljava8/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final p:Ljava8/util/function/LongPredicate;

.field t:J


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfLong;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    iget-object p1, p2, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava8/util/function/LongPredicate;

    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava8/util/function/LongPredicate;

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfLong;ZLjava8/util/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava8/util/Spliterator;Z)V

    iput-object p3, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava8/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    iget v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    iput-wide p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->t:J

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

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

.method public hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p0

    return p0
.end method

.method makeSpliterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/Spliterator$OfLong;
    .locals 1

    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;-><init>(Ljava8/util/Spliterator$OfLong;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    check-cast p1, Ljava8/util/Spliterator$OfLong;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->makeSpliterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfLong;

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfPrimitive;

    return-object p0
.end method
