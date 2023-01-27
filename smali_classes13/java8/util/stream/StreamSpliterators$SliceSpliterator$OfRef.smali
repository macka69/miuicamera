.class final Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
.super Ljava8/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$SliceSpliterator<",
        "TT;",
        "Ljava8/util/Spliterator<",
        "TT;>;>;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;JJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;JJ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v6, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v11}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;JJJJ)V

    return-void
.end method

.method private constructor <init>(Ljava8/util/Spliterator;JJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;JJJJ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava8/util/Spliterator;JJJJ)V

    return-void
.end method

.method static synthetic lambda$forEachRemaining$149(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$tryAdvance$148(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    return-void

    :cond_1
    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    add-long/2addr v4, v0

    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_2

    :cond_2
    :goto_0
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-static {}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$2;->lambdaFactory$()Ljava8/util/function/Consumer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    :cond_3
    :goto_1
    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v5, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
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

.method protected makeSpliterator(Ljava8/util/Spliterator;JJJJ)Ljava8/util/Spliterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;JJJJ)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v10, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;JJJJ)V

    return-object v10
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-static {}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef$$Lambda$1;->lambdaFactory$()Ljava8/util/function/Consumer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    return v1

    :cond_2
    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method
