.class Ljava8/util/Spliterators$2Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/PrimitiveIterator$OfInt;
.implements Ljava8/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfInt;)Ljava8/util/PrimitiveIterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:I

.field final synthetic val$spliterator:Ljava8/util/Spliterator$OfInt;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfInt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ljava8/util/Spliterators$2Adapter;->val$spliterator:Ljava8/util/Spliterator$OfInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava8/util/Spliterators$2Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/Spliterators$2Adapter;->valueReady:Z

    iput p1, p0, Ljava8/util/Spliterators$2Adapter;->nextElement:I

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$2Adapter;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/Iterators;->forEachRemaining(Ljava8/util/PrimitiveIterator$OfInt;Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Ljava8/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/Spliterators$2Adapter;->val$spliterator:Ljava8/util/Spliterator$OfInt;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    :cond_0
    iget-boolean p0, p0, Ljava8/util/Spliterators$2Adapter;->valueReady:Z

    return p0
.end method

.method public next()Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$2Adapter;->nextInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$2Adapter;->next()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public nextInt()I
    .locals 1

    iget-boolean v0, p0, Ljava8/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/Spliterators$2Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava8/util/Spliterators$2Adapter;->valueReady:Z

    iget p0, p0, Ljava8/util/Spliterators$2Adapter;->nextElement:I

    return p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
