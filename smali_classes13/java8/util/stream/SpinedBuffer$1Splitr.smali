.class Ljava8/util/stream/SpinedBuffer$1Splitr;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SpinedBuffer;->spliterator()Ljava8/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Ljava8/util/stream/SpinedBuffer;


# direct methods
.method constructor <init>(Ljava8/util/stream/SpinedBuffer;IIII)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iput p3, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput p4, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iput p5, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iget-object p3, p1, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p1, p1, Ljava8/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    aget-object p1, p3, p2

    :goto_0
    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 0

    const/16 p0, 0x4050

    return p0
.end method

.method public estimateSize()J
    .locals 7

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v0, v0

    iget p0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v2, p0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer;

    iget-object v2, v2, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v3, v2, v1

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    aget-wide v0, v2, v0

    sub-long/2addr v3, v0

    iget p0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v0, p0

    sub-long v0, v3, v0

    :goto_0
    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_5

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_5

    :cond_0
    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    :goto_0
    iget v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer;

    iget-object v2, v2, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer;

    iget-object v1, v1, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v2

    :goto_2
    iget v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    :goto_3
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iput p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    :cond_5
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    iput v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-gt p1, v2, :cond_2

    aget-object p1, v0, p1

    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    :cond_2
    return v1
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    iget v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v2, v0, :cond_0

    new-instance v6, Ljava8/util/stream/SpinedBuffer$1Splitr;

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer;

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v5, v1, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v5, v0

    array-length v5, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava8/util/stream/SpinedBuffer;IIII)V

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    const/4 v1, 0x0

    iput v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer;

    iget-object v1, v1, Ljava8/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    iput-object v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    return-object v6

    :cond_0
    const/4 v1, 0x0

    if-ne v2, v0, :cond_2

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iget v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava8/util/J8Arrays;->spliterator([Ljava/lang/Object;II)Ljava8/util/Spliterator;

    move-result-object v1

    iget v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava8/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    :cond_2
    return-object v1
.end method
