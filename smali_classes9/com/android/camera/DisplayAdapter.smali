.class public Lcom/android/camera/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DisplayAdapter$DisplayParameter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayAdapter"


# instance fields
.field private mDisplayRect:Lcom/android/camera/IDisplayRect;

.field private final mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p1, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->isInMultiWindow:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init DisplayOtherPreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/camera/DisplayMultiWindowRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/DisplayMultiWindowRect;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p1, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio123(II)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display123PreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/camera/Display123PreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/Display123PreviewRect;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p1, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio456(II)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display456PreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/camera/Display456PreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/Display456PreviewRect;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget p1, p1, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio789(II)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display789PreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/camera/Display789PreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/Display789PreviewRect;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "init DisplayPreviewRect failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object p1, Lcom/android/camera/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init DisplayPreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/camera/DisplayCommonPreviewRect;

    iget-object v0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/DisplayCommonPreviewRect;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    :goto_0
    return-void
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

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

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBackgroundLeftMargin()I

    move-result p0

    return p0
.end method

.method public getBottomBarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomBarHeight()I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomHeight()I

    move-result p0

    return p0
.end method

.method public getBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayHeight()I

    move-result p0

    return p0
.end method

.method public getCenterDisplayWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getCenterDisplayWidth()I

    move-result p0

    return p0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getDisplayRatio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDragDistanceFix()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getDragDistanceFix()I

    move-result p0

    return p0
.end method

.method public getDragLayoutTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getDragLayoutTopMargin()I

    move-result p0

    return p0
.end method

.method public getMarginEnd()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getMarginEnd()I

    move-result p0

    return p0
.end method

.method public getMarginStart()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getMarginStart()I

    move-result p0

    return p0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p0

    return-object p0
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/IDisplayRect;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p0

    return p0
.end method

.method public getSquareBottomCoverHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getTipsMarginTop(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopBarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0, p1}, Lcom/android/camera/IDisplayRect;->getTopBarWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getTopCoverHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopCoverHeight()I

    move-result p0

    return p0
.end method

.method public getTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/DisplayAdapter;->mDisplayRect:Lcom/android/camera/IDisplayRect;

    invoke-interface {p0}, Lcom/android/camera/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result p0

    return p0
.end method
