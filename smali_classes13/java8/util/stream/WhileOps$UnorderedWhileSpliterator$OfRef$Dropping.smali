.class final Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;",
            "Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator;ZLjava8/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;Z",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;ZLjava8/util/function/Predicate;)V

    return-void
.end method


# virtual methods
.method makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;)V

    return-object v0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v2, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->checkCancelOnCount()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava8/util/function/Predicate;

    iget-object v4, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->t:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    iget-object p0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->t:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return v2

    :cond_3
    iget-object p0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method
