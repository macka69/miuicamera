.class public Lcom/android/camera/Display789PreviewRect;
.super Ljava/lang/Object;
.source "Display789PreviewRect.java"

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# instance fields
.field private mLandscapeAdapter:Lcom/android/camera/Display789LandscapeAdapter;

.field private mPortraitAdapter:Lcom/android/camera/Display789PortraitAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/Display789PortraitAdapter;

    invoke-direct {v0, p1}, Lcom/android/camera/Display789PortraitAdapter;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/Display789PreviewRect;->mPortraitAdapter:Lcom/android/camera/Display789PortraitAdapter;

    new-instance v0, Lcom/android/camera/Display789LandscapeAdapter;

    invoke-direct {v0, p1}, Lcom/android/camera/Display789LandscapeAdapter;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object v0, p0, Lcom/android/camera/Display789PreviewRect;->mLandscapeAdapter:Lcom/android/camera/Display789LandscapeAdapter;

    return-void
.end method

.method private getAdapter()Lcom/android/camera/IDisplayRect;
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/Display789PreviewRect;->mLandscapeAdapter:Lcom/android/camera/Display789LandscapeAdapter;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/Display789PreviewRect;->mPortraitAdapter:Lcom/android/camera/Display789PortraitAdapter;

    return-object p0
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/IDisplayRect;->checkScreenSize(II)Z

    move-result p0

    return p0
.end method

.method public getBackgroundLeftMargin()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBackgroundLeftMargin()I

    move-result p0

    return p0
.end method

.method public getBottomBarHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getBottomMargin()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayHeight()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayWidth()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayWidth()I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    const-string p0, "16:10"

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDragDistanceFix()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getDragDistanceFix()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getDragLayoutTopMargin()I

    move-result p0

    return p0
.end method

.method public getMarginEnd()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getMarginEnd()I

    move-result p0

    return p0
.end method

.method public getMarginStart()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p0

    return-object p0
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/IDisplayRect;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p0

    return p0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getTipsMarginTop(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopBarHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getTopBarWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTopMargin()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Display789PreviewRect;->getAdapter()Lcom/android/camera/IDisplayRect;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result p0

    return p0
.end method
