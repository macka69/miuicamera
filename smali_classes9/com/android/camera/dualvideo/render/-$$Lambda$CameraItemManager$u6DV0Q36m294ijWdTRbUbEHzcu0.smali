.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$u6DV0Q36m294ijWdTRbUbEHzcu0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$u6DV0Q36m294ijWdTRbUbEHzcu0;->f$0:I

    iput p2, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$u6DV0Q36m294ijWdTRbUbEHzcu0;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$u6DV0Q36m294ijWdTRbUbEHzcu0;->f$0:I

    iget p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$u6DV0Q36m294ijWdTRbUbEHzcu0;->f$1:I

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$onTouched$34(IILcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
