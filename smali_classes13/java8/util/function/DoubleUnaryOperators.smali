.class public final Ljava8/util/function/DoubleUnaryOperators;
.super Ljava/lang/Object;
.source "DoubleUnaryOperators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/function/DoubleUnaryOperator;
    .locals 0

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava8/util/function/DoubleUnaryOperators$$Lambda$2;->lambdaFactory$(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/function/DoubleUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/function/DoubleUnaryOperator;
    .locals 0

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/function/DoubleUnaryOperators$$Lambda$1;->lambdaFactory$(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/function/DoubleUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static identity()Ljava8/util/function/DoubleUnaryOperator;
    .locals 1

    invoke-static {}, Ljava8/util/function/DoubleUnaryOperators$$Lambda$3;->lambdaFactory$()Ljava8/util/function/DoubleUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$andThen$127(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;D)D
    .locals 0

    invoke-interface {p1, p2, p3}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$compose$126(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;D)D
    .locals 0

    invoke-interface {p1, p2, p3}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava8/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$identity$128(D)D
    .locals 0

    return-wide p0
.end method
