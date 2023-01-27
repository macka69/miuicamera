.class final synthetic Ljava8/util/stream/Nodes$CollectorTask$OfRef$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongFunction;


# instance fields
.field private final arg$1:Ljava8/util/function/IntFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Nodes$CollectorTask$OfRef$$Lambda$1;->arg$1:Ljava8/util/function/IntFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/IntFunction;)Ljava8/util/function/LongFunction;
    .locals 1

    new-instance v0, Ljava8/util/stream/Nodes$CollectorTask$OfRef$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$CollectorTask$OfRef$$Lambda$1;-><init>(Ljava8/util/function/IntFunction;)V

    return-object v0
.end method


# virtual methods
.method public apply(J)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/Nodes$CollectorTask$OfRef$$Lambda$1;->arg$1:Ljava8/util/function/IntFunction;

    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$CollectorTask$OfRef;->lambda$new$109(Ljava8/util/function/IntFunction;J)Ljava8/util/stream/Node$Builder;

    move-result-object p0

    return-object p0
.end method
