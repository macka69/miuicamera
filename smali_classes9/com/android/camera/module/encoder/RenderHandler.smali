.class public final Lcom/android/camera/module/encoder/RenderHandler;
.super Ljava/lang/Object;
.source "RenderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mEgl:Lcom/android/camera/module/encoder/EGLBase;

.field private mExtTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/draw_mode/DrawAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

.field private mIsReady:Z

.field private mIsRecordable:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRequestDraw:I

.field private mRequestRelease:Z

.field private mRequestSetEglContext:Z

.field private mShardContext:Landroid/opengl/EGLContext;

.field private mSurface:Ljava/lang/Object;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTextures:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewWidth:I

    iput p2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewHeight:I

    return-void
.end method

.method public static final createHandler(Ljava/lang/String;II)Lcom/android/camera/module/encoder/RenderHandler;
    .locals 6

    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "init: previewSize=%dx%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/module/encoder/RenderHandler;-><init>(II)V

    iget-object p1, v0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-boolean v4, v0, Lcom/android/camera/module/encoder/RenderHandler;->mIsReady:Z

    new-instance p2, Ljava/lang/Thread;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    :cond_0
    invoke-direct {p2, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iget-boolean p0, v0, Lcom/android/camera/module/encoder/RenderHandler;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :try_start_1
    iget-object p0, v0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p2, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private final internalPrepare()V
    .locals 4

    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "internalPrepare"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/encoder/RenderHandler;->internalRelease()V

    new-instance v0, Lcom/android/camera/module/encoder/EGLBase;

    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mShardContext:Landroid/opengl/EGLContext;

    iget-boolean v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mIsRecordable:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/module/encoder/EGLBase;-><init>(Landroid/opengl/EGLContext;ZZ)V

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSurface:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/encoder/EGLBase;->createFromSurface(Ljava/lang/Object;)Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->makeCurrent()V

    new-instance v0, Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-direct {v0}, Lcom/android/camera/effect/VideoRecorderCanvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSurface:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private final internalRelease()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "internalRelease"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->release()V

    iput-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteProgram()V

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    iput-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase;->release()V

    iput-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    :cond_2
    return-void
.end method


# virtual methods
.method public final draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Ljava/util/List;)V

    return-void
.end method

.method public final draw(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewWidth:I

    iget v5, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewHeight:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Ljava/util/List;)V

    return-void
.end method

.method public final draw(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/effect/draw_mode/DrawAttribute;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/draw_mode/DrawAttribute;

    iget-object v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTextures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSurface:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSurface:Ljava/lang/Object;

    check-cast p0, Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final release()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v1, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 6

    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "renderHandlerThread>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestSetEglContext:Z

    iput-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    iput v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mIsReady:Z

    iget-object v3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v0, :cond_0

    monitor-exit v3

    goto :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestSetEglContext:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestSetEglContext:Z

    invoke-direct {p0}, Lcom/android/camera/module/encoder/RenderHandler;->internalPrepare()V

    :cond_1
    iget v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget v4, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    :cond_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->makeCurrent()V

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/effect/draw_mode/DrawAttribute;

    iget-object v5, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v5, v4}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->swap()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_3
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catch_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iput-boolean v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    invoke-direct {p0}, Lcom/android/camera/module/encoder/RenderHandler;->internalRelease()V

    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object p0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v0, "renderHandlerThread<<<"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Ljava/lang/Object;Z)V
    .locals 2

    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setEglContext"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unsupported window type:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mShardContext:Landroid/opengl/EGLContext;

    iput-object p2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSurface:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mIsRecordable:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestSetEglContext:Z

    iget-object p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p1, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public waitDrawFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTextures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
