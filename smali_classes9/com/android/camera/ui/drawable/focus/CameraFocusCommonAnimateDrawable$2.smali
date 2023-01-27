.class Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusCommonAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startTouchDownAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusingAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusFailAnimation()V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mIsTouchFocus:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const v0, 0x3fc28f5c

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method
