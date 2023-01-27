.class Lcom/android/camera/ui/CapsuleLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CapsuleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CapsuleLayout;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CapsuleLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CapsuleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$2;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$2;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$2;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p1}, Lcom/android/camera/ui/CapsuleLayout;->access$100(Lcom/android/camera/ui/CapsuleLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$2;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/CapsuleLayout;->access$102(Lcom/android/camera/ui/CapsuleLayout;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/CapsuleLayout$2;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$2;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/ui/CapsuleLayout$2;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p0, v0}, Lcom/android/camera/ui/CapsuleLayout;->access$102(Lcom/android/camera/ui/CapsuleLayout;Z)Z

    return-void
.end method
