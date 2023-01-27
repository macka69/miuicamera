.class public final Ljava8/util/function/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava8/util/function/Function<",
            "-TR;+TV;>;)",
            "Ljava8/util/function/Function<",
            "TT;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava8/util/function/Functions$$Lambda$2;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/Function;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava8/util/function/Function<",
            "-TV;+TT;>;)",
            "Ljava8/util/function/Function<",
            "TV;TR;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/function/Functions$$Lambda$1;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/Function;

    move-result-object p0

    return-object p0
.end method

.method public static identity()Ljava8/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/Function<",
            "TT;TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava8/util/function/Functions$$Lambda$3;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$andThen$135(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$compose$134(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$identity$136(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
