.class public final synthetic Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$kiQ8OZ2ipIaySNdFMYE0zOB_8-E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$kiQ8OZ2ipIaySNdFMYE0zOB_8-E;->f$0:Landroid/view/View;

    iput-object p2, p0, Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$kiQ8OZ2ipIaySNdFMYE0zOB_8-E;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$kiQ8OZ2ipIaySNdFMYE0zOB_8-E;->f$0:Landroid/view/View;

    iget-object p0, p0, Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$kiQ8OZ2ipIaySNdFMYE0zOB_8-E;->f$1:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->lambda$executeAnim$0(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
