.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CameraUtils"


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

.method private static calculateTapArea(FFII)Landroid/graphics/Rect;
    .locals 1

    int-to-float p2, p2

    div-float/2addr p0, p2

    const/high16 p2, 0x44fa0000    # 2000.0f

    mul-float/2addr p0, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    sub-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p3, p3

    div-float/2addr p1, p3

    mul-float/2addr p1, p2

    sub-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p0, p0, -0x4b

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->clamp(I)I

    move-result p0

    add-int/lit16 p2, p0, 0x96

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->clamp(I)I

    move-result p2

    add-int/lit8 p1, p1, -0x4b

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->clamp(I)I

    move-result p1

    add-int/lit16 p3, p1, 0x96

    invoke-static {p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->clamp(I)I

    move-result p3

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p0, p0

    int-to-float p3, p3

    int-to-float p2, p2

    invoke-direct {v0, p1, p0, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static chooseFramerate(Landroid/hardware/Camera$Parameters;F)V
    .locals 7

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v6, v4, v5

    sub-int/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v5, v2, v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v6, v5, :cond_0

    :goto_1
    move-object v2, v4

    goto :goto_2

    :cond_0
    if-ne v6, v5, :cond_1

    aget v5, v2, v1

    aget v6, v4, v1

    if-ge v5, v6, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget p1, v2, v1

    aget v0, v2, v5

    invoke-virtual {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    return-void
.end method

.method public static choosePreviewSize(Landroid/hardware/Camera$Parameters;II)[I
    .locals 7

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, p1, :cond_0

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    new-array p0, v5, [I

    aput p1, p0, v4

    aput p2, p0, v3

    return-object p0

    :cond_1
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to set preview size to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget p1, v0, Landroid/hardware/Camera$Size;->width:I

    iget p2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    new-array p0, v5, [I

    iget p1, v0, Landroid/hardware/Camera$Size;->width:I

    aput p1, p0, v4

    iget p1, v0, Landroid/hardware/Camera$Size;->height:I

    aput p1, p0, v3

    return-object p0

    :cond_2
    new-array p0, v5, [I

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static clamp(I)I
    .locals 2

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    if-le p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    if-ge p0, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static getCameraOrientation(I)I
    .locals 1

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return p0
.end method

.method public static getExposureCompensation(Landroid/hardware/Camera;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p0, p0

    sub-float/2addr v1, v2

    sub-float/2addr p0, v2

    div-float/2addr v1, p0

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getFrontCameraOrientation()I
    .locals 5

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->getCameraOrientation(I)I

    move-result v0

    return v0
.end method

.method public static handleFocus(Landroid/hardware/Camera;FFIIII)V
    .locals 3

    const-string v0, "macro"

    const-string v1, "fixed"

    const-string v2, "auto"

    if-nez p0, :cond_0

    return-void

    :cond_0
    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p3, p5

    mul-float/2addr p1, p3

    int-to-float p3, p4

    div-float/2addr p2, p3

    int-to-float p3, p6

    mul-float/2addr p2, p3

    :try_start_0
    invoke-static {p1, p2, p5, p6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->calculateTapArea(FFII)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result p3

    if-lez p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Landroid/hardware/Camera$Area;

    const/16 p5, 0x320

    invoke-direct {p4, p1, p5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->TAG:Ljava/lang/String;

    const-string p3, "focus areas not supported"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils$1;

    invoke-direct {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 3

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-eq p0, p1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    :cond_3
    :goto_0
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p0, p1, :cond_4

    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    :cond_4
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    :goto_1
    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method public static setExposureCompensation(Landroid/hardware/Camera;F)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public static setFocusModes(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
