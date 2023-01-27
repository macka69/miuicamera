.class public final Ljava8/util/function/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/function/Predicates$$Lambda$1;->lambdaFactory$(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static isEqual(Ljava/lang/Object;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava8/util/function/Predicates$$Lambda$4;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava8/util/function/Predicates$$Lambda$5;->lambdaFactory$(Ljava/lang/Object;)Ljava8/util/function/Predicate;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$and$119(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$isEqual$122(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$negate$120(Ljava8/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$or$121(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

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

.method public static negate(Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/function/Predicates$$Lambda$2;->lambdaFactory$(Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static not(Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/function/Predicates;->negate(Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static or(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/function/Predicates$$Lambda$3;->lambdaFactory$(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method
