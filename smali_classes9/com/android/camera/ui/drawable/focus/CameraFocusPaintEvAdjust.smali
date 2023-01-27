.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintEvAdjust.java"


# static fields
.field public static final ADJUST_ICON_LENGTH:I

.field private static final EV_ICON_MIN_MARGIN:I

.field private static final ICON_BASE_HALF_HEIGHT:I

.field private static final MARGIN:I


# instance fields
.field private mCurrentDistanceY:F

.field private mCurrentOffsetY:F

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mEvAnimStarted:Z

.field private mEvLinInAnim:Landroid/animation/ValueAnimator;

.field private mEvValue:F

.field private mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field private mLineAlpha:I

.field private mLineHeight:I

.field private mLineMargin:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mOrientation:I

.field private mRtl:Z

.field private mShowLine:Z

.field private mStartOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    const v0, 0x41c5d70a

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ICON_BASE_HALF_HEIGHT:I

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    const/16 p1, 0x7f

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    sget p1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    return p1
.end method

.method private isNearlyOutOfEdge()Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mOrientation:I

    div-int/lit8 v4, v3, 0x5a

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    if-eqz v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    goto :goto_0

    :goto_1
    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mOrientation:I

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    move v1, v5

    :cond_6
    :goto_2
    return v1

    :cond_7
    const/16 v0, 0x5a

    if-ne v3, v0, :cond_9

    int-to-float v0, v2

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_8

    move v1, v5

    :cond_8
    return v1

    :cond_9
    const/16 v0, 0x10e

    if-ne v3, v0, :cond_a

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_a

    move v1, v5

    :cond_a
    return v1
.end method

.method private synthetic lambda$setShowLine$0(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setLineAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$startEvLineAriseAnimIfNeed$1(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setLineAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private startEvLineAriseAnimIfNeed(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0}, Lmiui/animation/AnimatorBuilder;->of(Landroid/animation/Animator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    new-instance v1, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$Res09OTzDL0axX9ZgeUqU_Qpf2o;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$Res09OTzDL0axX9ZgeUqU_Qpf2o;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x7f
    .end array-data
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mRotatingDegree:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->isNearlyOutOfEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    :goto_0
    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v2, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v6, v2, v4

    const v2, 0x3fbae148

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ICON_BASE_HALF_HEIGHT:I

    int-to-float v5, v4

    sub-float v5, v1, v5

    sub-float/2addr v5, v6

    iget v7, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v8, v7

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    int-to-float v4, v4

    sub-float v4, v1, v4

    int-to-float v5, v7

    sub-float v8, v4, v5

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v8, v4, v5

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v5, v4

    sub-float v5, v8, v5

    sget v6, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ICON_BASE_HALF_HEIGHT:I

    int-to-float v7, v6

    add-float/2addr v7, v1

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    int-to-float v5, v6

    add-float/2addr v1, v5

    int-to-float v4, v4

    add-float v6, v1, v4

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getEvValue()F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    return p0
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    const/16 p1, 0x66

    const/16 v0, 0xff

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public synthetic lambda$setShowLine$0$CameraFocusPaintEvAdjust(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->lambda$setShowLine$0(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$startEvLineAriseAnimIfNeed$1$CameraFocusPaintEvAdjust(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->lambda$startEvLineAriseAnimIfNeed$1(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public loadResource()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802a8

    invoke-static {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iput-boolean v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAnimStarted:Z

    return-void
.end method

.method public playVisibleAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAnimStarted:Z

    :cond_1
    return-void
.end method

.method public resetDrawable()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAnimStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->playVisibleAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    :cond_1
    return-void
.end method

.method public setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setAlpha(I)V

    :cond_0
    return-object p0
.end method

.method public setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-object p0
.end method

.method public setDistanceY(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    return-void
.end method

.method public setEvValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    return-void
.end method

.method public setLineAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mOrientation:I

    return-void
.end method

.method public setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setShowLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    return-void
.end method

.method public setShowLine(ZLandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/16 p1, 0x7f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    invoke-direct {p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->startEvLineAriseAnimIfNeed(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$xpiISjkRADyZ0Eh9BBWzRRSwEg4;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$xpiISjkRADyZ0Eh9BBWzRRSwEg4;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f
        0x0
    .end array-data
.end method

.method public setStartOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public updateValue(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    return-void
.end method
