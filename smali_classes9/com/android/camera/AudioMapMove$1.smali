.class Lcom/android/camera/AudioMapMove$1;
.super Ljava/lang/Object;
.source "AudioMapMove.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AudioMapMove;->startAnimatorAudioMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AudioMapMove;


# direct methods
.method constructor <init>(Lcom/android/camera/AudioMapMove;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/AudioMapMove;->access$002(Lcom/android/camera/AudioMapMove;F)F

    iget-object p1, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {p1}, Lcom/android/camera/AudioMapMove;->access$200(Lcom/android/camera/AudioMapMove;)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {v1}, Lcom/android/camera/AudioMapMove;->access$000(Lcom/android/camera/AudioMapMove;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {v2}, Lcom/android/camera/AudioMapMove;->access$300(Lcom/android/camera/AudioMapMove;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {v3}, Lcom/android/camera/AudioMapMove;->access$200(Lcom/android/camera/AudioMapMove;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/camera/AudioMapMove;->access$102(Lcom/android/camera/AudioMapMove;F)F

    iget-object p1, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {p1}, Lcom/android/camera/AudioMapMove;->access$500(Lcom/android/camera/AudioMapMove;)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {v1}, Lcom/android/camera/AudioMapMove;->access$000(Lcom/android/camera/AudioMapMove;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {v2}, Lcom/android/camera/AudioMapMove;->access$600(Lcom/android/camera/AudioMapMove;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {v3}, Lcom/android/camera/AudioMapMove;->access$500(Lcom/android/camera/AudioMapMove;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/camera/AudioMapMove;->access$402(Lcom/android/camera/AudioMapMove;F)F

    iget-object p1, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {p1}, Lcom/android/camera/AudioMapMove;->access$100(Lcom/android/camera/AudioMapMove;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/AudioMapMove;->access$702(Lcom/android/camera/AudioMapMove;F)F

    iget-object p1, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-static {p1}, Lcom/android/camera/AudioMapMove;->access$400(Lcom/android/camera/AudioMapMove;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/AudioMapMove;->access$802(Lcom/android/camera/AudioMapMove;F)F

    iget-object p0, p0, Lcom/android/camera/AudioMapMove$1;->this$0:Lcom/android/camera/AudioMapMove;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
