.class final synthetic Ljava8/util/stream/Collectors$$Lambda$81;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava8/util/function/Supplier;

.field private final arg$2:Ljava8/util/function/Supplier;

.field private final arg$3:Ljava8/util/function/BiConsumer;

.field private final arg$4:Ljava8/util/function/BiConsumer;

.field private final arg$5:Ljava8/util/function/BinaryOperator;

.field private final arg$6:Ljava8/util/function/BinaryOperator;

.field private final arg$7:Ljava8/util/function/Function;

.field private final arg$8:Ljava8/util/function/Function;

.field private final arg$9:Ljava8/util/function/BiFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/Supplier;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$1:Ljava8/util/function/Supplier;

    iput-object p2, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$2:Ljava8/util/function/Supplier;

    iput-object p3, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$3:Ljava8/util/function/BiConsumer;

    iput-object p4, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$4:Ljava8/util/function/BiConsumer;

    iput-object p5, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$5:Ljava8/util/function/BinaryOperator;

    iput-object p6, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$6:Ljava8/util/function/BinaryOperator;

    iput-object p7, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$7:Ljava8/util/function/Function;

    iput-object p8, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$8:Ljava8/util/function/Function;

    iput-object p9, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$9:Ljava8/util/function/BiFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Supplier;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)Ljava8/util/function/Supplier;
    .locals 11

    new-instance v10, Ljava8/util/stream/Collectors$$Lambda$81;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ljava8/util/stream/Collectors$$Lambda$81;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)V

    return-object v10
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$1:Ljava8/util/function/Supplier;

    iget-object v1, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$2:Ljava8/util/function/Supplier;

    iget-object v2, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$3:Ljava8/util/function/BiConsumer;

    iget-object v3, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$4:Ljava8/util/function/BiConsumer;

    iget-object v4, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$5:Ljava8/util/function/BinaryOperator;

    iget-object v5, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$6:Ljava8/util/function/BinaryOperator;

    iget-object v6, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$7:Ljava8/util/function/Function;

    iget-object v7, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$8:Ljava8/util/function/Function;

    iget-object v8, p0, Ljava8/util/stream/Collectors$$Lambda$81;->arg$9:Ljava8/util/function/BiFunction;

    invoke-static/range {v0 .. v8}, Ljava8/util/stream/Collectors;->lambda$teeing0$76(Ljava8/util/function/Supplier;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)Ljava8/util/stream/Collectors$1PairBox;

    move-result-object p0

    return-object p0
.end method
