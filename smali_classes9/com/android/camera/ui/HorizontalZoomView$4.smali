.class Lcom/android/camera/ui/HorizontalZoomView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HorizontalZoomView;->startScrollAnimator(FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalZoomView;

.field final synthetic val$selectPointX:F


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalZoomView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->val$selectPointX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->access$302(Lcom/android/camera/ui/HorizontalZoomView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalZoomView;->access$300(Lcom/android/camera/ui/HorizontalZoomView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->val$selectPointX:F

    iput v0, p1, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$302(Lcom/android/camera/ui/HorizontalZoomView;Z)Z

    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$202(Lcom/android/camera/ui/HorizontalZoomView;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView$4;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
