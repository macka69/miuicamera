.class public final synthetic Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$qeZEhyqkvw8pKh9cbLhY6dPccQ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$qeZEhyqkvw8pKh9cbLhY6dPccQ8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$qeZEhyqkvw8pKh9cbLhY6dPccQ8;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$qeZEhyqkvw8pKh9cbLhY6dPccQ8;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$qeZEhyqkvw8pKh9cbLhY6dPccQ8;->INSTANCE:Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$qeZEhyqkvw8pKh9cbLhY6dPccQ8;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->lambda$getFaceType$5(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    return-object p0
.end method
