.class public Lcom/android/camera/ui/V6EffectCropView;
.super Landroid/view/View;
.source "V6EffectCropView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# static fields
.field private static final ANIMATE_RADIUS:I = 0x2

.field private static final ANIMATE_RANGE:I = 0x1

.field private static final ANIMATE_START_RADIUS:I

.field private static final ANIMATE_START_RANGE:I

.field private static final ANIMATION_TIME:I = 0x258

.field private static final CIRCLE_RESIZE_TOUCH_TOLERANCE:I

.field private static final CORNER_BALL_RADIUS:I

.field private static final DEFAULT_RADIUS:I

.field private static final DEFAULT_RANGE:I

.field private static final HIDE_TILT_SHIFT_MASK:I = 0x2

.field private static final MIN_CROP_WIDTH_HEIGHT:I

.field private static final MIN_DIS_FOR_MOVE_POINT:F

.field private static final MIN_DIS_FOR_SLOPE:I

.field private static final MIN_RANGE:I

.field private static final MOVE_BLOCK:I = 0x10

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_POINT1:I = 0x101

.field private static final MOVE_POINT2:I = 0x102

.field private static final MOVE_RADIUS:I = 0x20

.field private static final MOVE_RANGE:I = 0x104

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2

.field private static final SHOW_TILT_SHIFT_MASK:I = 0x1

.field private static final TOUCH_TOLERANCE:I


# instance fields
.field private mAnimateHandler:Landroid/os/Handler;

.field private mAnimateRadius:I

.field private mAnimateRangeWidth:I

.field private mAnimateThread:Landroid/os/HandlerThread;

.field private mAnimationStartRadius:I

.field private mAnimationStartRange:I

.field private mAnimationStartTime:J

.field private mAnimationTotalTime:J

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mCenterLineSquare:I

.field private final mCornerPaint:Landroid/graphics/Paint;

.field private final mCropBounds:Landroid/graphics/RectF;

.field private final mDefaultCircleBounds:Landroid/graphics/RectF;

.field private final mDefaultRectBounds:Landroid/graphics/RectF;

.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private final mEffectPoint1:Landroid/graphics/PointF;

.field private final mEffectPoint2:Landroid/graphics/PointF;

.field private final mEffectRect:Landroid/graphics/RectF;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsCircle:Z

.field private mIsInTapSlop:Z

.field private mIsRect:Z

.field private mLastMoveDis:D

.field private mLastX:F

.field private mLastY:F

.field private mMaxRange:I

.field private mMovingEdges:I

.field private mNormalizedWidth:F

.field private final mPoint1:Landroid/graphics/Point;

.field private final mPoint2:Landroid/graphics/Point;

.field private mRadius:I

.field private mRangeWidth:I

.field private mTapSlop:I

.field private mTiltShiftMaskAlive:Z

.field private mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mTiltShiftMaskHandler:Landroid/os/Handler;

.field private final mTouchCenter:Landroid/graphics/Point;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    mul-int/2addr v1, v0

    sput v1, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_SLOPE:I

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    mul-int/2addr v1, v0

    int-to-float v0, v1

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->CIRCLE_RESIZE_TOUCH_TOLERANCE:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_RANGE:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RADIUS:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iput p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;

    iput p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    iput p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    new-instance v2, Lcom/android/camera/ui/V6EffectCropView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/V6EffectCropView$1;-><init>(Lcom/android/camera/ui/V6EffectCropView;)V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/mi/config/Device;->isPad()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v3, v2

    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mTapSlop:I

    const v2, 0x7f010034

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    const v2, 0x7f010035

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Keyframe;

    invoke-static {v0}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v6, p2

    const v0, 0x3e99999a

    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v1, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, p2

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeOutAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6EffectCropView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskAlive:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/V6EffectCropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/ui/V6EffectCropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskAlive:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/V6EffectCropView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6EffectCropView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6EffectCropView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6EffectCropView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6EffectCropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->hideTiltShiftMask()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/ui/V6EffectCropView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    return p0
.end method

