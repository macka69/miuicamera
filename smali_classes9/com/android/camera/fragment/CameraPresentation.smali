.class public Lcom/android/camera/fragment/CameraPresentation;
.super Landroid/app/Presentation;
.source "CameraPresentation.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private final mCameraActivity:Lcom/android/camera/Camera;

.field private mCenterHCropRatio:F

.field private mCenterVCropRatio:F

.field private mCoverBottom:Landroid/view/View;

.field private mCoverLeft:Landroid/view/View;

.field private mCoverRight:Landroid/view/View;

.field private mCoverTop:Landroid/view/View;

.field private mDegree:I

.field private mDelayNumberTv:Landroid/widget/TextView;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mInited:Z

.field private mTextureView:Lcom/android/camera/ui/GLTextureView;

.field private mTextureViewHeight:I

.field private mTextureViewTop:I

.field private mTextureViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object p2, p0, Lcom/android/camera/fragment/CameraPresentation;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/CameraPresentation;)Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCameraActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method private initStillPreviewRender(Lcom/android/camera/ui/GLTextureView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/ui/GLTextureView;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    new-instance v0, Lcom/android/camera/fragment/CameraPresentation$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/CameraPresentation$1;-><init>(Lcom/android/camera/fragment/CameraPresentation;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLTextureView;->setEGLShareContextGetter(Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;)V

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/GLTextureView;->setRenderMode(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDelayNumberTv()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTextureView()Lcom/android/camera/ui/GLTextureView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureView:Lcom/android/camera/ui/GLTextureView;

    return-object p0
.end method

.method public hideDelayNumber()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isInited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(I)V

    const p1, 0x7f0a030f

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/GLTextureView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureView:Lcom/android/camera/ui/GLTextureView;

    const p1, 0x7f0a030e

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    const p1, 0x7f0a00f0

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    const p1, 0x7f0a00ed

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    const p1, 0x7f0a00ee

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    const p1, 0x7f0a00ef

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureView:Lcom/android/camera/ui/GLTextureView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CameraPresentation;->initStillPreviewRender(Lcom/android/camera/ui/GLTextureView;)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iget v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v1

    const v2, 0x3d75c28f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->updateTextureSize()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    iget-object p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCameraActivity:Lcom/android/camera/Camera;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_3

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v2

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getCurrentTransform()[F

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    :cond_1
    move-object v5, v3

    const/4 v10, 0x0

    invoke-virtual {p1, v5, v10}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrixForMirror([FI)V

    iget v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    iget v4, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    iget v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    invoke-static {v5, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerCropVertical([FF)V

    iget v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    invoke-static {v5, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerCropHorizontal([FF)V

    iget-object v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v4

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    iget v8, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    iget v9, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->isAnimationCapture()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    iget v6, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    const/16 p0, 0xb2

    invoke-static {p0, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(IIIII)V

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_2
    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public setDegree(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDegree:I

    return-void
.end method

.method public showDelayNumber(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDelayNumberTv:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTextureSize()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    iput v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    if-eq v0, v10, :cond_4

    if-eq v0, v7, :cond_1

    if-eq v0, v8, :cond_5

    if-eq v0, v6, :cond_4

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v7, v10

    iget v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    cmpl-float v11, v7, v10

    if-lez v11, :cond_2

    div-float/2addr v10, v7

    iput v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    goto :goto_0

    :cond_2
    cmpg-float v11, v7, v10

    if-gez v11, :cond_3

    div-float/2addr v7, v10

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    :cond_3
    :goto_0
    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    iput v9, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    mul-int/lit8 v7, v7, 0x10

    div-int/lit8 v7, v7, 0x9

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    iget v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    sub-int/2addr v10, v7

    div-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    goto :goto_1

    :cond_5
    iget v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    iput v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewWidth:I

    mul-int/2addr v10, v8

    div-int/2addr v10, v7

    iput v10, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewHeight:I

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mTextureViewTop:I

    :goto_1
    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    const/4 v10, 0x0

    invoke-static {v7, v10, v5}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v7

    iput v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterVCropRatio:F

    iget v7, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    invoke-static {v7, v10, v5}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v5

    iput v5, p0, Lcom/android/camera/fragment/CameraPresentation;->mCenterHCropRatio:F

    const/16 v5, 0x8

    if-eq v0, v8, :cond_7

    if-eq v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    int-to-double v0, p0

    mul-int/lit8 p0, p0, 0x10

    div-int/lit8 p0, p0, 0x9

    int-to-double v5, p0

    const-wide v7, 0x40031eb851eb851fL    # 2.39

    div-double/2addr v5, v7

    sub-double/2addr v0, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v5

    double-to-int p0, v0

    iput p0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverTop:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverBottom:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverLeft:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mCoverRight:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayHeight:I

    iget p0, p0, Lcom/android/camera/fragment/CameraPresentation;->mDisplayWidth:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_2
    return-void
.end method
