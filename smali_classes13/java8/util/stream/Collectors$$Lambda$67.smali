.class final synthetic Ljava8/util/stream/Collectors$$Lambda$67;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/Function;

.field private final arg$2:Ljava8/util/function/Supplier;

.field private final arg$3:Ljava8/util/function/BiConsumer;


# direct methods
.method private constructor <init>(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$67;->arg$1:Ljava8/util/function/Function;

    iput-object p2, p0, Ljava8/util/stream/Collectors$$Lambda$67;->arg$2:Ljava8/util/function/Supplier;

    iput-object p3, p0, Ljava8/util/stream/Collectors$$Lambda$67;->arg$3:Ljava8/util/function/BiConsumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$67;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/Collectors$$Lambda$67;-><init>(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$67;->arg$1:Ljava8/util/function/Function;

    iget-object v1, p0, Ljava8/util/stream/Collectors$$Lambda$67;->arg$2:Ljava8/util/function/Supplier;

    iget-object p0, p0, Ljava8/util/stream/Collectors$$Lambda$67;->arg$3:Ljava8/util/function/BiConsumer;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1, p0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$groupingByConcurrent$61(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V

    return-void
.end method
