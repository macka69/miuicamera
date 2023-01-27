.class Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;
.super Lmiui/view/animation/CubicEaseOutInterpolator;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field final synthetic val$isHideThumbnail:Z

.field final synthetic val$isShowCover:Z

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput-boolean p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$isShowCover:Z

    iput-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$isHideThumbnail:Z

    iput-boolean p4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    invoke-direct {p0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    invoke-super {p0, p1}, Lmiui/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$isHideThumbnail:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz v3, :cond_0

    sub-float v3, v2, p1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v1

    if-nez v3, :cond_1

    move v3, p1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz v3, :cond_3

    move v3, p1

    goto :goto_1

    :cond_3
    sub-float v3, v2, p1

    :goto_1
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I

    move-result v0

    const/16 v3, 0xcc

    const/4 v4, 0x4

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDualVideoCameraChoose()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/fragment/bottom/action/Pickers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/fragment/bottom/action/Pickers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz v3, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1800(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz v1, :cond_a

    move v1, p1

    goto :goto_4

    :cond_a
    sub-float v1, v2, p1

    :goto_4
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_b
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$2000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz p0, :cond_c

    move v2, p1

    goto :goto_5

    :cond_c
    sub-float/2addr v2, p1

    :goto_5
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_d
    return p1
.end method
