.class Ljava8/util/stream/IntPipeline$10$1;
.super Ljava8/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline$10;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava8/util/stream/IntPipeline$10;


# direct methods
.method constructor <init>(Ljava8/util/stream/IntPipeline$10;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/IntPipeline$10$1;->this$1:Ljava8/util/stream/IntPipeline$10;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedInt;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/IntPipeline$10$1;->this$1:Ljava8/util/stream/IntPipeline$10;

    iget-object v0, v0, Ljava8/util/stream/IntPipeline$10;->val$action:Ljava8/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava8/util/function/IntConsumer;->accept(I)V

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedInt;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0, p1}, Ljava8/util/stream/Sink;->accept(I)V

    return-void
.end method
