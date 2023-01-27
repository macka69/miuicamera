.class final Ljava8/util/stream/Streams$StreamBuilderImpl;
.super Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava8/util/stream/Stream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Streams$AbstractStreamBuilderImpl<",
        "TT;",
        "Ljava8/util/Spliterator<",
        "TT;>;>;",
        "Ljava8/util/stream/Stream$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field buffer:Ljava8/util/stream/SpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/SpinedBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    iput-object p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    const/4 p1, -0x2

    iput p1, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    iput-object p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava8/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    iget-object v1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava8/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    :cond_1
    iget-object p0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public add(Ljava/lang/Object;)Ljava8/util/stream/Stream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava8/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$StreamBuilderImpl;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    if-ltz v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer;->spliterator()Ljava8/util/Spliterator;

    move-result-object p0

    :goto_0
    invoke-static {p0, v2}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    :cond_0
    return-void
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
