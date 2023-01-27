.class final synthetic Ljava8/util/stream/Collectors$$Lambda$82;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$82;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$82;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$82;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$82;->instance:Ljava8/util/stream/Collectors$$Lambda$82;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BiConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$82;->instance:Ljava8/util/stream/Collectors$$Lambda$82;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava8/util/stream/Collectors$1PairBox;

    invoke-virtual {p1, p2}, Ljava8/util/stream/Collectors$1PairBox;->add(Ljava/lang/Object;)V

    return-void
.end method
