.class final synthetic Ljava8/util/stream/Collectors$$Lambda$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BinaryOperator;


# instance fields
.field private final arg$1:Ljava8/util/function/BinaryOperator;


# direct methods
.method private constructor <init>(Ljava8/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$24;->arg$1:Ljava8/util/function/BinaryOperator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$24;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$24;-><init>(Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/Collectors$$Lambda$24;->arg$1:Ljava8/util/function/BinaryOperator;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    check-cast p2, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$mapMergerConcurrent$14(Ljava8/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    return-object p0
.end method
