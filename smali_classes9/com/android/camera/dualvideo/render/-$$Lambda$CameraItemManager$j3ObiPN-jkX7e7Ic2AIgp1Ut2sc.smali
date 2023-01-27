.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$j3ObiPN-jkX7e7Ic2AIgp1Ut2sc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;

.field public final synthetic f$1:F

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemManager;FLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$j3ObiPN-jkX7e7Ic2AIgp1Ut2sc;->f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;

    iput p2, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$j3ObiPN-jkX7e7Ic2AIgp1Ut2sc;->f$1:F

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$j3ObiPN-jkX7e7Ic2AIgp1Ut2sc;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$j3ObiPN-jkX7e7Ic2AIgp1Ut2sc;->f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;

    iget v1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$j3ObiPN-jkX7e7Ic2AIgp1Ut2sc;->f$1:F

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$j3ObiPN-jkX7e7Ic2AIgp1Ut2sc;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$getRenderableListForRecord$0$CameraItemManager(FLjava/util/List;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
