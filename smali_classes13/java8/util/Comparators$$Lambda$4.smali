.class final synthetic Ljava8/util/Comparators$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final arg$1:Ljava8/util/function/ToLongFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/ToLongFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Comparators$$Lambda$4;->arg$1:Ljava8/util/function/ToLongFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Ljava8/util/Comparators$$Lambda$4;

    invoke-direct {v0, p0}, Ljava8/util/Comparators$$Lambda$4;-><init>(Ljava8/util/function/ToLongFunction;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ljava8/util/Comparators$$Lambda$4;->arg$1:Ljava8/util/function/ToLongFunction;

    invoke-static {p0, p1, p2}, Ljava8/util/Comparators;->lambda$comparingLong$c3a37e6$1(Ljava8/util/function/ToLongFunction;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
