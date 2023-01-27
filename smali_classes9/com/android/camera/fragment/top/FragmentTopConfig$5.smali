.class Lcom/android/camera/fragment/top/FragmentTopConfig$5;
.super Ljava/lang/Object;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverVerticalOffset(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field final synthetic val$heightOffset:I

.field final synthetic val$startCurrentHeight:I

.field final synthetic val$startHeight:I

.field final synthetic val$startPaddingTop:I


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$startHeight:I

    iput p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$heightOffset:I

    iput p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$startCurrentHeight:I

    iput p5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$startPaddingTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$startHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$heightOffset:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->setTopVerticalOffset(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$startCurrentHeight:I

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$startHeight:I

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentHeight(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$900(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$900(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$startPaddingTop:I

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->val$startHeight:I

    sub-int/2addr p1, v3

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$900(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$5;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$900(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
