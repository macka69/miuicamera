.class final synthetic Ljava8/util/stream/Collectors$$Lambda$52;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$52;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$52;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$52;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$52;->instance:Ljava8/util/stream/Collectors$$Lambda$52;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Function;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$52;->instance:Ljava8/util/stream/Collectors$$Lambda$52;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [D

    invoke-static {p1}, Ljava8/util/stream/Collectors;->lambda$averagingDouble$43([D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
