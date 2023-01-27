.class public final synthetic Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$lNcf3Ua7KbX6z5f28TVNFBpq7TY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$lNcf3Ua7KbX6z5f28TVNFBpq7TY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$lNcf3Ua7KbX6z5f28TVNFBpq7TY;

    invoke-direct {v0}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$lNcf3Ua7KbX6z5f28TVNFBpq7TY;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$lNcf3Ua7KbX6z5f28TVNFBpq7TY;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$lNcf3Ua7KbX6z5f28TVNFBpq7TY;

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

    invoke-static {p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->lambda$getLayoutForSelect$13(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    return-object p0
.end method
