.class Ljava8/util/stream/DoublePipeline$3$1;
.super Ljava8/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline$3;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava8/util/stream/DoublePipeline$3;


# direct methods
.method constructor <init>(Ljava8/util/stream/DoublePipeline$3;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$3$1;->this$1:Ljava8/util/stream/DoublePipeline$3;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedDouble;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedDouble;->downstream:Ljava8/util/stream/Sink;

    iget-object p0, p0, Ljava8/util/stream/DoublePipeline$3$1;->this$1:Ljava8/util/stream/DoublePipeline$3;

    iget-object p0, p0, Ljava8/util/stream/DoublePipeline$3;->val$mapper:Ljava8/util/function/DoubleToIntFunction;

    invoke-interface {p0, p1, p2}, Ljava8/util/function/DoubleToIntFunction;->applyAsInt(D)I

    move-result p0

    invoke-interface {v0, p0}, Ljava8/util/stream/Sink;->accept(I)V

    return-void
.end method
