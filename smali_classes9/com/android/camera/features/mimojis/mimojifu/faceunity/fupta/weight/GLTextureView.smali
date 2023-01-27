.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$LogWriter;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$SimpleEGLConfigChooser;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$BaseConfigChooser;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final TAG:Ljava/lang/String;

.field private static final glThreadManager:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;


# instance fields
.field private EGLContextClientVersion:I

.field private EGLContextFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;

.field private debugFlags:I

.field private detached:Z

.field private eglConfigChooser:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;

.field private eglWindowSurfaceFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLWindowSurfaceFactory;

.field private glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private preserveEGLContextOnPause:Z

.field private renderer:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;

.field private surfaceTextureListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/TextureView$SurfaceTextureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$1;)V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThreadManager:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->EGLContextClientVersion:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->eglConfigChooser:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->EGLContextFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLWindowSurfaceFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->eglWindowSurfaceFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThreadManager:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->preserveEGLContextOnPause:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->renderer:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;

    return-object p0
.end method

.method private checkRenderThreadState()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init()V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public addSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->debugFlags:I

    return p0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->preserveEGLContextOnPause:Z

    return p0
.end method

.method public getRenderMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->getRenderMode()I

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->detached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->renderer:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->setRenderMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->detached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->detached:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->onResume()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->requestRender()V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->debugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    new-instance v8, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->setEGLConfigChooser(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->eglConfigChooser:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->setEGLConfigChooser(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->checkRenderThreadState()V

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->EGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->EGLContextFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->eglWindowSurfaceFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->preserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->checkRenderThreadState()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->eglConfigChooser:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;Z)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->eglConfigChooser:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->EGLContextFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$1;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->EGLContextFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->eglWindowSurfaceFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$1;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->eglWindowSurfaceFactory:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLWindowSurfaceFactory;

    :cond_2
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->renderer:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->glThread:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->surfaceDestroyed()V

    return-void
.end method
