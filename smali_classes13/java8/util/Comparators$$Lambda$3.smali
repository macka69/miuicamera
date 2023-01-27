.class final synthetic Ljava8/util/Comparators$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final arg$1:Ljava8/util/function/ToIntFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/ToIntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Comparators$$Lambda$3;->arg$1:Ljava8/util/function/ToIntFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Ljava8/util/Comparators$$Lambda$3;

    invoke-direct {v0, p0}, Ljava8/util/Comparators$$Lambda$3;-><init>(Ljava8/util/function/ToIntFunction;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ljava8/util/Comparators$$Lambda$3;->arg$1:Ljava8/util/function/ToIntFunction;

    invoke-static {p0, p1, p2}, Ljava8/util/Comparators;->lambda$comparingInt$134fc06a$1(Ljava8/util/function/ToIntFunction;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
