.class public Lcom/android/camera/aftersales/AftersalesManager;
.super Ljava/lang/Object;
.source "AftersalesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/aftersales/AftersalesManager$Holder;,
        Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AfterSales"

.field private static mEnabled:Z


# instance fields
.field private volatile isInit:Z

.field private mCounters:Lcom/android/camera/aftersales/counters/BaseCounter;

.field private service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/camera/aftersales/AftersalesManager;->mEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/aftersales/AftersalesManager;->isInit:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/aftersales/AftersalesManager;->isInit:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/camera/aftersales/AftersalesManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/aftersales/AftersalesManager$1;-><init>(Lcom/android/camera/aftersales/AftersalesManager;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/aftersales/AftersalesManager;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/camera/aftersales/counters/SimpleCounter;

    invoke-direct {v0}, Lcom/android/camera/aftersales/counters/SimpleCounter;-><init>()V

    iput-object v0, p0, Lcom/android/camera/aftersales/AftersalesManager;->mCounters:Lcom/android/camera/aftersales/counters/BaseCounter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/aftersales/AftersalesManager;->isInit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/aftersales/AftersalesManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/aftersales/AftersalesManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/aftersales/AftersalesManager;)Lcom/android/camera/aftersales/counters/BaseCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/aftersales/AftersalesManager;->mCounters:Lcom/android/camera/aftersales/counters/BaseCounter;

    return-object p0
.end method

.method public static checkSelf()V
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->afterSalesEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/aftersales/AftersalesManager;->mEnabled:Z

    return-void
.end method

.method public static getInstance()Lcom/android/camera/aftersales/AftersalesManager;
    .locals 1

    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager$Holder;->access$000()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final count(JI)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/aftersales/AftersalesManager;->count(JII)V

    return-void
.end method

.method public final count(JII)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/aftersales/AftersalesManager;->isInit:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/aftersales/AftersalesManager;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/aftersales/AftersalesManager;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;-><init>(Lcom/android/camera/aftersales/AftersalesManager;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "AfterSales"

    const-string p1, "aftersales record not enable in this device"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
