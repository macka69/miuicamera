.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$rOnnZvPvuqz6I1Ms_LiH9SdtEDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$rOnnZvPvuqz6I1Ms_LiH9SdtEDc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$rOnnZvPvuqz6I1Ms_LiH9SdtEDc;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$rOnnZvPvuqz6I1Ms_LiH9SdtEDc;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$rOnnZvPvuqz6I1Ms_LiH9SdtEDc;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$rOnnZvPvuqz6I1Ms_LiH9SdtEDc;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$handleTouch$26(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
