.class Lmiuix/popupwidget/internal/widget/GuidePopupView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/internal/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->mCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->mCancel:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$102(Lmiuix/popupwidget/internal/widget/GuidePopupView;Z)Z

    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$002(Lmiuix/popupwidget/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-static {p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$200(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Lmiuix/popupwidget/widget/GuidePopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->mCancel:Z

    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$2;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$102(Lmiuix/popupwidget/internal/widget/GuidePopupView;Z)Z

    return-void
.end method
