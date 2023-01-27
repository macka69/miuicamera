.class public final synthetic Lcom/android/camera/ui/-$$Lambda$FocusView$g2iqPZE7YRgP4xtV7XTTnh8Edbo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/-$$Lambda$FocusView$g2iqPZE7YRgP4xtV7XTTnh8Edbo;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/-$$Lambda$FocusView$g2iqPZE7YRgP4xtV7XTTnh8Edbo;->f$0:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/camera/ui/FocusView;->lambda$startAlphaAnimation$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
