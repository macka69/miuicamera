.class final synthetic Ljava8/util/Spliterators$OfLong$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/Consumer;


# direct methods
.method private constructor <init>(Ljava8/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Spliterators$OfLong$$Lambda$1;->arg$1:Ljava8/util/function/Consumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Consumer;)Ljava8/util/function/LongConsumer;
    .locals 1

    new-instance v0, Ljava8/util/Spliterators$OfLong$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/Spliterators$OfLong$$Lambda$1;-><init>(Ljava8/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    iget-object p0, p0, Ljava8/util/Spliterators$OfLong$$Lambda$1;->arg$1:Ljava8/util/function/Consumer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
