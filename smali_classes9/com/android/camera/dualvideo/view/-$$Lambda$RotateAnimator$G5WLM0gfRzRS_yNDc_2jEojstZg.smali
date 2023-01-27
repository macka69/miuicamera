.class public final synthetic Lcom/android/camera/dualvideo/view/-$$Lambda$RotateAnimator$G5WLM0gfRzRS_yNDc_2jEojstZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/view/RotateAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/view/RotateAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$RotateAnimator$G5WLM0gfRzRS_yNDc_2jEojstZg;->f$0:Lcom/android/camera/dualvideo/view/RotateAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$RotateAnimator$G5WLM0gfRzRS_yNDc_2jEojstZg;->f$0:Lcom/android/camera/dualvideo/view/RotateAnimator;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/view/RotateAnimator;->lambda$disposeRotation$0$RotateAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method
