.class public Lcom/android/camera/ui/GradienterDrawer;
.super Landroid/widget/RelativeLayout;
.source "GradienterDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GradienterDrawer$Direct;
    }
.end annotation


# static fields
.field public static final COLOR_NORMAL:I = -0x1

.field public static final COLOR_SELECTED:I = -0x31ea

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isReferenceLineEnabled:Z

.field private isSquareModule:Z

.field private mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

.field private mDeviceRotation:F

.field private mLineLeftView:Landroid/view/View;

.field private mLineLongColor:I

.field private mLineLongWidth:I

.field private mLineRightView:Landroid/view/View;

.field private mLineShortColor:I

.field private mLineShortView:Landroid/view/View;

.field private mLineShortWidth:I

.field private mParentHeighth:I

.field private mParentWidth:I

.field private mRootView:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ui/GradienterDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/GradienterDrawer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, -0x31ea

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const v0, 0x6affffff

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    sget v0, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, -0x31ea

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const p2, 0x6affffff

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    float-to-int p2, p2

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 p2, 0x6

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, -0x31ea

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    const p2, 0x6affffff

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongColor:I

    sget p2, Lcom/android/camera/ui/ReferenceLineDrawer;->reference_line_width:F

    float-to-int p2, p2

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    const/4 p2, 0x6

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    sget-object p2, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/GradienterDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0172

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0450

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a044e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a044f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    return-void
.end method

