.class final synthetic Ljava8/util/stream/MatchOps$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava8/util/stream/MatchOps$MatchKind;

.field private final arg$2:Ljava8/util/function/DoublePredicate;


# direct methods
.method private constructor <init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/DoublePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/MatchOps$$Lambda$4;->arg$1:Ljava8/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava8/util/stream/MatchOps$$Lambda$4;->arg$2:Ljava8/util/function/DoublePredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/DoublePredicate;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/MatchOps$$Lambda$4;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/MatchOps$$Lambda$4;-><init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/DoublePredicate;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/MatchOps$$Lambda$4;->arg$1:Ljava8/util/stream/MatchOps$MatchKind;

    iget-object p0, p0, Ljava8/util/stream/MatchOps$$Lambda$4;->arg$2:Ljava8/util/function/DoublePredicate;

    invoke-static {v0, p0}, Ljava8/util/stream/MatchOps;->lambda$makeDouble$118(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object p0

    return-object p0
.end method
