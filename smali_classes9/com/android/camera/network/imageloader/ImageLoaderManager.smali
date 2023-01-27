.class public Lcom/android/camera/network/imageloader/ImageLoaderManager;
.super Ljava/lang/Object;
.source "ImageLoaderManager.java"


# static fields
.field private static sInstance:Lcom/android/camera/network/imageloader/ImageLoaderManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/network/imageloader/ImageLoaderManager;
    .locals 2

    sget-object v0, Lcom/android/camera/network/imageloader/ImageLoaderManager;->sInstance:Lcom/android/camera/network/imageloader/ImageLoaderManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/network/imageloader/ImageLoaderManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/network/imageloader/ImageLoaderManager;->sInstance:Lcom/android/camera/network/imageloader/ImageLoaderManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/network/imageloader/ImageLoaderManager;

    invoke-direct {v1}, Lcom/android/camera/network/imageloader/ImageLoaderManager;-><init>()V

    sput-object v1, Lcom/android/camera/network/imageloader/ImageLoaderManager;->sInstance:Lcom/android/camera/network/imageloader/ImageLoaderManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/network/imageloader/ImageLoaderManager;->sInstance:Lcom/android/camera/network/imageloader/ImageLoaderManager;

    return-object v0
.end method


# virtual methods
.method public initRequestQueue(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