.method private invalidateView()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private resetMargin()V
    .locals 13

    iget-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3d99999a

    goto :goto_0

    :cond_0
    const v1, 0x3df8d4fe

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    const/16 v4, 0x30

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSpiral()Z

    move-result v3

    if-nez v3, :cond_12

    new-array v3, v8, [Landroid/widget/LinearLayout$LayoutParams;

    aput-object v0, v3, v6

    invoke-direct {p0, v3}, Lcom/android/camera/ui/GradienterDrawer;->resetParams([Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-direct {p0, v3, v11}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-direct {p0, v3, v11}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    sget-object v3, Lcom/android/camera/ui/GradienterDrawer$1;->$SwitchMap$com$android$camera$ui$GradienterDrawer$Direct:[I

    iget-object v11, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v3, v3, v11

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3ec39581

    if-eq v3, v8, :cond_e

    if-eq v3, v10, :cond_a

    if-eq v3, v9, :cond_6

    if-eq v3, v5, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v4, v3

    mul-float/2addr v4, v12

    iget-boolean v5, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v5, :cond_3

    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    goto :goto_1

    :cond_3
    int-to-float v5, v3

    mul-float/2addr v5, v12

    iget v6, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v6, v3

    div-int/2addr v6, v10

    int-to-float v3, v6

    add-float/2addr v3, v5

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v4, v3, 0x3

    int-to-float v4, v4

    iget-boolean v5, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v5, :cond_5

    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v3, v9

    int-to-float v3, v3

    goto :goto_1

    :cond_5
    div-int/lit8 v5, v3, 0x3

    iget v6, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v6, v3

    div-int/2addr v6, v10

    add-int/2addr v5, v6

    int-to-float v3, v5

    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    div-int/2addr v2, v10

    int-to-float v2, v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    float-to-int v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_9

    :cond_6
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v2

    mul-float/2addr v3, v12

    iget-boolean v4, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v4, :cond_7

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    goto :goto_2

    :cond_7
    int-to-float v4, v2

    mul-float/2addr v4, v12

    iget v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v10

    int-to-float v2, v5

    add-float/2addr v2, v4

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v3, v2, 0x3

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v4, :cond_9

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v9

    int-to-float v2, v2

    goto :goto_2

    :cond_9
    div-int/lit8 v4, v2, 0x3

    iget v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v10

    add-int/2addr v4, v5

    int-to-float v2, v4

    :goto_2
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    div-int/2addr v4, v10

    int-to-float v4, v4

    sub-float v4, v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v4, v1

    add-float/2addr v4, v11

    float-to-int v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_9

    :cond_a
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    goto :goto_3

    :cond_b
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v2

    mul-float/2addr v3, v12

    iget v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v10

    int-to-float v2, v5

    add-float/2addr v2, v3

    :goto_3
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    goto :goto_5

    :cond_c
    iget-boolean v2, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v2, :cond_d

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v9

    int-to-float v2, v2

    goto :goto_4

    :cond_d
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v3, v2, 0x3

    iget v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v10

    add-int/2addr v3, v5

    int-to-float v2, v3

    :goto_4
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v3, v9

    int-to-float v3, v3

    :goto_5
    iget-object v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    float-to-int v2, v2

    div-int/2addr v4, v10

    sub-int/2addr v2, v4

    add-int/2addr v2, v8

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    mul-float/2addr v1, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSection()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    goto :goto_6

    :cond_f
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v2

    mul-float/2addr v3, v12

    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v4, v2

    div-int/2addr v4, v10

    int-to-float v2, v4

    add-float/2addr v2, v3

    :goto_6
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    goto :goto_8

    :cond_10
    iget-boolean v2, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    if-nez v2, :cond_11

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v9

    int-to-float v2, v2

    goto :goto_7

    :cond_11
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v3, v2, 0x3

    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    sub-int/2addr v4, v2

    div-int/2addr v4, v10

    add-int/2addr v3, v4

    int-to-float v2, v3

    :goto_7
    iget v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v3, v9

    int-to-float v3, v3

    :goto_8
    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    div-int/2addr v4, v10

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    mul-float/2addr v1, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-float/2addr v3, v11

    float-to-int v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_9
    iget-object p0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_12
    iget-boolean v1, p0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/camera/ui/ReferenceLineDrawer;->IsGoldenSpiral()Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    iget-boolean v1, p0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    if-nez v1, :cond_17

    :cond_14
    iget-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    new-array v11, v9, [Landroid/widget/LinearLayout$LayoutParams;

    aput-object v0, v11, v6

    aput-object v1, v11, v8

    aput-object v3, v11, v10

    invoke-direct {p0, v11}, Lcom/android/camera/ui/GradienterDrawer;->resetParams([Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v11, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-direct {p0, v11, v5}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    iget-object v11, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-direct {p0, v11, v5}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    sget-object v11, Lcom/android/camera/ui/GradienterDrawer$1;->$SwitchMap$com$android$camera$ui$GradienterDrawer$Direct:[I

    iget-object v12, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v8, :cond_16

    if-eq v11, v10, :cond_16

    if-eq v11, v9, :cond_15

    if-eq v11, v5, :cond_15

    goto :goto_a

    :cond_15
    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/2addr v4, v10

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v6, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    div-int/lit8 v7, v6, 0x3

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v7, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/lit8 v8, v6, 0x3

    sub-int v8, v7, v8

    div-int/2addr v8, v10

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    div-int/2addr v6, v9

    sub-int/2addr v7, v6

    div-int/2addr v7, v10

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    float-to-int v4, v4

    div-int/2addr v2, v10

    sub-int v2, v4, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    div-int/lit8 v2, v5, 0x2

    sub-int v2, v4, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    div-int/2addr v5, v10

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_a

    :cond_16
    iget v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    div-int/2addr v2, v10

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v4, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v5, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    float-to-int v2, v2

    div-int/2addr v4, v10

    sub-int v4, v2, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v4, v5, 0x2

    sub-int v4, v2, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/2addr v5, v10

    sub-int/2addr v2, v5

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_a
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLeftView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineRightView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    :goto_b
    return-void
.end method

.method private varargs resetParams([Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setViewVisible(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateView()V
    .locals 5

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getDeviceRotation()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v1, 0x42340000    # 45.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x43070000    # 135.0f

    if-lez v1, :cond_0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->RIGHT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x42b40000    # 90.0f

    :goto_0
    sub-float/2addr v0, v2

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    const/high16 v2, 0x43610000    # 225.0f

    if-ltz v1, :cond_1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->TOP:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    const v1, 0x439d8000    # 315.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->LEFT:Lcom/android/camera/ui/GradienterDrawer$Direct;

    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/camera/ui/GradienterDrawer$Direct;->BOTTOM:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    const/high16 v0, -0x3f600000    # -5.0f

    iput v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    const/high16 v2, 0x43b40000    # 360.0f

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_5

    move v0, v3

    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-direct {p0, v2, v4}, Lcom/android/camera/ui/GradienterDrawer;->setViewVisible(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->resetMargin()V

    :cond_6
    cmpl-float v1, v0, v3

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GradienterDrawer;->setLineShortColor(I)V

    goto :goto_2

    :cond_7
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GradienterDrawer;->setLineShortColor(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    sget-object v1, Lcom/android/camera/ui/GradienterDrawer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateView  rotationOffset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";  mDeviceRotation :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mDeviceRotation:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->invalidateView()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->updateView()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    :cond_0
    return-void
.end method

.method public setConfigInfo(IIZ)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentWidth:I

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mParentHeighth:I

    iput-boolean p3, p0, Lcom/android/camera/ui/GradienterDrawer;->isSquareModule:Z

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    invoke-direct {p0}, Lcom/android/camera/ui/GradienterDrawer;->updateView()V

    return-void
.end method

.method public setLineShortColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortColor:I

    iget-object p0, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setReferenceLineEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object v0, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-boolean p1, p0, Lcom/android/camera/ui/GradienterDrawer;->isReferenceLineEnabled:Z

    return-void
.end method

.method public setlineWidth(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineLongWidth:I

    iput p2, p0, Lcom/android/camera/ui/GradienterDrawer;->mLineShortWidth:I

    sget-object p1, Lcom/android/camera/ui/GradienterDrawer$Direct;->NONE:Lcom/android/camera/ui/GradienterDrawer$Direct;

    iput-object p1, p0, Lcom/android/camera/ui/GradienterDrawer;->mCurrentDirect:Lcom/android/camera/ui/GradienterDrawer$Direct;

    return-void
.end method
