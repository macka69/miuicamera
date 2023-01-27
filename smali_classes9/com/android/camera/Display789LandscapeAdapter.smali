.class public Lcom/android/camera/Display789LandscapeAdapter;
.super Lcom/android/camera/Display789Adapter;
.source "Display789LandscapeAdapter.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Display789Adapter;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    return-void
.end method


# virtual methods
.method public getCenterDisplayHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    return p0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Display789Adapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getBottomBarHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getMarginStart()I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget p0, p0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
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

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x3

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
    invoke-static {}, Lcom/android/camera/Display;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Display789LandscapeAdapter;->getMoreModeTabRow(IZ)I

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

    const/4 p0, 0x3

    return p0
.end method
