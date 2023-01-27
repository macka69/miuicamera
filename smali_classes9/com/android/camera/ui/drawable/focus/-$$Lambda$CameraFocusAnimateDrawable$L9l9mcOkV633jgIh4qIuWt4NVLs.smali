.class public final synthetic Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusAnimateDrawable$L9l9mcOkV633jgIh4qIuWt4NVLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusAnimateDrawable$L9l9mcOkV633jgIh4qIuWt4NVLs;->f$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusAnimateDrawable$L9l9mcOkV633jgIh4qIuWt4NVLs;->f$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->lambda$startEvShowAgainAnimation$1$CameraFocusAnimateDrawable(Landroid/animation/ValueAnimator;)V

    return-void
.end method
