.class final synthetic Ljava8/util/function/LongPredicates$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongPredicate;


# instance fields
.field private final arg$1:Ljava8/util/function/LongPredicate;


# direct methods
.method private constructor <init>(Ljava8/util/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/LongPredicates$$Lambda$2;->arg$1:Ljava8/util/function/LongPredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/LongPredicate;)Ljava8/util/function/LongPredicate;
    .locals 1

    new-instance v0, Ljava8/util/function/LongPredicates$$Lambda$2;

    invoke-direct {v0, p0}, Ljava8/util/function/LongPredicates$$Lambda$2;-><init>(Ljava8/util/function/LongPredicate;)V

    return-object v0
.end method


# virtual methods
.method public test(J)Z
    .locals 0

    iget-object p0, p0, Ljava8/util/function/LongPredicates$$Lambda$2;->arg$1:Ljava8/util/function/LongPredicate;

    invoke-static {p0, p1, p2}, Ljava8/util/function/LongPredicates;->lambda$negate$138(Ljava8/util/function/LongPredicate;J)Z

    move-result p0

    return p0
.end method
