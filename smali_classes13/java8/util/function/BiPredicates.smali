.class public final Ljava8/util/function/BiPredicates;
.super Ljava/lang/Object;
.source "BiPredicates.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Ljava8/util/function/BiPredicate;Ljava8/util/function/BiPredicate;)Ljava8/util/function/BiPredicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiPredicate<",
            "-TT;-TU;>;",
            "Ljava8/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Ljava8/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/function/BiPredicates$$Lambda$1;->lambdaFactory$(Ljava8/util/function/BiPredicate;Ljava8/util/function/BiPredicate;)Ljava8/util/function/BiPredicate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$and$101(Ljava8/util/function/BiPredicate;Ljava8/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava8/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava8/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$negate$102(Ljava8/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava8/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$or$103(Ljava8/util/function/BiPredicate;Ljava8/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava8/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava8/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static negate(Ljava8/util/function/BiPredicate;)Ljava8/util/function/BiPredicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Ljava8/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/function/BiPredicates$$Lambda$2;->lambdaFactory$(Ljava8/util/function/BiPredicate;)Ljava8/util/function/BiPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static or(Ljava8/util/function/BiPredicate;Ljava8/util/function/BiPredicate;)Ljava8/util/function/BiPredicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiPredicate<",
            "-TT;-TU;>;",
            "Ljava8/util/function/BiPredicate<",
            "-TT;-TU;>;)",
            "Ljava8/util/function/BiPredicate<",
            "TT;TU;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/function/BiPredicates$$Lambda$3;->lambdaFactory$(Ljava8/util/function/BiPredicate;Ljava8/util/function/BiPredicate;)Ljava8/util/function/BiPredicate;

    move-result-object p0

    return-object p0
.end method
