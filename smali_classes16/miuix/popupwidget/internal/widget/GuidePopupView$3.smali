.class Lmiuix/popupwidget/internal/widget/GuidePopupView$3;
.super Ljava/lang/Object;
.source "GuidePopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/GuidePopupView;->animateToShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$002(Lmiuix/popupwidget/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-static {v1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$300(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-static {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return v2
.end method
