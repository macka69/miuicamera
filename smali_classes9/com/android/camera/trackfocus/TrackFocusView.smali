.class public Lcom/android/camera/trackfocus/TrackFocusView;
.super Landroid/view/View;
.source "TrackFocusView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "TrackFocusView"


# instance fields
.field private mActiveArraySize:Landroid/graphics/Rect;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mCamera2TranslateMatrix:Landroid/graphics/Matrix;

.field protected mCameraDisplayOrientation:I

.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mCanvasMatrix:Landroid/graphics/Matrix;

.field private mFocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field protected mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mTemp:Landroid/graphics/RectF;

.field private mTrackResult:Lcom/android/camera/trackfocus/TrackResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "camera.feature.trackFocus.debug"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/camera/trackfocus/TrackFocusView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/camera/trackfocus/TrackFocusView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mBorderPaint:Landroid/graphics/Paint;

    const-string v1, "#ff0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v0, p1

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    const v0, 0x7f0800fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private prepareMatrix()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v2}, Lcom/android/camera/trackfocus/TrackResult;->getZoomRatio()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->scaleCamera2Matrix(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v5

    iget v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraDisplayOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v0, v1

    :goto_1
    move v4, v0

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraDisplayOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static/range {v1 .. v9}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIIIII)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mOrientation:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    return-void
.end method

.method private transToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTemp:Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    const-string v0, "TrackFocusView"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/TrackResult;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/trackfocus/TrackFocusView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/TrackResult;->isManualTrackMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/TrackResult;->isShowMultiGrid()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/camera/trackfocus/TrackFocusView;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source Rects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v1}, Lcom/android/camera/trackfocus/TrackResult;->getRects()[Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackFocusView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/TrackResult;->getRects()[Landroid/graphics/Rect;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/trackfocus/TrackFocusView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dest mRect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/TrackResult;->isFace()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mCameraDisplayOrientation:I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrackResult(Lcom/android/camera/trackfocus/TrackResult;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/trackfocus/TrackResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTrackResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeArraySize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackFocusView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mTrackResult:Lcom/android/camera/trackfocus/TrackResult;

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackFocusView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/camera/trackfocus/TrackFocusView;->prepareMatrix()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method
