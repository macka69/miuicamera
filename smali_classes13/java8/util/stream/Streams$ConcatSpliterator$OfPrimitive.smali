.class abstract Ljava8/util/stream/Streams$ConcatSpliterator$OfPrimitive;
.super Ljava8/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava8/util/stream/Streams$ConcatSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava8/util/Spliterator$OfPrimitive;Ljava8/util/Spliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Streams$ConcatSpliterator;-><init>(Ljava8/util/Spliterator;Ljava8/util/Spliterator;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava8/util/Spliterator$OfPrimitive;Ljava8/util/Spliterator$OfPrimitive;Ljava8/util/stream/Streams$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Streams$ConcatSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;Ljava8/util/Spliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    check-cast p0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
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

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    check-cast p0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    check-cast p0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/Streams$ConcatSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfPrimitive;

    return-object p0
.end method
