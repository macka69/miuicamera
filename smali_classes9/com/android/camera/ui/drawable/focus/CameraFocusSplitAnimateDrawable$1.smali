.class Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusSplitAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->playSplittingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    :goto_0
    return-void
.end method
