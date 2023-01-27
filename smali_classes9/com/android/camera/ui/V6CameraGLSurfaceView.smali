.class public Lcom/android/camera/ui/V6CameraGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "V6CameraGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;,
        Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;
    }
.end annotation


# static fields
.field private static final DEBUG_INVALIDATE:Z = false

.field private static final TAG:Ljava/lang/String; = "GLRootView"


# instance fields
.field private final mActivity:Lcom/android/camera/Camera;

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

.field private mCatchUnTapableEvent:Z

.field private mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLContext14:Landroid/opengl/EGLContext;

.field private final mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

.field private mFilterGLThread:Lcom/android/gallery3d/ui/GLThread;

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mHeight:I

.field private mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

.field private volatile mPendingChange:Z

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRendererListener:Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCountingStart:J

    iput-boolean p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    new-instance v0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/ui/V6CameraGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mPendingChange:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-static {}, Lcom/mi/config/Device;->isSurfaceSizeLimited()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    const/16 v1, 0x2d0

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v2

    div-int/2addr v0, v2

    invoke-interface {p2, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method private synthetic lambda$setRendererListener$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRendererListener:Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mWidth:I

    iget v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mHeight:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mPendingChange:Z

    return-void
.end method

.method private synthetic lambda$surfaceDestroyed$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    :cond_0
    return-void
.end method

.method private outputFps()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iput-wide v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCountingStart:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surface draw fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GLRootView"

    invoke-static {v2, v4, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCountingStart:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCount:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCount:I

    return-void
.end method


# virtual methods
.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext14:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getFilterGLThread()Lcom/android/gallery3d/ui/GLThread;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFilterGLThread:Lcom/android/gallery3d/ui/GLThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/ui/GLThread;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext14:Landroid/opengl/EGLContext;

    const-string v2, "FilterGLThread"

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/ui/GLThread;-><init>(Ljava/lang/String;Landroid/opengl/EGLContext;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFilterGLThread:Lcom/android/gallery3d/ui/GLThread;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFilterGLThread:Lcom/android/gallery3d/ui/GLThread;

    return-object p0
.end method

.method public getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    return-object p0
.end method

.method public isBusy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    return p0
.end method

.method public synthetic lambda$setRendererListener$1$V6CameraGLSurfaceView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->lambda$setRendererListener$1()V

    return-void
.end method

.method public synthetic lambda$surfaceDestroyed$0$V6CameraGLSurfaceView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->lambda$surfaceDestroyed$0()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->deleteProgram()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFilterGLThread:Lcom/android/gallery3d/ui/GLThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLThread;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFilterGLThread:Lcom/android/gallery3d/ui/GLThread;

    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    sget-boolean p1, Lcom/android/camera/Util;->DEBUG_FPS:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->outputFps()V

    :cond_0
    const-string p1, "GLRootView"

    const-string v0, "onDrawFrame start"

    invoke-static {p1, v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->isAnimationRunning()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->isAnimationGaussian()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isExternalFrameProcessorPowerTest()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v3}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->getProcessorType()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x1

    if-eq v4, p1, :cond_2

    const/4 p1, 0x2

    if-eq v4, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-interface {v3, p1, v1}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-interface {v3, p1, v1}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v4, v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    if-eqz v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getExternalFrameRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v3, v1, p1, p1, p1}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p1, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    :cond_7
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    const-string p0, "GLRootView"

    const-string p1, "onDrawFrame end"

    invoke-static {p0, p1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onSurfaceViewPause()V

    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    const-string v0, "GLRootView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "GLRootView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onSurfaceViewResume()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gl10: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLRootView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    iput p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mWidth:I

    iput p3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext14:Landroid/opengl/EGLContext;

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRendererListener:Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mPendingChange:Z

    :goto_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string p2, "GLRootView"

    const-string v0, "onSurfaceCreated"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLObject has changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-static {p1}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance p1, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean p1, Lcom/android/camera/Util;->DEBUG_FPS:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/BaseModule;->isInDisplayRect(II)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->setScaleDetectorEnable(Z)V

    iput-boolean v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setScaleDetectorEnable(Z)V

    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    iget-boolean p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    return p0
.end method

.method public requestRender()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public setPendingChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mPendingChange:Z

    return-void
.end method

.method public setRendererListener(Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRendererListener:Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;

    iget-boolean p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mPendingChange:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/camera/ui/-$$Lambda$V6CameraGLSurfaceView$O2afxyyUJMESPJqrJcMgV18tOWs;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/-$$Lambda$V6CameraGLSurfaceView$O2afxyyUJMESPJqrJcMgV18tOWs;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->releaseRender()V

    :cond_0
    new-instance v0, Lcom/android/camera/ui/-$$Lambda$V6CameraGLSurfaceView$ysAgqGuqkbuHF-zzHof-7rxExCg;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/-$$Lambda$V6CameraGLSurfaceView$ysAgqGuqkbuHF-zzHof-7rxExCg;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "surfaceDestroyed: mActivity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLRootView"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
