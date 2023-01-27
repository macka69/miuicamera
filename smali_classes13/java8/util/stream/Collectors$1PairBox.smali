.class Ljava8/util/stream/Collectors$1PairBox;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/Collectors;->teeing0(Ljava8/util/stream/Collector;Ljava8/util/stream/Collector;Ljava8/util/function/BiFunction;)Ljava8/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairBox"
.end annotation


# instance fields
.field left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA1;"
        }
    .end annotation
.end field

.field right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA2;"
        }
    .end annotation
.end field

.field final synthetic val$c1Accumulator:Ljava8/util/function/BiConsumer;

.field final synthetic val$c1Combiner:Ljava8/util/function/BinaryOperator;

.field final synthetic val$c1Finisher:Ljava8/util/function/Function;

.field final synthetic val$c1Supplier:Ljava8/util/function/Supplier;

.field final synthetic val$c2Accumulator:Ljava8/util/function/BiConsumer;

.field final synthetic val$c2Combiner:Ljava8/util/function/BinaryOperator;

.field final synthetic val$c2Finisher:Ljava8/util/function/Function;

.field final synthetic val$c2Supplier:Ljava8/util/function/Supplier;

.field final synthetic val$merger:Ljava8/util/function/BiFunction;


# direct methods
.method constructor <init>(Ljava8/util/function/Supplier;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c1Supplier:Ljava8/util/function/Supplier;

    iput-object p2, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c2Supplier:Ljava8/util/function/Supplier;

    iput-object p3, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c1Accumulator:Ljava8/util/function/BiConsumer;

    iput-object p4, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c2Accumulator:Ljava8/util/function/BiConsumer;

    iput-object p5, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c1Combiner:Ljava8/util/function/BinaryOperator;

    iput-object p6, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c2Combiner:Ljava8/util/function/BinaryOperator;

    iput-object p7, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c1Finisher:Ljava8/util/function/Function;

    iput-object p8, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c2Finisher:Ljava8/util/function/Function;

    iput-object p9, p0, Ljava8/util/stream/Collectors$1PairBox;->val$merger:Ljava8/util/function/BiFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c1Supplier:Ljava8/util/function/Supplier;

    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    iget-object p1, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c2Supplier:Ljava8/util/function/Supplier;

    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c1Accumulator:Ljava8/util/function/BiConsumer;

    iget-object v1, p0, Ljava8/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c2Accumulator:Ljava8/util/function/BiConsumer;

    iget-object p0, p0, Ljava8/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method combine(Ljava8/util/stream/Collectors$1PairBox;)Ljava8/util/stream/Collectors$1PairBox;
    .locals 3

    iget-object v0, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c1Combiner:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    iget-object v2, p1, Ljava8/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    iget-object v0, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c2Combiner:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    iget-object p1, p1, Ljava8/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    return-object p0
.end method

.method get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c1Finisher:Ljava8/util/function/Function;

    iget-object v1, p0, Ljava8/util/stream/Collectors$1PairBox;->left:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/stream/Collectors$1PairBox;->val$c2Finisher:Ljava8/util/function/Function;

    iget-object v2, p0, Ljava8/util/stream/Collectors$1PairBox;->right:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Ljava8/util/stream/Collectors$1PairBox;->val$merger:Ljava8/util/function/BiFunction;

    invoke-interface {p0, v0, v1}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
