.class Ljava8/util/stream/DistinctOps$1$2;
.super Ljava8/util/stream/Sink$ChainedReference;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DistinctOps$1;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava8/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Ljava8/util/stream/DistinctOps$1;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/DistinctOps$1$2;->this$0:Ljava8/util/stream/DistinctOps$1;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedReference;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0}, Ljava8/util/stream/Sink;->end()V

    return-void
.end method
