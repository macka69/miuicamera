.class final Ljava8/util/stream/ReduceOps$3;
.super Ljava8/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeRef(Ljava8/util/stream/Collector;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$ReduceOp<",
        "TT;TI;",
        "Ljava8/util/stream/ReduceOps$3ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava8/util/function/BiConsumer;

.field final synthetic val$collector:Ljava8/util/stream/Collector;

.field final synthetic val$combiner:Ljava8/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava8/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BiConsumer;Ljava8/util/function/Supplier;Ljava8/util/stream/Collector;)V
    .locals 0

    iput-object p2, p0, Ljava8/util/stream/ReduceOps$3;->val$combiner:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$3;->val$accumulator:Ljava8/util/function/BiConsumer;

    iput-object p4, p0, Ljava8/util/stream/ReduceOps$3;->val$supplier:Ljava8/util/function/Supplier;

    iput-object p5, p0, Ljava8/util/stream/ReduceOps$3;->val$collector:Ljava8/util/stream/Collector;

    invoke-direct {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceOp;-><init>(Ljava8/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public getOpFlags()I
    .locals 1

    iget-object p0, p0, Ljava8/util/stream/ReduceOps$3;->val$collector:Ljava8/util/stream/Collector;

    invoke-interface {p0}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeSink()Ljava8/util/stream/ReduceOps$3ReducingSink;
    .locals 3

    new-instance v0, Ljava8/util/stream/ReduceOps$3ReducingSink;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$3;->val$supplier:Ljava8/util/function/Supplier;

    iget-object v2, p0, Ljava8/util/stream/ReduceOps$3;->val$accumulator:Ljava8/util/function/BiConsumer;

    iget-object p0, p0, Ljava8/util/stream/ReduceOps$3;->val$combiner:Ljava8/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, p0}, Ljava8/util/stream/ReduceOps$3ReducingSink;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$3;->makeSink()Ljava8/util/stream/ReduceOps$3ReducingSink;

    move-result-object p0

    return-object p0
.end method
