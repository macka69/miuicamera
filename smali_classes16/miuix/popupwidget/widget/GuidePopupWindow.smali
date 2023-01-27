.class public Lmiuix/popupwidget/widget/GuidePopupWindow;
.super Lmiuix/popupwidget/widget/ArrowPopupWindow;
.source "GuidePopupWindow.java"


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x12

.field public static final ARROW_BOTTOM_MODE:I = 0x10

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x11

.field public static final ARROW_LEFT_MODE:I = 0x20

.field public static final ARROW_RIGHT_MODE:I = 0x40

.field public static final ARROW_TOP_LEFT_MODE:I = 0x9

.field public static final ARROW_TOP_MODE:I = 0x8

.field public static final ARROW_TOP_RIGHT_MODE:I = 0xa

.field private static final DEFAULT_SHOW_DURATION:I = 0x1388


# instance fields
.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mGuideView:Landroid/widget/LinearLayout;

.field private mShowDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lmiuix/popupwidget/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow$1;-><init>(Lmiuix/popupwidget/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private addGuideTextView(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    sget v4, Lmiuix/popupwidget/R$layout;->miuix_appcompat_guide_popup_text_view:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mGuideView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected onPrepareWindow()V
    .locals 4

    invoke-super {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->onPrepareWindow()V

    const/16 v0, 0x1388

    iput v0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$layout;->miuix_appcompat_guide_popup_content_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mGuideView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0, v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->enableShowingAnimation(Z)V

    return-void
.end method

.method public setGuideText(I)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->addGuideTextView(Ljava/lang/String;)V

    return-void
.end method

.method public setOffset(II)V
    .locals 0

    iget-object p0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p0, p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setOffset(II)V

    return-void
.end method

.method public setShowDuration(I)V
    .locals 0

    iput p1, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    return-void
.end method

.method public show(Landroid/view/View;IIZ)V
    .locals 2

    invoke-virtual {p0, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setAutoDismiss(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iget-object p3, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lmiuix/popupwidget/widget/GuidePopupWindow;->mShowDuration:I

    int-to-long v0, p0

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget p0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    invoke-static {p1, p0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    return-void
.end method
