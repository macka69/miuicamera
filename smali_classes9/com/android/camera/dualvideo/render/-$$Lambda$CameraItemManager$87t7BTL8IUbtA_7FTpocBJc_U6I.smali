.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$87t7BTL8IUbtA_7FTpocBJc_U6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;

.field public final synthetic f$1:Lcom/android/camera/dualvideo/render/CameraItemInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemManager;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$87t7BTL8IUbtA_7FTpocBJc_U6I;->f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$87t7BTL8IUbtA_7FTpocBJc_U6I;->f$1:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$87t7BTL8IUbtA_7FTpocBJc_U6I;->f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$87t7BTL8IUbtA_7FTpocBJc_U6I;->f$1:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$deleteCameraItem$36$CameraItemManager(Lcom/android/camera/dualvideo/render/CameraItemInterface;Ljava/lang/Boolean;)V

    return-void
.end method
