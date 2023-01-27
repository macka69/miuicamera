.class public Lcom/android/camera/fragment/mode/MoreModeHelper;
.super Ljava/lang/Object;
.source "MoreModeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreModeHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeaderHeightForNormal(Landroid/content/Context;III)I
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move v2, v1

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/camera/Display;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070551

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07055b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    :goto_1
    sub-int/2addr v3, v4

    div-int v4, p3, p2

    rem-int v5, p3, p2

    const/4 v6, 0x1

    if-nez v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    add-int/2addr v4, v5

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    invoke-static {v2, v6}, Lcom/android/camera/Display;->getMoreModeTabRow(IZ)I

    move-result v2

    if-lt v4, v2, :cond_7

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    move v4, v2

    :cond_7
    invoke-static {p0, p1}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getModeHeight(Landroid/content/Context;I)I

    move-result p0

    sget-object v0, Lcom/android/camera/fragment/mode/MoreModeHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHeaderHeightForNormal "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v5, v4, p0

    sub-int v5, v3, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", showHeight = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", itemHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", row = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", preLine = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", size = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getModeHeight(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/Display;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070554

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07054d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/Display;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p0

    :goto_0
    add-int/2addr p1, p0

    return p1
.end method

.method public static getPanelWidth(Landroid/content/Context;I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayWidth()I

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/Display;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result p0

    invoke-static {}, Lcom/android/camera/Display;->getMarginStart()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {}, Lcom/android/camera/Display;->getMarginEnd()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayWidth()I

    move-result p0

    return p0
.end method

.method public static getRegion(Landroid/content/Context;IIIII)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getPanelWidth(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f07054d

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07054c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070554

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    sub-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070558

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070559

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_2
    rem-int v6, p4, p3

    div-int/2addr p4, p3

    mul-int p3, p2, v2

    sub-int/2addr v1, p3

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    mul-int/lit8 p3, p2, 0x2

    div-int/2addr v1, p3

    invoke-static {p0, p1, p2, p5}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getHeaderHeightForNormal(Landroid/content/Context;III)I

    move-result p2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070551

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f07055b

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    :goto_3
    add-int/2addr p2, p3

    new-instance p3, Landroid/util/Size;

    mul-int/lit8 p5, v1, 0x2

    add-int/2addr v2, p5

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getModeHeight(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p3, v2, p0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    mul-int/2addr p0, v6

    add-int/2addr v1, p0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p0, p4

    add-int/2addr p2, p0

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    add-int/2addr v3, p2

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, p2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getRow4PopupStyle(I)I
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    return v1
.end method

.method public static getTopMarginForNormal(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070551

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFooter4PopupStyle(II)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/android/camera/Display;->getMoreModeTabCol(ZZ)I

    move-result v1

    rem-int v2, p1, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-eqz v4, :cond_2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    if-le p0, p1, :cond_1

    move v0, v3

    :cond_1
    return v0

    :cond_2
    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    if-le p0, p1, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method
