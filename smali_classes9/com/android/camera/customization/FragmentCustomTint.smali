.class public Lcom/android/camera/customization/FragmentCustomTint;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentCustomTint.java"

# interfaces
.implements Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_HEIGHT:I = 0x924

.field private static final IMAGE_RATIO:F = 0.46153846f

.field private static final IMAGE_WIDTH:I = 0x438

.field private static LOG_TAG:Ljava/lang/String; = "FragCustomTint"

.field private static MODE_PREVIEW:I = 0x2

.field private static MODE_SELECT:I = 0x1


# instance fields
.field private PREVIEW_MODE_HEIGHT:I

.field private actionBar:Landroid/view/View;

.field private colorSelectContainer:Landroid/view/View;

.field private colorView:Lcom/android/camera/customization/TintColorTableView;

.field private mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

.field private mCurrentIndex:I

.field private mCurrentItemView:Landroid/view/View;

.field private mCurrentMode:I

.field private previewList:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    sget v0, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->PREVIEW_MODE_HEIGHT:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/customization/FragmentCustomTint;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/customization/FragmentCustomTint;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/customization/FragmentCustomTint;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshPreviewItem(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshPreviewImage(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshColorTable(Landroid/view/View;)V

    return-void
.end method

.method private enterPreviewMode(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->toggleMode(Landroid/view/View;)V

    return-void
.end method

.method private imageHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->previewModeHeight()I

    move-result p0

    return p0
.end method

.method private imageWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeWidth()I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result p0

    return p0
.end method

.method private isSelectMode()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v0, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private previewModeHeight()I
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->isNotchDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr v0, p0

    return v0
.end method

.method private refreshColorTable(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0701d2

    goto :goto_0

    :cond_0
    const p0, 0x7f0701d3

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method private refreshPreviewImage(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a00f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->imageHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->imageWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x45124000    # 2340.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x44870000    # 1080.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le v1, v0, :cond_4

    sub-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0701e8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701e6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    goto :goto_4

    :cond_4
    if-ge v1, v0, :cond_5

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    move p0, v2

    goto :goto_4

    :cond_5
    move p0, v3

    move v2, p0

    :goto_4
    invoke-virtual {p1, v3, v2, v3, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private refreshPreviewItem(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->imageWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->imageHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_1
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method private selectModeHeight()I
    .locals 3

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0701e2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private selectModeWidth()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f200000    # 0.625f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3ea8f5c3

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_2
    const v0, 0x3eec4ec5

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private toggleMode(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v2, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/camera/customization/FragmentCustomTint;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter preview mode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/camera/customization/FragmentCustomTint;->MODE_PREVIEW:I

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/customization/FragmentCustomTint;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter select mode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    :goto_0
    new-instance v0, Lcom/android/camera/customization/FragmentCustomTint$1;

    invoke-direct {v0, p0}, Lcom/android/camera/customization/FragmentCustomTint$1;-><init>(Lcom/android/camera/customization/FragmentCustomTint;)V

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "preview"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->previewModeHeight()I

    move-result v3

    const/4 v4, 0x0

    new-array v5, v4, [J

    invoke-virtual {v1, v2, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v3

    new-array v5, v4, [J

    invoke-virtual {v1, v2, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v3, "select"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v5

    new-array v6, v4, [J

    invoke-virtual {v2, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeWidth()I

    move-result v5

    new-array v6, v4, [J

    invoke-virtual {v2, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    new-instance p0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x6

    new-array v6, v3, [F

    const/high16 v7, 0x43960000    # 300.0f

    aput v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v5, v4

    invoke-virtual {p0, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    new-array v0, v3, [Landroid/view/View;

    aput-object p1, v0, v4

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v3, [Lmiuix/animation/base/AnimConfig;

    aput-object p0, v0, v4

    invoke-interface {p1, v1, v2, v0}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_1
    new-instance p0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v5, v4

    invoke-virtual {p0, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    new-array v0, v3, [Landroid/view/View;

    aput-object p1, v0, v4

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v3, [Lmiuix/animation/base/AnimConfig;

    aput-object p0, v0, v4

    invoke-interface {p1, v2, v1, v0}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_1
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff8

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0021

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    const v0, 0x7f0a00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    const v0, 0x7f0a0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    const v0, 0x7f0a0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060312

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintColorTableView;

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/TintColorTableView;->initialize(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-virtual {v0, p0}, Lcom/android/camera/customization/TintColorTableView;->setOnColorChangeListener(Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;)V

    const v0, 0x7f0a0061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;-><init>(Lcom/android/camera/customization/FragmentCustomTint;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    const v0, 0x7f0a0311

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v1, Lcom/android/camera/customization/FragmentCustomTint;->MODE_PREVIEW:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/customization/FragmentCustomTint;->toggleMode(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0061

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0079

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->enterPreviewMode(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/customization/FragmentCustomTint;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/customization/FragmentCustomTint;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick apply"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-static {p1}, Lcom/android/camera/customization/TintColor;->persistColorId(I)V

    iget p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onColorChange(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-virtual {p0, p1}, Lcom/android/camera/customization/TintColorTableView;->setCurrent(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {}, Lcom/mi/config/Device;->supportHighScreenRefreshRate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/ThermalHelper;->updateDisplayFrameRate(ZLandroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    invoke-static {}, Lcom/mi/config/Device;->supportHighScreenRefreshRate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/ThermalHelper;->updateDisplayFrameRate(ZLandroid/app/Application;)V

    :cond_0
    return-void
.end method
