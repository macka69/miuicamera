.class public final Ljava8/util/function/BinaryOperators;
.super Ljava/lang/Object;
.source "BinaryOperators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$maxBy$111(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method static synthetic lambda$minBy$110(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/function/BinaryOperators$$Lambda$2;->lambdaFactory$(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/function/BinaryOperators$$Lambda$1;->lambdaFactory$(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;

    move-result-object p0

    return-object p0
.end method
