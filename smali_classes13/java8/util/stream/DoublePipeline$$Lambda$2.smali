.class final synthetic Ljava8/util/stream/DoublePipeline$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/DoubleFunction;


# static fields
.field private static final instance:Ljava8/util/stream/DoublePipeline$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/DoublePipeline$$Lambda$2;

    invoke-direct {v0}, Ljava8/util/stream/DoublePipeline$$Lambda$2;-><init>()V

    sput-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$2;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/DoubleFunction;
    .locals 1

    sget-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$2;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public apply(D)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
