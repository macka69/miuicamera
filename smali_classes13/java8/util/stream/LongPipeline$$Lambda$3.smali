.class final synthetic Ljava8/util/stream/LongPipeline$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/ToLongFunction;


# static fields
.field private static final instance:Ljava8/util/stream/LongPipeline$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/LongPipeline$$Lambda$3;

    invoke-direct {v0}, Ljava8/util/stream/LongPipeline$$Lambda$3;-><init>()V

    sput-object v0, Ljava8/util/stream/LongPipeline$$Lambda$3;->instance:Ljava8/util/stream/LongPipeline$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ToLongFunction;
    .locals 1

    sget-object v0, Ljava8/util/stream/LongPipeline$$Lambda$3;->instance:Ljava8/util/stream/LongPipeline$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Ljava8/util/stream/LongPipeline;->lambda$distinct$89(Ljava/lang/Long;)J

    move-result-wide p0

    return-wide p0
.end method
