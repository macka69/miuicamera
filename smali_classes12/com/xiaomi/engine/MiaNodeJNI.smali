.class public Lcom/xiaomi/engine/MiaNodeJNI;
.super Ljava/lang/Object;
.source "MiaNodeJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/engine/MiaNodeJNI$InstanceHolder;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "camera_mianode_jni.xiaomi"

.field private static final TAG:Ljava/lang/String; = "MiaNodeJNI"

.field private static sInitialized:Z

.field private static sType:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mObjLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiaNodeLifeCycle"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mObjLock:Ljava/lang/Object;

    :try_start_0
    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    const-string v1, "start loading camera_mianode_jni.xiaomi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "camera_mianode_jni.xiaomi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    const-string v1, "static initializer: loadLibrary camera_mianode_jni.xiaomi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not load library:camera_mianode_jni.xiaomi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/engine/MiaNodeJNI$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/engine/MiaNodeJNI;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaomi/engine/MiaNodeJNI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/engine/MiaNodeJNI;->deInitialize(I)V

    return-void
.end method

.method private static native deInit(I)I
.end method

.method private deInitialize(I)V
    .locals 3

    iget-object p0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mObjLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/engine/MiaNodeJNI;->deInit(I)I

    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiaNode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been deInitialized"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    sput-boolean p1, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaomi/engine/MiaNodeJNI;
    .locals 1

    sget-object v0, Lcom/xiaomi/engine/MiaNodeJNI$InstanceHolder;->INSTANCE:Lcom/xiaomi/engine/MiaNodeJNI;

    return-object v0
.end method

.method private static native init(I)I
.end method

.method private initialize(I)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-boolean v3, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    if-eq v3, p1, :cond_0

    sget v3, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    if-eqz v3, :cond_0

    sget v3, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    invoke-direct {p0, v3}, Lcom/xiaomi/engine/MiaNodeJNI;->deInitialize(I)V

    :cond_0
    sget-boolean p0, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    if-nez p0, :cond_1

    sput p1, Lcom/xiaomi/engine/MiaNodeJNI;->sType:I

    invoke-static {p1}, Lcom/xiaomi/engine/MiaNodeJNI;->init(I)I

    sget-object p0, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiaNode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been initialized, cost :"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static native processRequest(Ljava/util/List;Landroid/media/Image;IZ)I
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/engine/FrameData;",
            ">;",
            "Landroid/media/Image;",
            "IZ)I"
        }
    .end annotation
.end method

.method private tryToCloseNode()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/engine/MiaNodeJNI$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/engine/MiaNodeJNI$1;-><init>(Lcom/xiaomi/engine/MiaNodeJNI;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public process(Ljava/util/List;Landroid/media/Image;IZ)I
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/engine/FrameData;",
            ">;",
            "Landroid/media/Image;",
            "IZ)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/engine/MiaNodeJNI;->mObjLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/engine/MiaNodeJNI;->sInitialized:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lcom/xiaomi/engine/MiaNodeJNI;->initialize(I)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    const-string v4, "processRequest: start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/engine/MiaNodeJNI;->processRequest(Ljava/util/List;Landroid/media/Image;IZ)I

    move-result p1

    sget-object p2, Lcom/xiaomi/engine/MiaNodeJNI;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processRequest: end, cost: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/engine/MiaNodeJNI;->tryToCloseNode()V

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
