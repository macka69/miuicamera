.class final Ljava8/util/stream/ForEachOps$ForEachOp$OfLong;
.super Ljava8/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ForEachOps$ForEachOp<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava8/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final consumer:Ljava8/util/function/LongConsumer;


# direct methods
.method constructor <init>(Ljava8/util/function/LongConsumer;Z)V
    .locals 0

    invoke-direct {p0, p2}, Ljava8/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    iput-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava8/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava8/util/function/LongConsumer;

    invoke-interface {p0, p1, p2}, Ljava8/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfLong;->accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ForEachOps$ForEachOp$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava8/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava8/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public inputShape()Ljava8/util/stream/StreamShape;
    .locals 0

    sget-object p0, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    return-object p0
.end method
