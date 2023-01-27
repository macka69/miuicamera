.class public Lcom/android/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# static fields
.field private static final ROTATE_DURATION:F = 300.0f

.field private static final TAG:Ljava/lang/String; = "SwitchAnimManager"

.field private static final ZOOM_DELTA_PREVIEW:F = 0.2f


# instance fields
.field private mAlphaAnimation:Z

.field private mAnimStartTime:J

.field private mExtScale:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveBack:Z

.field private mNewPreview:Z

.field private mPreviewFrameLayoutWidth:I

.field private mRecurBlur:Z

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I

.field private mReviewDrawingX:I

.field private mReviewDrawingY:I

.field private mTimeOut:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SwitchAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mTimeOut:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SwitchAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mTimeOut:F

    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mTimeOut:F

    return-void
.end method

.method private drawAnimationBlend(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 9

    move-object v0, p0

    iget-boolean v1, v0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long/2addr v3, v5

    long-to-float v5, v3

    iget v6, v0, Lcom/android/camera/SwitchAnimManager;->mTimeOut:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    float-to-long v3, v6

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    if-nez v8, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    :cond_2
    iget-object v1, v0, Lcom/android/camera/SwitchAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, v3

    iget v3, v0, Lcom/android/camera/SwitchAnimManager;->mTimeOut:F

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V

    return v8
.end method

.method private drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    if-eqz p2, :cond_0

    invoke-virtual {p6, p1}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-boolean p2, p0, Lcom/android/camera/SwitchAnimManager;->mAlphaAnimation:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    const p4, 0x3f333333

    mul-float/2addr p7, p4

    sub-float/2addr p3, p7

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/GLCanvasState;->setBlendAlpha(F)V

    :cond_1
    iget p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingX:I

    iget p3, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingY:I

    iget p4, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    iget p0, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    invoke-static {p2, p3, p4, p0}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p6, p1, p0, p2}, Lcom/android/camera/CameraScreenNail;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;[F)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private drawCopiedTexture(Lcom/android/gallery3d/ui/GLCanvas;IILcom/android/gallery3d/ui/RawTexture;F)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/SwitchAnimManager;->mMoveBack:Z

    const v2, 0x3e4ccccd

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingX:I

    int-to-float v1, v1

    iget v5, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v6, v5

    div-float/2addr v6, v4

    add-float/2addr v1, v6

    iget v6, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingY:I

    int-to-float v6, v6

    iget v0, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v7, v0

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    mul-float v2, v2, p5

    sub-float/2addr v3, v2

    int-to-float v2, v5

    mul-float/2addr v2, v3

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float v3, v2, v4

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    div-float v1, v0, v4

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    int-to-float v1, v1

    div-float v6, v1, v4

    int-to-float v5, v5

    div-float v7, v5, v4

    mul-float v2, v2, p5

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    mul-float/2addr v5, v3

    div-float v2, v1, v4

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    div-float v2, v5, v4

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingX:I

    iget v15, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingY:I

    iget v1, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    iget v0, v0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move/from16 v16, v1

    move/from16 v17, v0

    invoke-virtual/range {v8 .. v17}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIIIIIII)V

    :goto_0
    return-void
.end method

.method private drawRealTimeTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V
    .locals 6

    iget-boolean p0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mAlphaAnimation:Z

    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/camera/SwitchAnimManager;->drawAnimationBlend(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result p0

    return p0
.end method

.method public drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z
    .locals 7

    int-to-float p2, p2

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p4, v0

    add-float/2addr p2, v1

    int-to-float p3, p3

    int-to-float p5, p5

    div-float/2addr p5, v0

    add-float/2addr p3, p5

    iget p5, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz p5, :cond_0

    int-to-float p5, p5

    div-float/2addr p4, p5

    goto :goto_0

    :cond_0
    const-string p4, "SwitchAnimManager"

    const-string p5, "previewFrameLayoutWidth=0"

    invoke-static {p4, p5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p4, 0x3f800000    # 1.0f

    :goto_0
    iget p5, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float p5, p5

    mul-float/2addr p5, p4

    iget p0, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, p4

    div-float p4, p5, v0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-float p2, p0, v0

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result p2

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public getExtScaleX()F
    .locals 0

    iget p0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    return p0
.end method

.method public getExtScaleY()F
    .locals 0

    iget p0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    return p0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string p1, "SwitchAnimManager"

    const-string p2, "invalid preview frame width"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setReviewDrawingSize(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingX:I

    iput p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingY:I

    iput p3, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    iput p4, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/SwitchAnimManager;->mMoveBack:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    return-void
.end method

.method public startAnimation(Z)V
    .locals 2

    const-string v0, "SwitchAnimManager"

    if-eqz p1, :cond_0

    const-string/jumbo v1, "startAnimation with alpha animation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    iput-boolean p1, p0, Lcom/android/camera/SwitchAnimManager;->mAlphaAnimation:Z

    return-void
.end method

.method public startResume()V
    .locals 2

    const-string v0, "SwitchAnimManager"

    const-string/jumbo v1, "startResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    return-void
.end method
