.class Lcom/android/camera/fragment/manually/FragmentManuallyExtra$3;
.super Ljava/lang/Object;
.source "FragmentManuallyExtra.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$3;->this$0:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iput-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$3;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$3;->val$toView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$3;->val$fromView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$3;->val$toView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
