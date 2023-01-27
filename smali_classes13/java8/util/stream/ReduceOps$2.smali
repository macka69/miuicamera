.class final Ljava8/util/stream/ReduceOps$2;
.super Ljava8/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeRef(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$ReduceOp<",
        "TT;",
        "Ljava8/util/Optional<",
        "TT;>;",
        "Ljava8/util/stream/ReduceOps$2ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$operator:Ljava8/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;)V
    .locals 0

    iput-object p2, p0, Ljava8/util/stream/ReduceOps$2;->val$operator:Ljava8/util/function/BinaryOperator;

    invoke-direct {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceOp;-><init>(Ljava8/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava8/util/stream/ReduceOps$2ReducingSink;
    .locals 1

    new-instance v0, Ljava8/util/stream/ReduceOps$2ReducingSink;

    iget-object p0, p0, Ljava8/util/stream/ReduceOps$2;->val$operator:Ljava8/util/function/BinaryOperator;

    invoke-direct {v0, p0}, Ljava8/util/stream/ReduceOps$2ReducingSink;-><init>(Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$2;->makeSink()Ljava8/util/stream/ReduceOps$2ReducingSink;

    move-result-object p0

    return-object p0
.end method
