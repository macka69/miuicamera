.class final synthetic Ljava8/util/Comparators$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final arg$1:Ljava8/util/function/Function;


# direct methods
.method private constructor <init>(Ljava8/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Comparators$$Lambda$2;->arg$1:Ljava8/util/function/Function;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Ljava8/util/Comparators$$Lambda$2;

    invoke-direct {v0, p0}, Ljava8/util/Comparators$$Lambda$2;-><init>(Ljava8/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ljava8/util/Comparators$$Lambda$2;->arg$1:Ljava8/util/function/Function;

    invoke-static {p0, p1, p2}, Ljava8/util/Comparators;->lambda$comparing$628f93f7$1(Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
