.class Ljava8/util/stream/ReferencePipeline$6$1;
.super Ljava8/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReferencePipeline$6;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava8/util/stream/ReferencePipeline$6;


# direct methods
.method constructor <init>(Ljava8/util/stream/ReferencePipeline$6;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/ReferencePipeline$6$1;->this$1:Ljava8/util/stream/ReferencePipeline$6;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedReference;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    iget-object p0, p0, Ljava8/util/stream/ReferencePipeline$6$1;->this$1:Ljava8/util/stream/ReferencePipeline$6;

    iget-object p0, p0, Ljava8/util/stream/ReferencePipeline$6;->val$mapper:Ljava8/util/function/ToDoubleFunction;

    invoke-interface {p0, p1}, Ljava8/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Ljava8/util/stream/Sink;->accept(D)V

    return-void
.end method
