.class public Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;
.super Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.source "SecondaryExpandTabContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setContentHeight(I)V

    return-void
.end method


# virtual methods
.method public getTabBarLayoutRes()I
    .locals 0

    sget p0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tabbar_secondary:I

    return p0
.end method

.method public getTabTextStyle()I
    .locals 0

    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryExpandStyle:I

    return p0
.end method

.method public getTabViewLayoutRes()I
    .locals 0

    sget p0, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_tab_secondary:I

    return p0
.end method

.method public getTabViewMarginHorizontal()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_tab_secondary_margin:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method
