.class final synthetic Ljava8/util/function/LongUnaryOperators$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongUnaryOperator;


# static fields
.field private static final instance:Ljava8/util/function/LongUnaryOperators$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/function/LongUnaryOperators$$Lambda$3;

    invoke-direct {v0}, Ljava8/util/function/LongUnaryOperators$$Lambda$3;-><init>()V

    sput-object v0, Ljava8/util/function/LongUnaryOperators$$Lambda$3;->instance:Ljava8/util/function/LongUnaryOperators$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/LongUnaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/function/LongUnaryOperators$$Lambda$3;->instance:Ljava8/util/function/LongUnaryOperators$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public applyAsLong(J)J
    .locals 0

    invoke-static {p1, p2}, Ljava8/util/function/LongUnaryOperators;->lambda$identity$125(J)J

    move-result-wide p0

    return-wide p0
.end method
