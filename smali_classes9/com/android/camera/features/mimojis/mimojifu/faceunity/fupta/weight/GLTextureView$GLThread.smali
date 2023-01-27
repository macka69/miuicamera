.class Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

.field private eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private exited:Z

.field private glTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private hasSurface:Z

.field private haveEGLContext:Z

.field private haveEglSurface:Z

.field private height:I

.field private paused:Z

.field private renderComplete:Z

.field private renderMode:I

.field private requestPaused:Z

.field private requestRender:Z

.field private shouldExit:Z

.field private shouldReleaseEGLContext:Z

.field private sizeChanged:Z

.field private surfaceIsBad:Z

.field private waitingForSurface:Z

.field private width:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->sizeChanged:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->width:I

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->height:I

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestRender:Z

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderMode:I

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->exited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEGLContext:Z

    iput-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x0

    :cond_0
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_2
    :try_start_1
    iget-boolean v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->shouldExit:Z

    if-eqz v15, :cond_1

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEGLContextLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v13, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Runnable;

    goto/16 :goto_6

    :cond_2
    iget-boolean v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->paused:Z

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestPaused:Z

    if-eq v15, v2, :cond_3

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestPaused:Z

    iget-boolean v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestPaused:Z

    iput-boolean v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->paused:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    iget-boolean v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->shouldReleaseEGLContext:Z

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEGLContextLocked()V

    iput-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->shouldReleaseEGLContext:Z

    const/4 v5, 0x1

    :cond_4
    if-eqz v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEGLContextLocked()V

    move v3, v0

    :cond_5
    if-eqz v2, :cond_6

    iget-boolean v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v15, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_6
    if-eqz v2, :cond_9

    iget-boolean v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEGLContext:Z

    if-eqz v15, :cond_9

    iget-object v15, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    if-nez v15, :cond_7

    move v15, v0

    goto :goto_4

    :cond_7
    invoke-static {v15}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$800(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Z

    move-result v15

    :goto_4
    if-eqz v15, :cond_8

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEGLContextLocked()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->finish()V

    :cond_a
    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->hasSurface:Z

    if-nez v2, :cond_c

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->waitingForSurface:Z

    if-nez v2, :cond_c

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_b
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->waitingForSurface:Z

    iput-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->surfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->hasSurface:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->waitingForSurface:Z

    if-eqz v2, :cond_d

    iput-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->waitingForSurface:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_d
    if-eqz v4, :cond_e

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderComplete:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    move v4, v0

    move v12, v4

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->readyToDraw()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEGLContext:Z

    if-nez v2, :cond_10

    if-eqz v5, :cond_f

    move v5, v0

    goto :goto_5

    :cond_f
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;->tryAcquireEGLContextLocked(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_10

    :try_start_4
    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEGLContext:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/4 v6, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;->releaseEGLContextLocked(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;)V

    throw v0

    :cond_10
    :goto_5
    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEGLContext:Z

    if-eqz v2, :cond_11

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    if-nez v2, :cond_11

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_11
    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v2, :cond_1e

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->sizeChanged:Z

    if-eqz v2, :cond_12

    iget v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->width:I

    iget v7, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->height:I

    iput-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->sizeChanged:Z

    move v10, v2

    move v11, v7

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    :cond_12
    iput-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestRender:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :goto_6
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v13, :cond_13

    :try_start_6
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_13
    if-eqz v7, :cond_15

    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->createSurface()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v14, 0x1

    :try_start_7
    iput-boolean v14, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->surfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_14
    move v7, v0

    :cond_15
    if-eqz v8, :cond_16

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;->checkGLDriver()V

    move v8, v0

    :cond_16
    if-eqz v6, :cond_18

    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;

    move-result-object v2

    iget-object v6, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    iget-object v6, v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-interface {v2, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;->onSurfaceCreated(Landroid/opengl/EGLConfig;)V

    :cond_17
    move v6, v0

    :cond_18
    if-eqz v9, :cond_1a

    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    if-eqz v2, :cond_19

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;->onSurfaceChanged(II)V

    :cond_19
    move v9, v0

    :cond_1a
    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->glTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$Renderer;->onDrawFrame()V

    :cond_1b
    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->swap()I

    move-result v2

    const/16 v14, 0x3000

    if-eq v2, v14, :cond_1d

    const/16 v14, 0x300e

    if-eq v2, v14, :cond_1c

    const-string v14, "GLThread"

    const-string v15, "eglSwapBuffers"

    invoke-static {v14, v15, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v14, 0x1

    :try_start_9
    iput-boolean v14, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->surfaceIsBad:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_1c
    const/4 v14, 0x1

    move v3, v14

    goto :goto_7

    :cond_1d
    const/4 v14, 0x1

    :goto_7
    if-eqz v12, :cond_0

    move v4, v14

    goto/16 :goto_1

    :cond_1e
    :try_start_b
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->stopEGLContextLocked()V

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->paused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->hasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->surfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->height:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestRender:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderMode:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEGLContextLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEGLContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEGLContext:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;->releaseEGLContextLocked(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eglHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEGLContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->haveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->readyToDraw()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRenderMode()I
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestPaused:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

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

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestPaused:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestRender:Z

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderComplete:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->exited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->paused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

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

.method public onWindowResize(II)V
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->width:I

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->sizeChanged:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestRender:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderComplete:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->exited:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->paused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderComplete:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

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

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "r must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestExitAndWait()V
    .locals 2

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->shouldExit:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

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

.method public requestReleaseEGLContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->shouldReleaseEGLContext:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->requestRender:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object p0

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

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;->threadExiting(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;)V

    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->renderMode:I

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public surfaceCreated()V
    .locals 2

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->hasSurface:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->waitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

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

.method public surfaceDestroyed()V
    .locals 2

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->hasSurface:Z

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->waitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$700()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

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
