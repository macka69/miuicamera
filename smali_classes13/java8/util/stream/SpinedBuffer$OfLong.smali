.class Ljava8/util/stream/SpinedBuffer$OfLong;
.super Ljava8/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava8/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava8/util/function/LongConsumer;",
        ">;",
        "Ljava8/util/function/LongConsumer;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3

    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->preAccept()V

    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    check-cast p1, [J

    check-cast p4, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava8/util/stream/SpinedBuffer$OfLong;->arrayForEach([JIILjava8/util/function/LongConsumer;)V

    return-void
.end method

.method protected arrayForEach([JIILjava8/util/function/LongConsumer;)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-wide v0, p1, p2

    invoke-interface {p4, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [J

    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfLong;->arrayLength([J)I

    move-result p0

    return p0
.end method

.method protected arrayLength([J)I
    .locals 0

    array-length p0, p1

    return p0
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Ljava8/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public get(J)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->chunkFor(J)I

    move-result v0

    iget v1, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast p0, [J

    long-to-int p1, p1

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    check-cast v1, [[J

    aget-object v1, v1, v0

    iget-object p0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v2, p0, v0

    sub-long/2addr p1, v2

    long-to-int p0, p1

    aget-wide p0, v1, p0

    return-wide p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfLong;->iterator()Ljava8/util/PrimitiveIterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava8/util/PrimitiveIterator$OfLong;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/PrimitiveIterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[J
    .locals 0

    new-array p0, p1, [J

    return-object p0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfLong;->newArrayArray(I)[[J

    move-result-object p0

    return-object p0
.end method

.method protected newArrayArray(I)[[J
    .locals 0

    new-array p0, p1, [[J

    return-object p0
.end method

.method public spliterator()Ljava8/util/Spliterator$OfLong;
    .locals 7

    new-instance v6, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget v3, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    iget v5, p0, Ljava8/util/stream/AbstractSpinedBuffer;->elementIndex:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava8/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0xc8

    if-ge v1, v7, :cond_0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget p0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%s[length=%d, chunks=%d]%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    iget p0, p0, Ljava8/util/stream/AbstractSpinedBuffer;->spineIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v2

    const-string p0, "%s[length=%d, chunks=%d]%s..."

    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
