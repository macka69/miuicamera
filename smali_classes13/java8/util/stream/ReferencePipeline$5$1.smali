.class Ljava8/util/stream/ReferencePipeline$5$1;
.super Ljava8/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReferencePipeline$5;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava8/util/stream/ReferencePipeline$5;


# direct methods
.method constructor <init>(Ljava8/util/stream/ReferencePipeline$5;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/ReferencePipeline$5$1;->this$1:Ljava8/util/stream/ReferencePipeline$5;

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

    iget-object p0, p0, Ljava8/util/stream/ReferencePipeline$5$1;->this$1:Ljava8/util/stream/ReferencePipeline$5;

    iget-object p0, p0, Ljava8/util/stream/ReferencePipeline$5;->val$mapper:Ljava8/util/function/ToLongFunction;

    invoke-interface {p0, p1}, Ljava8/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Ljava8/util/stream/Sink;->accept(J)V

    return-void
.end method
