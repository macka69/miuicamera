.class public Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;
.super Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;
.source "CameraFocusSplitAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final BIG_RECT_HALF_LENGTH:I

.field public static final CENTER_ALPHA:I = 0xf0

.field private static final CENTER_BASE_RADIUS:I

.field private static final STATE_COMBO:I = 0x1

.field private static final STATE_SPLIT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mExposureBitmap:Landroid/graphics/Bitmap;

.field private mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mExposureLocked:Z

.field private mExposureX:I

.field private mExposureY:I

.field private mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mFocusLocked:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusX:I

.field private mFocusY:I

.field private mOrientation:I

.field private mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field private mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

.field private mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field private mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

.field private mResetCenterAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field private mSuccessAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RECT_HALF_LENGTH:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x3f2a3d71

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mOrientation:I

    const-string v1, "auto"

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusMode:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const v1, 0x3faa3d71

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/16 v5, 0xff

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, -0x31ea

    invoke-virtual {p1, v3, v2, v5, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v1, 0x3fa66666

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0xf0

    invoke-virtual {p1, v3, v2, v5, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v2, v5, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->rotateItem:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object p0
.end method

.method private drawCombo(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSplit(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private synthetic lambda$playSplittingAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->updateValue(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$startFocusFailAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->updateValue(F)V

    return-void
.end method

.method private playSplittingAnimation()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    const v2, 0x3e3851ec

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusSplitAnimateDrawable$Nc_U_G02uU3GoPPFWlpU0PVuuAI;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusSplitAnimateDrawable$Nc_U_G02uU3GoPPFWlpU0PVuuAI;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelResetCenter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected cancelSuccessAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->drawCombo(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->drawSplit(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCenterIndicator()Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExposureLocked()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFocusLocked()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFocusOrExposureLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$playSplittingAnimation$0$CameraFocusSplitAnimateDrawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->lambda$playSplittingAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$startFocusFailAnimation$1$CameraFocusSplitAnimateDrawable(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->lambda$startFocusFailAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusLocked:Z

    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureLocked:Z

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/16 v1, -0x31ea

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setAeAfLockedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/4 v0, 0x6

    iput v0, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorBitmapSun(Landroid/graphics/Bitmap;)V

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    const/4 p3, 0x1

    iput p3, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iget-object p3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p3, p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mCaptureBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setCenter(II)V
    .locals 5

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusX:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    int-to-float v2, p1

    int-to-float v3, p2

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RECT_HALF_LENGTH:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setExposureCenter(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusCenter(II)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/16 p2, -0x31ea

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

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

.method public setExposureCenter(II)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureX:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mExposureY:I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    int-to-float p1, p1

    int-to-float p2, p2

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RECT_HALF_LENGTH:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintExposureCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFocusCenter(II)V
    .locals 2

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusX:I

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusY:I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    int-to-float p1, p1

    int-to-float p2, p2

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->BIG_RECT_HALF_LENGTH:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusMode:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mOrientation:I

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->playSplittingAnimation()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startFocusFailAnimation()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusFailAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0}, Lmiui/animation/AnimatorBuilder;->of(Landroid/animation/Animator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lmiui/animation/AnimatorBuilder;->setDuration(J)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/animation/AnimatorBuilder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/AnimatorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/AnimatorBuilder;->animator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusSplitAnimateDrawable$-lCy35v7ICw7Lc2-aHU1asNlcOo;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusSplitAnimateDrawable$-lCy35v7ICw7Lc2-aHU1asNlcOo;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startFocusSuccessAnimation(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mState:I

    :cond_0
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mIsTouchFocus:Z

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    return-void

    :cond_2
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    if-eq p1, p2, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mFocusIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    :cond_5
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->mPaintFocusCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/16 p2, -0x31ea

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->start3ALockSuccessAnimation()Landroid/animation/Animator;

    goto :goto_0

    :cond_6
    invoke-super {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startNormalFocusSuccessAnimation()V

    :goto_0
    return-void
.end method

.method public startTouchDownAnimation(I)V
    .locals 1

    sget-object p1, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startTouchDownAnimation "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startTouchDownAnimation()V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
