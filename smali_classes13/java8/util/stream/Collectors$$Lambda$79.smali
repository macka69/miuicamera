.class final synthetic Ljava8/util/stream/Collectors$$Lambda$79;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/ToDoubleFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/ToDoubleFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$79;->arg$1:Ljava8/util/function/ToDoubleFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$79;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$79;-><init>(Ljava8/util/function/ToDoubleFunction;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/Collectors$$Lambda$79;->arg$1:Ljava8/util/function/ToDoubleFunction;

    check-cast p1, Ljava8/util/DoubleSummaryStatistics;

    invoke-static {p0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$summarizingDouble$74(Ljava8/util/function/ToDoubleFunction;Ljava8/util/DoubleSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method
