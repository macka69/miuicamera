.class final Ljava8/util/stream/SliceOps$3;
.super Ljava8/util/stream/LongPipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SliceOps;->makeLong(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/LongPipeline$StatefulOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;IJJ)V
    .locals 0

    iput-wide p4, p0, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iput-wide p6, p0, Ljava8/util/stream/SliceOps$3;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/LongPipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    const/4 v9, 0x1

    if-lez v0, :cond_1

    const/16 v0, 0x4000

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava8/util/stream/PipelineHelper;->getSourceShape()Ljava8/util/stream/StreamShape;

    move-result-object v10

    iget-wide v12, v8, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iget-wide v14, v8, Ljava8/util/stream/SliceOps$3;->val$limit:J

    move-object/from16 v11, p2

    invoke-static/range {v10 .. v15}, Ljava8/util/stream/SliceOps;->access$100(Ljava8/util/stream/StreamShape;Ljava8/util/Spliterator;JJ)Ljava8/util/Spliterator;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v2, v0, v9}, Ljava8/util/stream/Nodes;->collectLong(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v2, p1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_0
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava8/util/Spliterator$OfLong;

    iget-wide v2, v8, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iget-wide v4, v8, Ljava8/util/stream/SliceOps$3;->val$limit:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava8/util/stream/SliceOps$3;->unorderedSkipLimitSpliterator(Ljava8/util/Spliterator$OfLong;JJJ)Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v8, v0, v9}, Ljava8/util/stream/Nodes;->collectLong(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v9, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v5, v8, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iget-wide v10, v8, Ljava8/util/stream/SliceOps$3;->val$limit:J

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Ljava8/util/stream/SliceOps$SliceTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;JJ)V

    invoke-virtual {v9}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    return-object v0
.end method

.method opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava8/util/Spliterator$OfLong;

    iget-wide v10, v1, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iget-wide v1, v1, Ljava8/util/stream/SliceOps$3;->val$limit:J

    invoke-static {v10, v11, v1, v2}, Ljava8/util/stream/SliceOps;->access$000(JJ)J

    move-result-wide v12

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;JJ)V

    return-object v0

    :cond_0
    move-object/from16 v3, p2

    :cond_1
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava8/util/Spliterator$OfLong;

    iget-wide v3, v1, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iget-wide v8, v1, Ljava8/util/stream/SliceOps$3;->val$limit:J

    move-object v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljava8/util/stream/SliceOps$3;->unorderedSkipLimitSpliterator(Ljava8/util/Spliterator$OfLong;JJJ)Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v9, Ljava8/util/stream/SliceOps$SliceTask;

    sget-object v4, Ljava8/util/stream/WhileOps;->LONG_ARR_GEN:Ljava8/util/function/IntFunction;

    iget-wide v5, v1, Ljava8/util/stream/SliceOps$3;->val$skip:J

    iget-wide v7, v1, Ljava8/util/stream/SliceOps$3;->val$limit:J

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Ljava8/util/stream/SliceOps$SliceTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;JJ)V

    invoke-virtual {v9}, Ljava8/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    invoke-interface {v0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava8/util/stream/SliceOps$3$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/SliceOps$3$1;-><init>(Ljava8/util/stream/SliceOps$3;Ljava8/util/stream/Sink;)V

    return-object p1
.end method

.method unorderedSkipLimitSpliterator(Ljava8/util/Spliterator$OfLong;JJJ)Ljava8/util/Spliterator$OfLong;
    .locals 8

    cmp-long p0, p2, p6

    const-wide/16 v0, 0x0

    if-gtz p0, :cond_1

    cmp-long p0, p4, v0

    sub-long/2addr p6, p2

    if-ltz p0, :cond_0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    move-wide p4, p2

    goto :goto_0

    :cond_0
    move-wide p4, p6

    :goto_0
    move-wide v6, p4

    move-wide v4, v0

    goto :goto_1

    :cond_1
    move-wide v4, p2

    move-wide v6, p4

    :goto_1
    new-instance p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;JJ)V

    return-object p0
.end method
