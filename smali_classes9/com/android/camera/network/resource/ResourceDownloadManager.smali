.class public Lcom/android/camera/network/resource/ResourceDownloadManager;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceDownloadManager"

.field private static mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;


# instance fields
.field private mDownloadState:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/network/resource/OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCompleteListener:Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;

.field private object:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->object:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/network/resource/ResourceDownloadManager$1;-><init>(Lcom/android/camera/network/resource/ResourceDownloadManager;)V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mOnCompleteListener:Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/network/resource/ResourceDownloadManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->object:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/network/resource/ResourceDownloadManager;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/network/resource/ResourceDownloadManager;->dispatchListener(JI)V

    return-void
.end method

.method private dispatchListener(JI)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/network/resource/OnDownloadListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/network/resource/OnDownloadListener;->onFinish(JI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/camera/network/resource/ResourceDownloadManager;
    .locals 2

    sget-object v0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/network/resource/ResourceDownloadManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-direct {v1}, Lcom/android/camera/network/resource/ResourceDownloadManager;-><init>()V

    sput-object v1, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

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
    sget-object v0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lcom/android/camera/network/resource/OnDownloadListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public download(Lcom/android/camera/network/resource/Resource;Lcom/android/camera/network/resource/DownloadHelper;)V
    .locals 0

    return-void
.end method

.method public getDownloadState(J)I
    .locals 1

    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public removeDownloadListener(Lcom/android/camera/network/resource/OnDownloadListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
