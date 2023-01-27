.class public final synthetic Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$2$7FJb9Godan1tVOeZ035by_j97rA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$2$7FJb9Godan1tVOeZ035by_j97rA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$2$7FJb9Godan1tVOeZ035by_j97rA;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$2$7FJb9Godan1tVOeZ035by_j97rA;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$2$7FJb9Godan1tVOeZ035by_j97rA;->INSTANCE:Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$2$7FJb9Godan1tVOeZ035by_j97rA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/xiaomi/camera/core/ParallelDataZipper$2;->lambda$run$1(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;

    move-result-object p0

    return-object p0
.end method
