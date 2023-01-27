.class final synthetic Ljava8/util/function/Predicates$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Predicate;


# instance fields
.field private final arg$1:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/Predicates$$Lambda$5;->arg$1:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Object;)Ljava8/util/function/Predicate;
    .locals 1

    new-instance v0, Ljava8/util/function/Predicates$$Lambda$5;

    invoke-direct {v0, p0}, Ljava8/util/function/Predicates$$Lambda$5;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ljava8/util/function/Predicates$$Lambda$5;->arg$1:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/function/Predicates;->lambda$isEqual$122(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
