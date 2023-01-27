.class abstract Ljava8/util/stream/Streams$ConcatSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConcatSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Streams$ConcatSpliterator$OfDouble;,
        Ljava8/util/stream/Streams$ConcatSpliterator$OfLong;,
        Ljava8/util/stream/Streams$ConcatSpliterator$OfInt;,
        Ljava8/util/stream/Streams$ConcatSpliterator$OfPrimitive;,
        Ljava8/util/stream/Streams$ConcatSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final aSpliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field protected final bSpliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field beforeSplit:Z

.field final unsized:Z


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;Ljava8/util/Spliterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    iput-object p2, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    invoke-interface {p1}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-interface {p2}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide p1

    add-long/2addr v1, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->unsized:Z

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->characteristics()I

    move-result v0

    iget-object v1, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v1}, Ljava8/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v0, v1

    iget-boolean p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->unsized:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4040

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/lit8 p0, p0, 0x5

    not-int p0, p0

    and-int/2addr p0, v0

    return p0

    :cond_1
    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->characteristics()I

    move-result p0

    return p0
.end method

.method public estimateSize()J
    .locals 4

    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_1
    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    :cond_0
    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    return-object v0
.end method
