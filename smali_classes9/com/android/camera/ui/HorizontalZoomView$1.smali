.class Lcom/android/camera/ui/HorizontalZoomView$1;
.super Ljava/lang/Object;
.source "HorizontalZoomView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$currentValue:F

.field final synthetic val$isUseTime:Z

.field final synthetic val$targetValue:F


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalZoomView;ZFFI)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iput-boolean p2, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$isUseTime:Z

    iput p3, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$currentValue:F

    iput p4, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$targetValue:F

    iput p5, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$isUseTime:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$000(Lcom/android/camera/ui/HorizontalZoomView;)Landroid/util/Spline;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$currentValue:F

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$targetValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$targetValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$currentValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object v0, v0, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView$1;->val$action:I

    invoke-interface {v0, p1, p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onChangeValue(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
