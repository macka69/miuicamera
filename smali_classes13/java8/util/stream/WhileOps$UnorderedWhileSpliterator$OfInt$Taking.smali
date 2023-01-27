.class final Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfInt;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava8/util/Spliterator$OfInt;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfInt;ZLjava8/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;-><init>(Ljava8/util/Spliterator$OfInt;ZLjava8/util/function/IntPredicate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-super {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method makeSpliterator(Ljava8/util/Spliterator$OfInt;)Ljava8/util/Spliterator$OfInt;
    .locals 1

    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljava8/util/Spliterator$OfInt;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    check-cast p1, Ljava8/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->makeSpliterator(Ljava8/util/Spliterator$OfInt;)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 3

    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->checkCancelOnCount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfInt;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava8/util/function/IntPredicate;

    iget v2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->t:I

    invoke-interface {v0, v2}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->t:I

    invoke-interface {p1, p0}, Ljava8/util/function/IntConsumer;->accept(I)V

    return v1

    :cond_0
    move v0, v1

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfInt;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method
