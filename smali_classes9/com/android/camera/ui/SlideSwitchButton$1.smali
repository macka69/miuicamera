.class Lcom/android/camera/ui/SlideSwitchButton$1;
.super Lmiui/view/animation/CubicEaseOutInterpolator;
.source "SlideSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SlideSwitchButton;->setIndex(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SlideSwitchButton;

.field final synthetic val$index:I

.field final synthetic val$left:F

.field final synthetic val$targetMarginLeft:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SlideSwitchButton;FII)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iput p2, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$left:F

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$targetMarginLeft:I

    iput p4, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$index:I

    invoke-direct {p0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    invoke-super {p0, p1}, Lmiui/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$left:F

    iget v2, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$targetMarginLeft:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->access$002(Lcom/android/camera/ui/SlideSwitchButton;F)F

    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$400(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v1}, Lcom/android/camera/ui/SlideSwitchButton;->access$300(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$100(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/SlideSwitchButton;->access$200(Lcom/android/camera/ui/SlideSwitchButton;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v4, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$index:I

    invoke-static {v3, v4}, Lcom/android/camera/ui/SlideSwitchButton;->access$200(Lcom/android/camera/ui/SlideSwitchButton;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->val$index:I

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$300(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v5}, Lcom/android/camera/ui/SlideSwitchButton;->access$500(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$600(Lcom/android/camera/ui/SlideSwitchButton;II)V

    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$100(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$100(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$300(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v3}, Lcom/android/camera/ui/SlideSwitchButton;->access$500(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$600(Lcom/android/camera/ui/SlideSwitchButton;II)V

    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-static {v0}, Lcom/android/camera/ui/SlideSwitchButton;->access$100(Lcom/android/camera/ui/SlideSwitchButton;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SlideSwitchButton;->access$700(Lcom/android/camera/ui/SlideSwitchButton;IZ)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/SlideSwitchButton$1;->this$0:Lcom/android/camera/ui/SlideSwitchButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return p1
.end method
