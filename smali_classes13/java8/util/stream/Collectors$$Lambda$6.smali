.class final synthetic Ljava8/util/stream/Collectors$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/Function;

.field private final arg$2:Ljava8/util/function/Function;


# direct methods
.method private constructor <init>(Ljava8/util/function/Function;Ljava8/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$6;->arg$1:Ljava8/util/function/Function;

    iput-object p2, p0, Ljava8/util/stream/Collectors$$Lambda$6;->arg$2:Ljava8/util/function/Function;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$6;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Collectors$$Lambda$6;-><init>(Ljava8/util/function/Function;Ljava8/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$6;->arg$1:Ljava8/util/function/Function;

    iget-object p0, p0, Ljava8/util/stream/Collectors$$Lambda$6;->arg$2:Ljava8/util/function/Function;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$uniqKeysMapAccumulator$2(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method
