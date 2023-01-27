.class final synthetic Ljava8/util/stream/Collectors$$Lambda$56;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$56;->arg$1:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Object;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$56;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$56;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljava8/util/stream/Collectors$$Lambda$56;->arg$1:Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/stream/Collectors;->lambda$boxSupplier$47(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
