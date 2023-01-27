.class public Lmiuix/blurdrawable/widget/BlurBackgroundView;
.super Landroid/widget/FrameLayout;
.source "BlurBackgroundView.java"


# instance fields
.field private mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

.field private mBlurForeground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/blurdrawable/widget/BlurBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createBlurBackground()V
    .locals 4

    new-instance v0, Lcom/miui/blur/sdk/drawable/BlurDrawable;

    invoke-direct {v0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;-><init>()V

    iput-object v0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0xa5

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    const/16 v2, 0x13

    const/16 v3, 0x5c

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setMixColor(II)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/blurdrawable/R$color;->miuix_blurdrawable_view_fg_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    const/16 v2, 0x12

    const/16 v3, 0x6b

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setMixColor(II)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/blurdrawable/R$color;->miuix_blurdrawable_view_fg_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    return-void
.end method


# virtual methods
.method public isSupportBlur()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->createBlurBackground()V

    :cond_1
    iget-object p0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object p0, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setBlurBackground(Z)Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->createBlurBackground()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->setAlpha(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurForeground:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lmiuix/blurdrawable/widget/BlurBackgroundView;->mBlurBackground:Lcom/miui/blur/sdk/drawable/BlurDrawable;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
