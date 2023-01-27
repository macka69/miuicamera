.class public final Lcom/faceunity/pta_helper/video/RenderHandler;
.super Ljava/lang/Object;
.source "RenderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Landroid/opengl/EGLContext;

.field private d:Z

.field private e:Landroid/view/Surface;

.field private f:I

.field private g:[F

.field private h:[F

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Lcom/faceunity/pta_helper/a/a/f;

.field private m:Lcom/faceunity/pta_helper/a/a/b;

.field private n:Lcom/faceunity/pta_helper/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/faceunity/pta_helper/video/RenderHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/RenderHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/f;->d()V

    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->n:Lcom/faceunity/pta_helper/a/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/e;->c()V

    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->n:Lcom/faceunity/pta_helper/a/a/e;

    :cond_1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/b;->a()V

    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    :cond_2
    return-void
.end method

.method public static final createHandler(Ljava/lang/String;)Lcom/faceunity/pta_helper/video/RenderHandler;
    .locals 4

    new-instance v0, Lcom/faceunity/pta_helper/video/RenderHandler;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/video/RenderHandler;-><init>()V

    iget-object v1, v0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/faceunity/pta_helper/video/RenderHandler;->a:Ljava/lang/String;

    :goto_0
    invoke-direct {v2, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, v0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final draw(I)V
    .locals 2

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_helper/video/RenderHandler;->draw(I[F[F)V

    return-void
.end method

.method public final draw(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/faceunity/pta_helper/video/RenderHandler;->draw(I[F[F)V

    return-void
.end method

.method public final draw(I[F[F)V
    .locals 2

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->f:I

    iput-object p2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    iput-object p3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    iget p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

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

.method public final isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    instance-of v1, v1, Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

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

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
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

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->i:Z

    iput v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    monitor-exit v2

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->i:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->i:Z

    invoke-direct {p0}, Lcom/faceunity/pta_helper/video/RenderHandler;->a()V

    new-instance v0, Lcom/faceunity/pta_helper/a/a/b;

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->c:Landroid/opengl/EGLContext;

    invoke-direct {v0, v4, v3}, Lcom/faceunity/pta_helper/a/a/b;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    new-instance v0, Lcom/faceunity/pta_helper/a/a/f;

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    iget-object v5, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    invoke-direct {v0, v4, v5}, Lcom/faceunity/pta_helper/a/a/f;-><init>(Lcom/faceunity/pta_helper/a/a/b;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/c;->b()V

    new-instance v0, Lcom/faceunity/pta_helper/a/b;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/a/b;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->n:Lcom/faceunity/pta_helper/a/a/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    iget v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/c;->b()V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v0, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->n:Lcom/faceunity/pta_helper/a/a/e;

    iget v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->f:I

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    invoke-virtual {v0, v2, v3, v4}, Lcom/faceunity/pta_helper/a/a/e;->a(I[F[F)V

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/c;->c()Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iput-boolean v3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    invoke-direct {p0}, Lcom/faceunity/pta_helper/video/RenderHandler;->a()V

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .locals 2

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->c:Landroid/opengl/EGLContext;

    iput-object p2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    iput-boolean p3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->i:Z

    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
