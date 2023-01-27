.class public Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraExposureDrawable.java"


# static fields
.field public static final BASE_COLOR:I

.field private static final LINE_COLOR:I


# instance fields
.field private mMiddleX:F

.field private mMiddleY:F

.field private mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

.field private mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field private mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

.field private mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0xcc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->BASE_COLOR:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->BASE_COLOR:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->BASE_COLOR:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x66

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->LINE_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mMiddleX:F

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mMiddleY:F

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x10000

    const/16 v3, 0xff

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->BASE_COLOR:I

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->BASE_COLOR:I

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->BASE_COLOR:I

    const v2, 0x3fa66666

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xf0

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mMiddleX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mMiddleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setDistanceY(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setEvValue(F)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setEvValue(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    return-void
.end method

.method public setCenter(II)V
    .locals 2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mMiddleX:F

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mMiddleY:F

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setEvChanged(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setEvValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setDistanceY(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setEvValue(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setOrientation(I)V

    return-void
.end method

.method public setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    return-void
.end method
