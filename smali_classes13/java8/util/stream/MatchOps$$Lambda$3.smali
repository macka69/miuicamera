.class final synthetic Ljava8/util/stream/MatchOps$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava8/util/stream/MatchOps$MatchKind;

.field private final arg$2:Ljava8/util/function/LongPredicate;


# direct methods
.method private constructor <init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/MatchOps$$Lambda$3;->arg$1:Ljava8/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava8/util/stream/MatchOps$$Lambda$3;->arg$2:Ljava8/util/function/LongPredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/LongPredicate;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/MatchOps$$Lambda$3;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/MatchOps$$Lambda$3;-><init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/LongPredicate;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/MatchOps$$Lambda$3;->arg$1:Ljava8/util/stream/MatchOps$MatchKind;

    iget-object p0, p0, Ljava8/util/stream/MatchOps$$Lambda$3;->arg$2:Ljava8/util/function/LongPredicate;

    invoke-static {v0, p0}, Ljava8/util/stream/MatchOps;->lambda$makeLong$117(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object p0

    return-object p0
.end method
