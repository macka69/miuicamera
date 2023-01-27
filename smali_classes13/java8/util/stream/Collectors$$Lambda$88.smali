.class final synthetic Ljava8/util/stream/Collectors$$Lambda$88;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiFunction;


# instance fields
.field private final arg$1:Ljava8/util/function/Function;


# direct methods
.method private constructor <init>(Ljava8/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$88;->arg$1:Ljava8/util/function/Function;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;)Ljava8/util/function/BiFunction;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$88;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$88;-><init>(Ljava8/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/Collectors$$Lambda$88;->arg$1:Ljava8/util/function/Function;

    invoke-static {p0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$null$56(Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
