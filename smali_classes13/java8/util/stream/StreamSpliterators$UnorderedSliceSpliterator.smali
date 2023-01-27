.class abstract Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UnorderedSliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;,
        Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;,
        Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;,
        Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;,
        Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;,
        Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CHUNK_SIZE:I = 0x80


# instance fields
.field protected final chunkSize:I

.field private final permits:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final s:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final skipThreshold:J

.field protected final unlimited:Z


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-gez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-ltz p1, :cond_1

    move-wide v0, p4

    :cond_1
    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    if-ltz p1, :cond_2

    const-wide/16 v0, 0x80

    add-long v2, p2, p4

    invoke-static {}, Ljava8/util/stream/AbstractTask;->getLeafTarget()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x80

    :goto_1
    iput v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-ltz p1, :cond_3

    add-long/2addr p2, p4

    :cond_3
    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
            "TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    iget-boolean p1, p2, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    iput-boolean p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    iget-object p1, p2, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p2, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    iget p1, p2, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    iput p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    return-void
.end method


# virtual methods
.method protected final acquirePermits(J)J
    .locals 9

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-boolean p0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-wide p1, v2

    :goto_0
    return-wide p1

    :cond_2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    iget-object v6, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v7, v0, v4

    invoke-virtual {v6, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    iget-boolean v6, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v6, :cond_4

    sub-long/2addr p1, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_4
    iget-wide p0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    cmp-long p2, v0, p0

    if-lez p2, :cond_5

    sub-long/2addr v0, p0

    sub-long/2addr v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_5
    return-wide v4
.end method

.method public final characteristics()I
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->characteristics()I

    move-result p0

    and-int/lit16 p0, p0, -0x4051

    return p0
.end method

.method public final estimateSize()J
    .locals 2

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {p0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method protected final permitStatus()Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .locals 4

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object p0

    :cond_0
    iget-boolean p0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz p0, :cond_1

    sget-object p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    :goto_0
    return-object p0
.end method

.method public final trySplit()Ljava8/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v1

    :goto_0
    return-object v1
.end method