.method private computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    sget v1, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_SLOPE:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-static {v2, v4, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-virtual {p2, p1, v4}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_1
    iget v5, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ne v5, p2, :cond_2

    invoke-static {v5, v4, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-virtual {p2, v4, p1}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_2
    const/4 v6, 0x2

    new-array v7, v6, [Landroid/graphics/Point;

    sub-int/2addr p2, v5

    int-to-float p2, p2

    sub-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr p2, v3

    int-to-float v2, v2

    int-to-float v3, v5

    div-float/2addr v3, p2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    if-gt v2, v0, :cond_3

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v7, v4

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    iget v5, p1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v8, p1, Landroid/graphics/Point;->y:I

    sub-int v8, v1, v8

    int-to-float v8, v8

    div-float/2addr v8, p2

    add-float/2addr v5, v8

    float-to-int v5, v5

    if-ltz v5, :cond_4

    if-gt v5, v0, :cond_4

    add-int/lit8 v8, v2, 0x1

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v9, v7, v2

    move v2, v8

    :cond_4
    iget v5, p1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, p2

    sub-float/2addr v5, v8

    float-to-int v5, v5

    if-ltz v5, :cond_5

    if-gt v5, v1, :cond_5

    invoke-direct {p0, v7, v4, v5}, Lcom/android/camera/ui/V6EffectCropView;->isContained([Landroid/graphics/Point;II)Z

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v8, v2, 0x1

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v9, v7, v2

    move v2, v8

    :cond_5
    iget v5, p1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int p1, v0, p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr v5, p1

    float-to-int p1, v5

    if-ltz p1, :cond_6

    if-gt p1, v1, :cond_6

    invoke-direct {p0, v7, v0, p1}, Lcom/android/camera/ui/V6EffectCropView;->isContained([Landroid/graphics/Point;II)Z

    move-result p2

    if-nez p2, :cond_6

    add-int/lit8 p2, v2, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v7, v2

    move v2, p2

    :cond_6
    if-ne v2, v3, :cond_7

    add-int/lit8 p1, v2, 0x1

    new-instance p2, Landroid/graphics/Point;

    aget-object v0, v7, v4

    invoke-direct {p2, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object p2, v7, v2

    move v2, p1

    :cond_7
    if-ne v2, v6, :cond_8

    sget p1, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    mul-int/2addr p1, p1

    aget-object p2, v7, v4

    aget-object v0, v7, v3

    invoke-direct {p0, p2, v0}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p2

    if-gt p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    aget-object p2, v7, v4

    iget p2, p2, Landroid/graphics/Point;->x:I

    aget-object v0, v7, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    aget-object p1, v7, v3

    iget p1, p1, Landroid/graphics/Point;->x:I

    aget-object p2, v7, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    :cond_8
    return-void
.end method

.method private computePointWithDistance(I)Landroid/graphics/Point;
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_0

    sub-int/2addr v2, p1

    iget p0, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v1, v3, :cond_1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v4, p0, Landroid/graphics/Point;->y:I

    sub-int v4, v3, v4

    mul-int/2addr v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->x:I

    sub-int p0, v2, p0

    mul-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr v2, v4

    sub-int/2addr v3, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-object v0
.end method

.method private detectMovingEdges(FF)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    const/16 v2, 0x10

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sget v4, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v5, v4

    add-float/2addr v3, v5

    cmpg-float v3, p2, v3

    const/4 v5, 0x1

    if-gtz v3, :cond_1

    iget v3, v1, Landroid/graphics/RectF;->top:F

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/2addr v1, v5

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sget v4, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v6, v4

    add-float/2addr v3, v6

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5

    iget v3, v1, Landroid/graphics/RectF;->left:F

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_5

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    move v0, v5

    :cond_3
    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_2

    :cond_4
    sget v0, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez p1, :cond_c

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    mul-float v4, v3, v3

    sget v5, Lcom/android/camera/ui/V6EffectCropView;->CIRCLE_RESIZE_TOUCH_TOLERANCE:I

    int-to-float v6, v5

    add-float/2addr v6, v3

    int-to-float v5, v5

    add-float/2addr v3, v5

    mul-float/2addr v6, v3

    sub-float v0, p1, v0

    mul-float/2addr v0, v0

    sub-float v1, p2, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    cmpl-float v1, v0, v4

    if-lez v1, :cond_7

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_7

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez p1, :cond_c

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v3, p2

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Point;->set(II)V

    sget v1, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v1

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    div-int/2addr v3, v2

    if-ge v1, v3, :cond_9

    const/16 p1, 0x101

    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_3

    :cond_9
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_a

    const/16 p1, 0x102

    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_3

    :cond_a
    new-instance v6, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {v6, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v7, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {v7, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result p1

    iget p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    mul-int/2addr p2, p2

    div-int/lit8 p2, p2, 0x9

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_b

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_3

    :cond_b
    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    const/16 p1, 0x104

    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    :cond_c
    :goto_3
    return-void
.end method

.method private getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F
    .locals 10

    iget p0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p1

    return p1

    :cond_0
    cmpl-float v1, p3, p4

    if-nez v1, :cond_1

    sub-float/2addr p2, p3

    mul-float/2addr p2, p2

    return p2

    :cond_1
    sub-float v1, v0, p0

    sub-float v2, p1, p0

    mul-float v3, v1, v2

    sub-float v4, p4, p3

    sub-float v5, p2, p3

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    if-eqz p5, :cond_2

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2

    mul-float/2addr v2, v2

    mul-float/2addr v5, v5

    add-float/2addr v2, v5

    return v2

    :cond_2
    mul-float v2, v1, v1

    mul-float v5, v4, v4

    add-float/2addr v2, v5

    if-eqz p5, :cond_3

    cmpl-float p5, v3, v2

    if-ltz p5, :cond_3

    sub-float/2addr p1, v0

    mul-float/2addr p1, p1

    sub-float/2addr p2, p4

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    return p1

    :cond_3
    div-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    mul-float/2addr v4, v3

    add-float/2addr p3, v4

    sub-float/2addr p1, p0

    mul-float/2addr p1, p1

    sub-float/2addr p3, p2

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    return p1
.end method

.method private hideTiltShiftMask()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/ui/V6EffectCropView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EffectCropView$2;-><init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "animateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/camera/ui/V6EffectCropView$3;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EffectCropView$3;-><init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private innerShow()V
    .locals 11

    invoke-static {}, Lcom/android/camera/ui/V6EffectCropView;->isTiltShift()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {}, Lcom/android/camera/ui/V6EffectCropView;->isCircle()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    if-eq v3, v2, :cond_4

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    invoke-static {}, Lcom/android/camera/ui/V6EffectCropView;->isTiltShift()Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    div-int/2addr v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    sget v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    sget v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J

    const-wide/16 v5, 0x258

    iput-wide v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J

    sget v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    iput v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    sget v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    iput v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    int-to-float v8, v7

    sub-float v8, v0, v8

    int-to-float v9, v7

    sub-float v9, v5, v9

    int-to-float v10, v7

    add-float/2addr v0, v10

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v6, v8, v9, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->showTiltShiftMask()V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    :cond_4
    return-void
.end method

.method private static isCircle()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isContained([Landroid/graphics/Point;II)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    array-length v0, p1

    if-eqz v0, :cond_3

    array-length v0, p1

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    return p0

    :cond_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-eq v3, p2, :cond_2

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v2, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :cond_3
    return p0
.end method

.method private static isTiltShift()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    return v0
.end method

.method private moveCircle(FFFF)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :goto_0
    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p3

    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p3

    invoke-static {p1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_1
    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {p3, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    :cond_2
    sget p3, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object p4, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p4

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr p1, v0

    mul-float/2addr p1, p1

    sub-float/2addr p2, v1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    sub-float p3, v0, p1

    sub-float p4, v1, p1

    add-float/2addr v0, p1

    add-float/2addr v1, p1

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void
.end method

.method private moveCrop(FFFF)V
    .locals 8

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x104

    if-ne v0, v1, :cond_0

    new-instance v5, Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {v5, p3}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v6, Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {v6, p3}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    sub-double v0, p1, v0

    double-to-int p4, v0

    add-int/2addr p3, p4

    sget p4, Lcom/android/camera/ui/V6EffectCropView;->MIN_RANGE:I

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMaxRange:I

    invoke-static {p3, p4, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iput-wide p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    goto :goto_1

    :cond_0
    const/16 v1, 0x101

    if-eq v0, v1, :cond_2

    const/16 v1, 0x102

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    if-ne v0, p1, :cond_3

    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    float-to-int p3, p3

    add-int/2addr v0, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    float-to-int p4, p4

    add-int/2addr p2, p4

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p3

    iget p3, v0, Landroid/graphics/Point;->y:I

    add-int/2addr p3, p4

    invoke-direct {p2, v1, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EffectCropView;->computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    new-instance p4, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p3, p4}, Lcom/android/camera/ui/V6EffectCropView;->computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void
.end method

.method private moveEdges(FF)V
    .locals 5

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    :cond_2
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v2, v1

    int-to-float v1, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p1

    iget p1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    :cond_5
    iget p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iget p2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_6
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void
.end method

.method private normalizeRangeWidth()V
    .locals 9

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->computePointWithDistance(I)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v4, v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v5, v0, v1

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    return-void
.end method

.method private onCropChange()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v4, v0

    iget v5, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v5, v1

    iget v6, v3, Landroid/graphics/RectF;->right:F

    div-float/2addr v6, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v1

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->normalizeRangeWidth()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/EffectController;->setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private showTiltShiftMask()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 1

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    mul-int/2addr p0, p0

    mul-int/2addr p1, p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->clearEffectAttribute()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    :cond_0
    return-void
.end method

.method public isMoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    return p0
.end method

.method public onCameraOpen()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->initHandler()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/android/camera/ui/V6EffectCropView;->CORNER_BALL_RADIUS:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRadius:I

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRadius:I

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-int/lit8 v3, p1, 0x5

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    mul-int/lit8 v4, p2, 0x5

    div-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    sget p3, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RADIUS:I

    int-to-float p3, p3

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p4, v2

    sub-float v3, p4, p3

    div-float/2addr v0, v2

    sub-float v2, v0, p3

    add-float/2addr p4, p3

    add-float/2addr v0, p3

    invoke-virtual {v1, v3, v2, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-boolean p4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    :goto_0
    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 p4, 0x0

    div-int/lit8 v0, p2, 0x2

    invoke-virtual {p3, p4, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {p3, p1, v0}, Landroid/graphics/Point;->set(II)V

    mul-int/lit8 p2, p2, 0x2

    div-int/lit8 p2, p2, 0x3

    iput p2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMaxRange:I

    iget-boolean p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float p1, v0, p1

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v4, v3, v4

    iget-boolean v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mTapSlop:I

    int-to-float v5, v5

    mul-float/2addr p1, p1

    mul-float/2addr v4, v4

    add-float/2addr p1, v4

    cmpg-float p1, v5, p1

    if-gez p1, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float p1, v0, p1

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v1, v3, v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6EffectCropView;->moveEdges(FF)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsCircle:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float p1, v0, p1

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v1, v3, v1

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/ui/V6EffectCropView;->moveCircle(FFFF)V

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float p1, v0, p1

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v1, v3, v1

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/ui/V6EffectCropView;->moveCrop(FFFF)V

    :cond_5
    :goto_0
    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1

    :cond_6
    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->hideTiltShiftMask()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6EffectCropView;->detectMovingEdges(FF)V

    iput-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    :cond_8
    :goto_1
    return v2
.end method

.method public removeTiltShiftMask()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTiltShiftMaskHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6EffectCropView;->isTiltShift()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->innerShow()V

    :cond_1
    return-void
.end method

.method public show(FF)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultRectBounds:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultCircleBounds:Landroid/graphics/RectF;

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, p1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    sub-float v4, p2, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr p1, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    invoke-virtual {v1, v2, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    :cond_1
    return-void
.end method

.method public updateVisible()V
    .locals 2

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/ui/V6EffectCropView;->isTiltShift()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->innerShow()V

    :goto_1
    return-void
.end method

.method public updateVisible(I)V
    .locals 1

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->innerShow()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    :goto_0
    return-void
.end method
