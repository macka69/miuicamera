.class Ljava8/util/stream/SliceOps$3$1;
.super Ljava8/util/stream/Sink$ChainedLong;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SliceOps$3;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
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
.field m:J

.field n:J

.field final synthetic this$0:Ljava8/util/stream/SliceOps$3;


# direct methods
.method constructor <init>(Ljava8/util/stream/SliceOps$3;Ljava8/util/stream/Sink;)V
    .locals 2

    iput-object p1, p0, Ljava8/util/stream/SliceOps$3$1;->this$0:Ljava8/util/stream/SliceOps$3;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedLong;-><init>(Ljava8/util/stream/Sink;)V

    iget-object p1, p0, Ljava8/util/stream/SliceOps$3$1;->this$0:Ljava8/util/stream/SliceOps$3;

    iget-wide v0, p1, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iput-wide v0, p0, Ljava8/util/stream/SliceOps$3$1;->n:J

    iget-wide p1, p1, Ljava8/util/stream/SliceOps$3;->val$limit:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Ljava8/util/stream/SliceOps$3$1;->m:J

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 7

    iget-wide v0, p0, Ljava8/util/stream/SliceOps$3$1;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    iget-wide v0, p0, Ljava8/util/stream/SliceOps$3$1;->m:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sub-long/2addr v0, v5

    iput-wide v0, p0, Ljava8/util/stream/SliceOps$3$1;->m:J

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Sink;->accept(J)V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v5

    iput-wide v0, p0, Ljava8/util/stream/SliceOps$3$1;->n:J

    :cond_1
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 8

    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/SliceOps$3$1;->this$0:Ljava8/util/stream/SliceOps$3;

    iget-wide v4, v1, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iget-wide v6, p0, Ljava8/util/stream/SliceOps$3$1;->m:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Ljava8/util/stream/SliceOps;->access$200(JJJ)J

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public cancellationRequested()Z
    .locals 4

    iget-wide v0, p0, Ljava8/util/stream/SliceOps$3$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
