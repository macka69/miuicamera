.class public Lcom/android/camera/DisplayMultiWindowRect;
.super Ljava/lang/Object;
.source "DisplayMultiWindowRect.java"

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# instance fields
.field private final mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;


# direct methods
.method public constructor <init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    return-void
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundLeftMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBottomBarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    int-to-float p0, p0

    const v0, 0x3e51eb85

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getBottomMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getBottomBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getBottomMargin()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getBottomBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getCenterDisplayWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "MW"

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 11

    iget-object v0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    const/4 v2, 0x1

    const/high16 v3, 0x41100000    # 9.0f

    const/4 v4, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopMargin()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopBarHeight()I

    move-result v2

    add-int/2addr p1, v2

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    mul-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p0, v0

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopMargin()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopBarHeight()I

    move-result v0

    add-int v4, p1, v0

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    mul-int/lit8 p1, p0, 0x10

    int-to-float p1, p1

    div-float/2addr p1, v3

    float-to-int v1, p1

    int-to-double v2, p0

    int-to-double v5, v1

    const-wide v7, 0x40031eb851eb851fL    # 2.39

    div-double/2addr v5, v7

    sub-double/2addr v2, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v5

    double-to-int p1, v2

    sub-int/2addr p0, p1

    move v9, v1

    move v1, p0

    move p0, v9

    move v10, v4

    move v4, p1

    move p1, v10

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopCoverHeight()I

    move-result p0

    move p1, p0

    move p0, v1

    goto :goto_1

    :cond_2
    iget p0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    move p1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopMargin()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopBarHeight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    mul-int/lit8 p0, p0, 0x10

    int-to-float p0, p0

    div-float/2addr p0, v3

    goto :goto_0

    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p0, p1

    invoke-direct {v0, v4, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDisplayRect:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IDisplayRect"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDragDistanceFix()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/DisplayMultiWindowRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getMarginEnd()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMarginStart()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/DisplayMultiWindowRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 0

    const/4 p0, 0x2

    if-eqz p1, :cond_0

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-array p0, p0, [I

    fill-array-data p0, :array_1

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f10003a
        0x7f100034
    .end array-data

    :array_1
    .array-data 4
        0x7f100037
        0x7f100031
    .end array-data
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070552

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/DisplayMultiWindowRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/camera/DisplayMultiWindowRect;->getMoreModeTabRow(IZ)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070554

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/2addr p1, p0

    sub-int/2addr p3, p1

    add-int/lit8 p0, p0, 0x1

    div-int/2addr p3, p0

    return p3
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p0

    return p2

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x3

    return p2
.end method

.method public getSquareBottomCoverHeight()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    int-to-float v1, v1

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getBottomHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopMargin()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopBarHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    int-to-float v0, p0

    div-float/2addr v0, v2

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    float-to-int p0, v1

    return p0
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/DisplayMultiWindowRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07070e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public getTopBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getTopMargin()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getCenterDisplayHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getBottomHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/DisplayMultiWindowRect;->getSquareBottomCoverHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayMultiWindowRect;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->statusBarHeight:I

    return p0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
