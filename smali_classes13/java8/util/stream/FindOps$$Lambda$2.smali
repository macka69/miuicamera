.class final synthetic Ljava8/util/stream/FindOps$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Predicate;


# static fields
.field private static final instance:Ljava8/util/stream/FindOps$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/FindOps$$Lambda$2;

    invoke-direct {v0}, Ljava8/util/stream/FindOps$$Lambda$2;-><init>()V

    sput-object v0, Ljava8/util/stream/FindOps$$Lambda$2;->instance:Ljava8/util/stream/FindOps$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Predicate;
    .locals 1

    sget-object v0, Ljava8/util/stream/FindOps$$Lambda$2;->instance:Ljava8/util/stream/FindOps$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava8/util/OptionalInt;

    invoke-virtual {p1}, Ljava8/util/OptionalInt;->isPresent()Z

    move-result p0

    return p0
.end method
