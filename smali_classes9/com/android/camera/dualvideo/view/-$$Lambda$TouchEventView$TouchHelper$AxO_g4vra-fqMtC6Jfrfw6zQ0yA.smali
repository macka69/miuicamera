.class public final synthetic Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$AxO_g4vra-fqMtC6Jfrfw6zQ0yA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$AxO_g4vra-fqMtC6Jfrfw6zQ0yA;->f$0:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iput p2, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$AxO_g4vra-fqMtC6Jfrfw6zQ0yA;->f$1:F

    iput p3, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$AxO_g4vra-fqMtC6Jfrfw6zQ0yA;->f$2:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$AxO_g4vra-fqMtC6Jfrfw6zQ0yA;->f$0:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iget v1, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$AxO_g4vra-fqMtC6Jfrfw6zQ0yA;->f$1:F

    iget p0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$AxO_g4vra-fqMtC6Jfrfw6zQ0yA;->f$2:F

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->lambda$getVirtualViewAt$1$TouchEventView$TouchHelper(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
