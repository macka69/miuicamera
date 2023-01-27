.class public Lcom/android/camera/Display123PortraitAdapter;
.super Ljava/lang/Object;
.source "Display123PortraitAdapter.java"

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# instance fields
.field private final mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;


# direct methods
.method public constructor <init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    return-void
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

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
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getBottomBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getBottomHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    mul-int/lit8 p0, p0, 0x4

    div-int/lit8 p0, p0, 0x3

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Display123PortraitAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "4:3"

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    move p0, v0

    move v1, p0

    :goto_0
    move v2, v1

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    int-to-double v2, v1

    const-wide v4, 0x40031eb851eb851fL    # 2.39

    div-double/2addr v2, v4

    double-to-int v2, v2

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0x10

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    :goto_1
    move v6, v0

    move v0, p0

    move p0, v6

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    :goto_2
    move v2, p0

    move p0, v0

    :goto_3
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    add-int/2addr v2, p0

    invoke-direct {v3, v0, p0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDisplayRect:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",uiStyle:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IDisplayRect"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public getDragDistanceFix()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomBarHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getMarginEnd()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public getMarginStart()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/Display123PortraitAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getTopBarHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginStart()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/Display123PortraitAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v4, v4, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomBarHeight()I

    move-result p0

    sub-int/2addr v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
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
        0x7f100039
        0x7f100033
    .end array-data

    :array_1
    .array-data 4
        0x7f100036
        0x7f100030
    .end array-data
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    const/4 p0, 0x4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x3

    :cond_0
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
    iget-object p3, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p3, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p3, p3, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Display123PortraitAdapter;->getMoreModeTabRow(IZ)I

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

    const/4 p0, 0x4

    return p0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getBottomHeight()I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getTopBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07070e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getTopBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/Display123PortraitAdapter;->getMarginEnd()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0706c9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getTopCoverHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Display123PortraitAdapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTopMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
