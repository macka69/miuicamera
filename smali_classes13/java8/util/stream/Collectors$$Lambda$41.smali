.class final synthetic Ljava8/util/stream/Collectors$$Lambda$41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$41;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$41;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$41;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$41;->instance:Ljava8/util/stream/Collectors$$Lambda$41;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Supplier;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$41;->instance:Ljava8/util/stream/Collectors$$Lambda$41;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Ljava8/util/stream/Collectors;->lambda$averagingInt$32()[J

    move-result-object p0

    return-object p0
.end method
