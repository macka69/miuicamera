.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$F1SAeTi98s9R7Xbmfw5NyIVz5_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$F1SAeTi98s9R7Xbmfw5NyIVz5_4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$F1SAeTi98s9R7Xbmfw5NyIVz5_4;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$F1SAeTi98s9R7Xbmfw5NyIVz5_4;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$F1SAeTi98s9R7Xbmfw5NyIVz5_4;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$F1SAeTi98s9R7Xbmfw5NyIVz5_4;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$updateRenderlistAnyway$43(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
