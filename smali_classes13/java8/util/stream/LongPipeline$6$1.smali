.class Ljava8/util/stream/LongPipeline$6$1;
.super Ljava8/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/LongPipeline$6;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field cancellationRequested:Z

.field downstreamAsLong:Ljava8/util/function/LongConsumer;

.field final synthetic this$1:Ljava8/util/stream/LongPipeline$6;


# direct methods
.method constructor <init>(Ljava8/util/stream/LongPipeline$6;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/LongPipeline$6$1;->this$1:Ljava8/util/stream/LongPipeline$6;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedLong;-><init>(Ljava8/util/stream/Sink;)V

    iget-object p1, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava8/util/stream/LongPipeline$6$1$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/Sink;)Ljava8/util/function/LongConsumer;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava8/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljava8/util/stream/LongPipeline$6$1;->this$1:Ljava8/util/stream/LongPipeline$6;

    iget-object v1, v1, Ljava8/util/stream/LongPipeline$6;->val$mapper:Ljava8/util/function/LongFunction;

    invoke-interface {v1, p1, p2}, Ljava8/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/LongStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :try_start_1
    iget-boolean p2, p0, Ljava8/util/stream/LongPipeline$6$1;->cancellationRequested:Z

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava8/util/stream/LongStream;->sequential()Ljava8/util/stream/LongStream;

    move-result-object p2

    iget-object p0, p0, Ljava8/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava8/util/function/LongConsumer;

    invoke-interface {p2, p0}, Ljava8/util/stream/LongStream;->forEach(Ljava8/util/function/LongConsumer;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava8/util/stream/LongStream;->sequential()Ljava8/util/stream/LongStream;

    move-result-object p2

    invoke-interface {p2}, Ljava8/util/stream/LongStream;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljava8/util/stream/LongPipeline$6$1;->downstreamAsLong:Ljava8/util/function/LongConsumer;

    invoke-interface {p2, v0}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava8/util/stream/BaseStream;->close()V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava8/util/stream/BaseStream;->close()V

    :cond_4
    throw p0
.end method

.method public begin(J)V
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/stream/LongPipeline$6$1;->cancellationRequested:Z

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result p0

    return p0
.end method
