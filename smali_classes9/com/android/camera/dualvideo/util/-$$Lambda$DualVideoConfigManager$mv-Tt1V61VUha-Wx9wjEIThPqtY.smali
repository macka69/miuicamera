.class public final synthetic Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$mv-Tt1V61VUha-Wx9wjEIThPqtY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$mv-Tt1V61VUha-Wx9wjEIThPqtY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$mv-Tt1V61VUha-Wx9wjEIThPqtY;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$mv-Tt1V61VUha-Wx9wjEIThPqtY;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$mv-Tt1V61VUha-Wx9wjEIThPqtY;->INSTANCE:Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$mv-Tt1V61VUha-Wx9wjEIThPqtY;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->lambda$getConfigDescription$7(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
