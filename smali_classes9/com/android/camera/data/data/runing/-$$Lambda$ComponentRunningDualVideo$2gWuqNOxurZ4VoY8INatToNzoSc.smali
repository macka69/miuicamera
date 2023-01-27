.class public final synthetic Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$2gWuqNOxurZ4VoY8INatToNzoSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$2gWuqNOxurZ4VoY8INatToNzoSc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$2gWuqNOxurZ4VoY8INatToNzoSc;

    invoke-direct {v0}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$2gWuqNOxurZ4VoY8INatToNzoSc;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$2gWuqNOxurZ4VoY8INatToNzoSc;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$2gWuqNOxurZ4VoY8INatToNzoSc;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->lambda$refreshSelectData$6(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
