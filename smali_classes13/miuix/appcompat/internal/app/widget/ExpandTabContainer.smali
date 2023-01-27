.class public Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "ExpandTabContainer.java"


# instance fields
.field private mCurrentStage:I

.field private mTabSizeStages:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mCurrentStage:I

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_expand_text_size_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_expand_text_size_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x1

    aput p1, p0, v0

    return-void
.end method

.method private measureTabViewSizeStage2([III)V
    .locals 6

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mCurrentStage:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mCurrentStage:I

    aget v2, p1, v0

    move v3, v1

    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_2

    int-to-float v5, v2

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2, p3}, Landroid/widget/LinearLayout;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getTabBarLayoutRes()I
    .locals 0

    sget p0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tabbar_expand:I

    return p0
.end method

.method public getTabTextStyle()I
    .locals 0

    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabTextExpandStyle:I

    return p0
.end method

.method public getTabViewLayoutRes()I
    .locals 0

    sget p0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tab_expand:I

    return p0
.end method

.method public getTabViewMarginHorizontal()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_expand_margin:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->mTabSizeStages:[I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;->measureTabViewSizeStage2([III)V

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->onMeasure(II)V

    return-void
.end method
