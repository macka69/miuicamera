.class final synthetic Ljava8/util/function/BiFunctions$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiFunction;


# instance fields
.field private final arg$1:Ljava8/util/function/Function;

.field private final arg$2:Ljava8/util/function/BiFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/BiFunctions$$Lambda$1;->arg$1:Ljava8/util/function/Function;

    iput-object p2, p0, Ljava8/util/function/BiFunctions$$Lambda$1;->arg$2:Ljava8/util/function/BiFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)Ljava8/util/function/BiFunction;
    .locals 1

    new-instance v0, Ljava8/util/function/BiFunctions$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/BiFunctions$$Lambda$1;-><init>(Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/function/BiFunctions$$Lambda$1;->arg$1:Ljava8/util/function/Function;

    iget-object p0, p0, Ljava8/util/function/BiFunctions$$Lambda$1;->arg$2:Ljava8/util/function/BiFunction;

    invoke-static {v0, p0, p1, p2}, Ljava8/util/function/BiFunctions;->lambda$andThen$140(Ljava8/util/function/Function;Ljava8/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
