.class Ljava8/util/stream/IntPipeline$2$1;
.super Ljava8/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline$2;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava8/util/stream/IntPipeline$2;


# direct methods
.method constructor <init>(Ljava8/util/stream/IntPipeline$2;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/IntPipeline$2$1;->this$1:Ljava8/util/stream/IntPipeline$2;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedInt;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedInt;->downstream:Ljava8/util/stream/Sink;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Ljava8/util/stream/Sink;->accept(J)V

    return-void
.end method
