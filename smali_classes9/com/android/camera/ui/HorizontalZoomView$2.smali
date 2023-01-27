.class Lcom/android/camera/ui/HorizontalZoomView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HorizontalZoomView;->startValueAnimator(IFFFFZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalZoomView;

.field final synthetic val$action:I

.field final synthetic val$targetValue:F


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalZoomView;FI)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$targetValue:F

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$action:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->access$102(Lcom/android/camera/ui/HorizontalZoomView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalZoomView;->access$100(Lcom/android/camera/ui/HorizontalZoomView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$targetValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$action:I

    invoke-interface {p1, v0, v1}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onChangeValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$102(Lcom/android/camera/ui/HorizontalZoomView;Z)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$action:I

    invoke-interface {p1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState(I)V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    invoke-interface {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onScrollEnd()V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$targetValue:F

    invoke-interface {p1, p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onScrollStart(F)V

    :cond_0
    return-void
.end method
