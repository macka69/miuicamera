.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1Qv_SQx_X6cJAO_DDcAwpdm3YqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1Qv_SQx_X6cJAO_DDcAwpdm3YqA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1Qv_SQx_X6cJAO_DDcAwpdm3YqA;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1Qv_SQx_X6cJAO_DDcAwpdm3YqA;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1Qv_SQx_X6cJAO_DDcAwpdm3YqA;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1Qv_SQx_X6cJAO_DDcAwpdm3YqA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$handleTouch$29(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
