.class final Ljava8/util/PBQueueSpliterator;
.super Ljava/lang/Object;
.source "PBQueueSpliterator.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private fence:I

.field private index:I

.field private final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/PBQueueSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p2, p0, Ljava8/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    iput p3, p0, Ljava8/util/PBQueueSpliterator;->index:I

    iput p4, p0, Ljava8/util/PBQueueSpliterator;->fence:I

    return-void
.end method

.method private getFence()I
    .locals 1

    iget-object v0, p0, Ljava8/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/PBQueueSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava8/util/PBQueueSpliterator;->fence:I

    :cond_0
    iget p0, p0, Ljava8/util/PBQueueSpliterator;->fence:I

    return p0
.end method

.method static spliterator(Ljava/util/concurrent/PriorityBlockingQueue;)Ljava8/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/PBQueueSpliterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ljava8/util/PBQueueSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    const/16 p0, 0x4140

    return p0
.end method

.method public estimateSize()J
    .locals 2

    invoke-direct {p0}, Ljava8/util/PBQueueSpliterator;->getFence()I

    move-result v0

    iget p0, p0, Ljava8/util/PBQueueSpliterator;->index:I

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava8/util/PBQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/PBQueueSpliterator;->index:I

    iget-object v2, p0, Ljava8/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    iput v0, p0, Ljava8/util/PBQueueSpliterator;->index:I

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object p0, v2, v1

    invoke-interface {p1, p0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
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

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava8/util/PBQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/PBQueueSpliterator;->index:I

    if-le v0, v1, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Ljava8/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/PBQueueSpliterator;->index:I

    aget-object p0, v0, v1

    invoke-interface {p1, p0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public trySplit()Ljava8/util/PBQueueSpliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/PBQueueSpliterator<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/PBQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/PBQueueSpliterator;->index:I

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    if-lt v1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava8/util/PBQueueSpliterator;

    iget-object v3, p0, Ljava8/util/PBQueueSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Ljava8/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    iput v0, p0, Ljava8/util/PBQueueSpliterator;->index:I

    invoke-direct {v2, v3, v4, v1, v0}, Ljava8/util/PBQueueSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    move-object p0, v2

    :goto_0
    return-object p0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/PBQueueSpliterator;->trySplit()Ljava8/util/PBQueueSpliterator;

    move-result-object p0

    return-object p0
.end method
