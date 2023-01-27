.class Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "MoreModeListAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$002(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;F)F

    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->getOverScrollY()F

    move-result p2

    iget-object p3, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p3}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$000(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$102(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;F)F

    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->getRotate()F

    move-result p1

    float-to-int p1, p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/16 p3, 0x5a

    if-eq p1, p3, :cond_2

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_1

    const/16 p3, 0x10e

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$100(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p0

    neg-float p0, p0

    invoke-interface {p1, p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$100(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p0

    neg-float p0, p0

    invoke-interface {p1, p2, p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$100(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-static {p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->access$100(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    :cond_4
    :goto_0
    return-void
.end method
