.class final Ljava8/util/stream/ReduceOps$8;
.super Ljava8/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeInt(Ljava8/util/function/Supplier;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Integer;",
        "TR;",
        "Ljava8/util/stream/ReduceOps$7ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava8/util/function/ObjIntConsumer;

.field final synthetic val$combiner:Ljava8/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava8/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/Supplier;)V
    .locals 0

    iput-object p2, p0, Ljava8/util/stream/ReduceOps$8;->val$combiner:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$8;->val$accumulator:Ljava8/util/function/ObjIntConsumer;

    iput-object p4, p0, Ljava8/util/stream/ReduceOps$8;->val$supplier:Ljava8/util/function/Supplier;

    invoke-direct {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceOp;-><init>(Ljava8/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava8/util/stream/ReduceOps$7ReducingSink;
    .locals 3

    new-instance v0, Ljava8/util/stream/ReduceOps$7ReducingSink;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$8;->val$supplier:Ljava8/util/function/Supplier;

    iget-object v2, p0, Ljava8/util/stream/ReduceOps$8;->val$accumulator:Ljava8/util/function/ObjIntConsumer;

    iget-object p0, p0, Ljava8/util/stream/ReduceOps$8;->val$combiner:Ljava8/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, p0}, Ljava8/util/stream/ReduceOps$7ReducingSink;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$8;->makeSink()Ljava8/util/stream/ReduceOps$7ReducingSink;

    move-result-object p0

    return-object p0
.end method
