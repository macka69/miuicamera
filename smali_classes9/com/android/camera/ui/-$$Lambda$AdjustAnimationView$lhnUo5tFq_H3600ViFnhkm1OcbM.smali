.class public final synthetic Lcom/android/camera/ui/-$$Lambda$AdjustAnimationView$lhnUo5tFq_H3600ViFnhkm1OcbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/ui/AdjustAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/AdjustAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/-$$Lambda$AdjustAnimationView$lhnUo5tFq_H3600ViFnhkm1OcbM;->f$0:Lcom/android/camera/ui/AdjustAnimationView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/-$$Lambda$AdjustAnimationView$lhnUo5tFq_H3600ViFnhkm1OcbM;->f$0:Lcom/android/camera/ui/AdjustAnimationView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AdjustAnimationView;->lambda$startAnim$0$AdjustAnimationView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
