.class public Lcom/android/camera/network/net/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static final CACHE_DISK_USAGE_BYTES:I = 0x500000

.field private static final NETWORK_THREAD_POOL_SIZE:I = 0x2

.field private static instance:Lcom/android/camera/network/net/HttpManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/network/net/HttpManager;
    .locals 2

    const-class v0, Lcom/android/camera/network/net/HttpManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/network/net/HttpManager;

    invoke-direct {v1}, Lcom/android/camera/network/net/HttpManager;-><init>()V

    sput-object v1, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;

    :cond_0
    sget-object v1, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public initRequestQueue(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/net/HttpManager;->mContext:Landroid/content/Context;

    return-void
.end method
