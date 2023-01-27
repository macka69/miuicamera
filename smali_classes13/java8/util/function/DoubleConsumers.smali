.class public final Ljava8/util/function/DoubleConsumers;
.super Ljava/lang/Object;
.source "DoubleConsumers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/DoubleConsumer;Ljava8/util/function/DoubleConsumer;)Ljava8/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava8/util/function/DoubleConsumers$$Lambda$1;->lambdaFactory$(Ljava8/util/function/DoubleConsumer;Ljava8/util/function/DoubleConsumer;)Ljava8/util/function/DoubleConsumer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$andThen$162(Ljava8/util/function/DoubleConsumer;Ljava8/util/function/DoubleConsumer;D)V
    .locals 0

    invoke-interface {p0, p2, p3}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    invoke-interface {p1, p2, p3}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method
