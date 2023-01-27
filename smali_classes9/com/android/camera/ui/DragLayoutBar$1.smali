.class Lcom/android/camera/ui/DragLayoutBar$1;
.super Ljava/lang/Object;
.source "DragLayoutBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/DragLayoutBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/DragLayoutBar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/DragLayoutBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/DragLayoutBar$1;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar$1;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayoutBar;->access$002(Lcom/android/camera/ui/DragLayoutBar;F)F

    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar$1;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayoutBar;->access$200(Lcom/android/camera/ui/DragLayoutBar;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/DragLayoutBar$1;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    invoke-static {v2}, Lcom/android/camera/ui/DragLayoutBar;->access$300(Lcom/android/camera/ui/DragLayoutBar;)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/DragLayoutBar;->access$102(Lcom/android/camera/ui/DragLayoutBar;F)F

    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar$1;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    invoke-static {v0}, Lcom/android/camera/ui/DragLayoutBar;->access$400(Lcom/android/camera/ui/DragLayoutBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar$1;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/camera/ui/DragLayoutBar;->access$502(Lcom/android/camera/ui/DragLayoutBar;F)F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar$1;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/camera/ui/DragLayoutBar;->access$502(Lcom/android/camera/ui/DragLayoutBar;F)F

    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/DragLayoutBar$1;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
