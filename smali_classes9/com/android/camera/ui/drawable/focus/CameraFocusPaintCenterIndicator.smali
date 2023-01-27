.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintCenterIndicator.java"


# static fields
.field private static final CENTER_LOCK_Y_OFFSET:F

.field private static final TAG:Ljava/lang/String; = "CameraFocusPaintCenterIndicator"


# instance fields
.field private indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mAEAFLockBodyBitmap:Landroid/graphics/Bitmap;

.field private mAEAFLockHeadBitmap:Landroid/graphics/Bitmap;

.field private mCaptureIndicatorBitmap:Landroid/graphics/Bitmap;

.field private mCaptureIndicatorBitmapMatrix:Landroid/graphics/Matrix;

.field public mCenterFlagForAnimator:I

.field private mLockLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mLockMatrix:Landroid/graphics/Matrix;

.field private mMinusMoonPaint:Landroid/graphics/Paint;

.field private mSunBitmap:Landroid/graphics/Bitmap;

.field private mSunPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3f3a1cac

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->CENTER_LOCK_Y_OFFSET:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private drawCenterCaptureBitmap(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmapMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmapMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->CENTER_LOCK_Y_OFFSET:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmapMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawCenterCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 0
    .param p5    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCenterLock(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mLockLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->TAG:Ljava/lang/String;

    const-string p1, "drawCenterLock: "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->CENTER_LOCK_Y_OFFSET:F

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mLockLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawCenterMoon(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    neg-int v2, v1

    int-to-float v5, v2

    neg-int v1, v1

    int-to-float v6, v1

    iget v7, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    iget-object v8, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCenterSun(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v3, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    neg-int v4, v3

    div-int/2addr v4, v1

    int-to-float v6, v4

    iget v4, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    neg-int v5, v4

    iget v2, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    sub-int/2addr v5, v2

    int-to-float v7, v5

    div-int/2addr v3, v1

    int-to-float v8, v3

    neg-int v2, v4

    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v3, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    neg-int v4, v3

    div-int/2addr v4, v1

    int-to-float v6, v4

    iget v4, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    int-to-float v7, v4

    div-int/2addr v3, v1

    int-to-float v8, v3

    iget v2, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    add-int/2addr v4, v2

    int-to-float v9, v4

    iget-object v10, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v3, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    neg-int v4, v3

    iget v5, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    sub-int/2addr v4, v5

    int-to-float v6, v4

    iget v2, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    neg-int v4, v2

    div-int/2addr v4, v1

    int-to-float v7, v4

    neg-int v3, v3

    int-to-float v8, v3

    div-int/2addr v2, v1

    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v3, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    int-to-float v5, v3

    iget v4, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    neg-int v6, v4

    div-int/2addr v6, v1

    int-to-float v6, v6

    iget v2, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    add-int/2addr v3, v2

    int-to-float v7, v3

    div-int/2addr v4, v1

    int-to-float v8, v4

    iget-object v9, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initLockLottieDrawable(Landroid/content/Context;)Lcom/airbnb/lottie/LottieDrawable;
    .locals 1

    new-instance p0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10002c

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    return-object p0
.end method

.method static synthetic lambda$setupLottie$0(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mRotatingDegree:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterLock(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float v6, v0, v1

    iget-object v7, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->drawCenterCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 3

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mMinusMoonPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setAEAFIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mAEAFLockHeadBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mAEAFLockBodyBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCenterFlag(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput p1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCenterFlagForAnimator:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mLockLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->start()V

    :cond_0
    return-void
.end method

.method public setIndicatorBitmapSun(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mSunBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCaptureIndicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setupLottie(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mLockLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->initLockLottieDrawable(Landroid/content/Context;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mLockLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintCenterIndicator$q6kPb0lUkQhBFElzebaUVeijGNY;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintCenterIndicator$q6kPb0lUkQhBFElzebaUVeijGNY;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object p0
.end method

.method public updateValue(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->mCenterFlagForAnimator:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->indicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mAEAFHeadPosition:F

    :cond_0
    return-void
.end method
