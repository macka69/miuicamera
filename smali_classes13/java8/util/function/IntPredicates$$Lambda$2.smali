.class final synthetic Ljava8/util/function/IntPredicates$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/IntPredicate;


# instance fields
.field private final arg$1:Ljava8/util/function/IntPredicate;


# direct methods
.method private constructor <init>(Ljava8/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/IntPredicates$$Lambda$2;->arg$1:Ljava8/util/function/IntPredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/IntPredicate;)Ljava8/util/function/IntPredicate;
    .locals 1

    new-instance v0, Ljava8/util/function/IntPredicates$$Lambda$2;

    invoke-direct {v0, p0}, Ljava8/util/function/IntPredicates$$Lambda$2;-><init>(Ljava8/util/function/IntPredicate;)V

    return-object v0
.end method


# virtual methods
.method public test(I)Z
    .locals 0

    iget-object p0, p0, Ljava8/util/function/IntPredicates$$Lambda$2;->arg$1:Ljava8/util/function/IntPredicate;

    invoke-static {p0, p1}, Ljava8/util/function/IntPredicates;->lambda$negate$142(Ljava8/util/function/IntPredicate;I)Z

    move-result p0

    return p0
.end method
