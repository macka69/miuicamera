.class public final synthetic Lcom/xiaomi/camera/core/-$$Lambda$PostProcessor$Rf6qnTCxSeobs6wA5ZyTK5hRthQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/camera/core/-$$Lambda$PostProcessor$Rf6qnTCxSeobs6wA5ZyTK5hRthQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/core/-$$Lambda$PostProcessor$Rf6qnTCxSeobs6wA5ZyTK5hRthQ;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/-$$Lambda$PostProcessor$Rf6qnTCxSeobs6wA5ZyTK5hRthQ;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/core/-$$Lambda$PostProcessor$Rf6qnTCxSeobs6wA5ZyTK5hRthQ;->INSTANCE:Lcom/xiaomi/camera/core/-$$Lambda$PostProcessor$Rf6qnTCxSeobs6wA5ZyTK5hRthQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-static {p1}, Lcom/xiaomi/camera/core/PostProcessor;->lambda$chooseAndCloseTuningData$0(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)Z

    move-result p0

    return p0
.end method
