.class Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showDocumentReviewViews(Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field final synthetic val$animView:Lcom/android/camera/ui/AnimationView;

.field final synthetic val$snapshotView:Lcom/android/camera/ui/AdjustAnimationView;

.field final synthetic val$thumbnailLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AnimationView;Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->val$animView:Lcom/android/camera/ui/AnimationView;

    iput-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->val$snapshotView:Lcom/android/camera/ui/AdjustAnimationView;

    iput-object p4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->val$thumbnailLayout:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->val$animView:Lcom/android/camera/ui/AnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->val$snapshotView:Lcom/android/camera/ui/AdjustAnimationView;

    invoke-virtual {p1}, Lcom/android/camera/ui/AdjustAnimationView;->clearBitmap()V

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->val$snapshotView:Lcom/android/camera/ui/AdjustAnimationView;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->val$animView:Lcom/android/camera/ui/AnimationView;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;->val$thumbnailLayout:Landroid/view/View;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;)V

    return-void
.end method
