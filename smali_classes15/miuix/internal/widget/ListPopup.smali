.class public Lmiuix/internal/widget/ListPopup;
.super Landroid/widget/PopupWindow;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/ListPopup$ContentSize;
    }
.end annotation


# static fields
.field private static final DIM:F = 0.3f

.field private static final OFFSET_X:F = 8.0f

.field private static final OFFSET_Y:F = 8.0f

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field protected final mBackgroundPadding:Landroid/graphics/Rect;

.field private mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

.field protected mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field protected mElevation:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mMinMarginScreen:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetXSet:Z

.field private mOffsetY:I

.field private mOffsetYSet:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mRootView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const v0, 0x800035

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    new-instance v0, Lmiuix/internal/widget/ListPopup$1;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_maximum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_minimum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    new-instance v0, Lmiuix/internal/widget/ListPopup$ContentSize;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>(Lmiuix/internal/widget/ListPopup;Lmiuix/internal/widget/ListPopup$1;)V

    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v0, Lmiuix/internal/widget/RoundFrameLayout;

    invoke-direct {v0, p1}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    new-instance v1, Lmiuix/internal/widget/-$$Lambda$ListPopup$8JGgEYjH8MfL0nDL6g92Af4GuJg;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/-$$Lambda$ListPopup$8JGgEYjH8MfL0nDL6g92Af4GuJg;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareContentView(Landroid/content/Context;)V

    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->popupWindowElevation:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    new-instance v0, Lmiuix/internal/widget/-$$Lambda$ListPopup$EUXfagJaknNM11VVsRAcJmoWPsQ;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/-$$Lambda$ListPopup$EUXfagJaknNM11VVsRAcJmoWPsQ;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    return-object p0
.end method

.method private calculateXoffset(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    aget v1, v0, v3

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    add-int/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    sub-int/2addr v1, v4

    aget v0, v0, v3

    goto :goto_0

    :cond_0
    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    add-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    sub-int/2addr v1, v4

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    add-int/2addr v1, v4

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    :goto_0
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    :cond_2
    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    if-nez v0, :cond_4

    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr p1, p0

    sub-int v1, v3, p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr p1, p0

    add-int v1, v3, p1

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    return v1
.end method

.method private calculateYoffset(Landroid/view/View;)I
    .locals 4

    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v0

    add-float/2addr v1, v3

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v3, v3, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget p0, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    add-int/2addr p1, p0

    sub-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public static changeWindowBackground(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3e99999a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move v7, v6

    move-object v8, v4

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v5, :cond_0

    move-object v8, v4

    move v5, v9

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-interface {p1, v0, v8, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v9, v9, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p4, :cond_3

    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {v9, p4}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    goto :goto_1

    :cond_3
    if-le v9, v6, :cond_4

    move v6, v9

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean p2, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez p2, :cond_6

    invoke-virtual {p1, v6}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    :cond_6
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iput v7, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    return-void
.end method

.method protected static setPopupShadowAlpha(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    new-instance v0, Lmiuix/internal/widget/ListPopup$2;

    invoke-direct {v0}, Lmiuix/internal/widget/ListPopup$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected computePopupContentWidth()I
    .locals 4

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/internal/widget/ListPopup;->measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    return-void
.end method

.method public getHorizontalOffset()I
    .locals 0

    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public getVerticalOffset()I
    .locals 0

    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    return p0
.end method

.method public synthetic lambda$new$0$ListPopup(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$ListPopup()V
    .locals 0

    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->lambda$new$1()V

    return-void
.end method

.method public synthetic lambda$prepareShow$2$ListPopup(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/internal/widget/ListPopup;->lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected prepareContentView(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method protected prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 5

    const-string p2, "ListPopupWindow"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "show: anchor is null"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    const v2, 0x102000a

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/ListView;

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    :cond_1
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-eq v1, v4, :cond_3

    :cond_2
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_4

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_5

    const-string p0, "list not found"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    new-instance p2, Lmiuix/internal/widget/-$$Lambda$ListPopup$EEAHM0S02mwIJGsdW6acNhVxhE4;

    invoke-direct {p2, p0}, Lmiuix/internal/widget/-$$Lambda$ListPopup$EEAHM0S02mwIJGsdW6acNhVxhE4;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v3
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setContentWidth(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupWindowContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
