.class public Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;
.super Ljava/lang/Object;
.source "NetworkMaterialDownLoad.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String;

.field private static final BRANCH_SUFFIX:Ljava/lang/String;

.field private static final DEBUG_SUFFIX:Ljava/lang/String; = "debug/"

.field private static final IS_DEBUG_TEST:Z

.field private static final TAG:Ljava/lang/String;

.field private static final URL:Ljava/lang/String; = "https://cdn.cnbj1.fds.api.mi-img.com/cloud/mimoji3.0/"

.field private static final URL_SUFFIX:Ljava/lang/String;

.field private static final mDisposable:Lio/reactivex/disposables/CompositeDisposable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

.field private mMimojiDownloadListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

.field private mMimojiListUpdateListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;

.field private mProgressEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVMResource:Lcom/android/camera/data/observeable/VMResource;

.field private mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

.field private networkDownloadRequest:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/resource/SimpleNetworkDownloadRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "mimoji.cloud.material.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->IS_DEBUG_TEST:Z

    sget-boolean v0, Lcom/mi/config/Device;->IS_STABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "release/"

    goto :goto_0

    :cond_0
    const-string v0, "dev/"

    :goto_0
    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->BRANCH_SUFFIX:Ljava/lang/String;

    sget-boolean v1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->IS_DEBUG_TEST:Z

    if-eqz v1, :cond_1

    const-string v0, "debug/"

    :cond_1
    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->URL_SUFFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://cdn.cnbj1.fds.api.mi-img.com/cloud/mimoji3.0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->URL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->BASE_URL:Ljava/lang/String;

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->TAG:Ljava/lang/String;

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mMimojiListUpdateListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mMimojiDownloadListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mMimojiDownloadListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    return-object p0
.end method

.method private exceptionProcess(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mMimojiDownloadListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;->onError()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/observeable/VMResource;->updateItemState(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/observeable/VMResource;->updateItemState(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Integer;)V

    sget-object p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MATERIAL_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$downloadItem$7(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mContext:Landroid/content/Context;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/camera/data/observeable/VMResource;->startAndGetDownloadDisposable(Lcom/android/camera/resource/BaseResourceItem;Landroidx/fragment/app/FragmentActivity;Lio/reactivex/ObservableEmitter;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic lambda$downloadItem$8(Lcom/android/camera/resource/BaseResourceItem;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mMimojiListUpdateListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->onItemDownloadComplete(Lcom/android/camera/resource/BaseResourceItem;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "human.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-static {p0, v3, v1, v1}, Lcom/android/camera/module/impl/component/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->setMimojiDownloadTime(J)V

    :cond_0
    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "downloadState"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method static synthetic lambda$downloadItem$9(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->TAG:Ljava/lang/String;

    const-string v0, "downloadItem error: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$downloadMaterial$10(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mProgressEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method private synthetic lambda$downloadMaterial$11(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mMimojiDownloadListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x5a

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;->onProgress(I)V

    return-void
.end method

.method private synthetic lambda$downloadMaterial$12(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object p2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MATERIAL_PATH:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mProgressEmitter:Lio/reactivex/ObservableEmitter;

    const v1, 0x8000

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->decompressMaterial(Ljava/lang/String;Ljava/lang/String;ILio/reactivex/ObservableEmitter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$downloadMaterial$13(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->TAG:Ljava/lang/String;

    const-string v0, "download ok: "

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mMimojiDownloadListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;->onCompleted()V

    return-void
.end method

.method private synthetic lambda$downloadMaterial$14(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->exceptionProcess(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PullNewError"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$onInstalled$0(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;->materialVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->onMaterialUpdate(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->initCloudMimojiList(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    return-void
.end method

.method static synthetic lambda$onInstalled$1(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p0

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->getMimojiHumanList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/resource/BaseResourceList;->setDeparted()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onInstalled$2(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->initCloudMimojiList(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    return-void
.end method

.method static synthetic lambda$onInstalled$3(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p0

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->getMimojiCartoonList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/resource/BaseResourceList;->setDeparted()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$pullNewList$4(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->firstProgressShow(Z)V

    return-void
.end method

.method private synthetic lambda$pullNewList$5(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p4, 0x64

    if-ne p4, p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->updateLocalHumanJson(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :goto_0
    invoke-static {p2}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->onInstalled(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setMimojiDownloadTime(J)V

    return-void
.end method

.method private synthetic lambda$pullNewList$6(ILjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->onInstalled(I)V

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setMimojiDownloadTime(J)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PullNewError"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private loadMimojiList(I)Z
    .locals 2

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->getMimojiHumanList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceList;->isDeparted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->initCloudMimojiList(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->onInstalled(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->getMimojiCartoonList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->initCloudMimojiList(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->onInstalled(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private updateLocalHumanJson(Ljava/lang/String;Ljava/io/File;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "human.json"

    if-eqz v1, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    :goto_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/android/camera/module/impl/component/FileUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "material_version"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "material_size"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "data"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p1, v12

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v15, :cond_a

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    move-object/from16 v18, v13

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 v19, v10

    const-string v10, "itemVersion"

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v20, v7

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    const-string v7, "id"

    move-object/from16 v21, v11

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v22, v1

    move/from16 v11, v17

    const/16 v17, 0x0

    :goto_3
    const/4 v1, 0x2

    if-lt v11, v1, :cond_5

    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v23, v6

    const-string v6, "placeholder"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v16, 0x1

    xor-int/lit8 v6, v6, 0x1

    move-object/from16 v24, v8

    const-string v8, "downloadState"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v25, v2

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v10, :cond_2

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_3

    move/from16 v17, v16

    :cond_3
    add-int/lit8 v0, v15, -0x1

    if-ne v12, v0, :cond_4

    if-eqz v6, :cond_4

    if-nez v8, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    move-object/from16 v6, v23

    move-object/from16 v8, v24

    move-object/from16 v2, v25

    goto :goto_3

    :cond_5
    move-object/from16 v25, v2

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    const/16 v16, 0x1

    add-int/lit8 v0, v15, -0x1

    if-ne v12, v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v14, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v17, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v10, :cond_8

    add-int/lit8 v0, v12, 0x2

    invoke-virtual {v14, v0, v13}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_9
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, v18

    move-object/from16 v10, v19

    move-object/from16 v7, v20

    move-object/from16 v11, v21

    move-object/from16 v1, v22

    move-object/from16 v6, v23

    move-object/from16 v8, v24

    move-object/from16 v2, v25

    goto/16 :goto_1

    :cond_a
    move-object/from16 v22, v1

    move-object/from16 v25, v2

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    move-object/from16 v18, v13

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v2}, Lcom/android/camera/module/impl/component/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b
    move-object/from16 v2, v22

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_c
    return-void
.end method


# virtual methods
.method public cancleMaterialDownload()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->networkDownloadRequest:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;->onDispose()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v0

    const-string v1, "add_state"

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->exceptionProcess(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    return-void
.end method

.method public decompressMaterial(Ljava/lang/String;Ljava/lang/String;ILio/reactivex/ObservableEmitter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/Util;->verifySdcardZipWithProgress(Ljava/lang/String;Ljava/lang/String;ILio/reactivex/ObservableEmitter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "SUCCESS"

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, "ERROR"

    return-object p0
.end method

.method public downloadItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMResource;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    :cond_0
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$m51bBSYBYtyTCCaD1EibEBvKXS4;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$m51bBSYBYtyTCCaD1EibEBvKXS4;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$TwEoPdWIkwkJhS98IyAEre8xGpU;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$TwEoPdWIkwkJhS98IyAEre8xGpU;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$7IJXBJnROR6vzGzfcr9WTSFWOys;->INSTANCE:Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$7IJXBJnROR6vzGzfcr9WTSFWOys;

    invoke-virtual {p1, v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public downloadMaterial(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMResource;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    :cond_0
    const-string v0, "add_state"

    invoke-virtual {p1, v0}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/observeable/VMResource;->updateItemState(Lcom/android/camera/resource/BaseResourceItem;Ljava/lang/Integer;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MATERIAL_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MATERIAL_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "material"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->networkDownloadRequest:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Eb_XE_fJ0u2Dcll1ThnTAEeHMx0;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Eb_XE_fJ0u2Dcll1ThnTAEeHMx0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-wide/16 v2, 0x78

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/Observable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$DhD11kq9mI2K8UEbZDS4dUI29Do;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$DhD11kq9mI2K8UEbZDS4dUI29Do;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->networkDownloadRequest:Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-virtual {v2, v0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$EbuY4w39RpbJ0w7tHuu8oMX9tG4;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$EbuY4w39RpbJ0w7tHuu8oMX9tG4;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$VbzXYWXfAT18d4QrM9Oap6BOTTM;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$VbzXYWXfAT18d4QrM9Oap6BOTTM;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$D88P7VededohU6MgPsg92LjK3vc;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$D88P7VededohU6MgPsg92LjK3vc;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    invoke-virtual {v2, v3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public getMimojiListVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    return-object p0
.end method

.method public initCloudMimojiList(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->simpleVerificationMaterial()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMaterialDownloadState(Z)V

    :cond_1
    const-string v0, "add_state"

    invoke-virtual {p1, v0}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMaterialDownloadState()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiList(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-lez v0, :cond_4

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;->getListTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->getMimojiListVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setMimojiVersion(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mMimojiListUpdateListener:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;

    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;->onMimojiListUpdate(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$downloadItem$7$NetworkMaterialDownLoad(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadItem$7(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic lambda$downloadItem$8$NetworkMaterialDownLoad(Lcom/android/camera/resource/BaseResourceItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadItem$8(Lcom/android/camera/resource/BaseResourceItem;)V

    return-void
.end method

.method public synthetic lambda$downloadMaterial$10$NetworkMaterialDownLoad(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadMaterial$10(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public synthetic lambda$downloadMaterial$11$NetworkMaterialDownLoad(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadMaterial$11(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$downloadMaterial$12$NetworkMaterialDownLoad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadMaterial$12(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$downloadMaterial$13$NetworkMaterialDownLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadMaterial$13(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$downloadMaterial$14$NetworkMaterialDownLoad(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadMaterial$14(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$onInstalled$0$NetworkMaterialDownLoad(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$onInstalled$0(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    return-void
.end method

.method public synthetic lambda$onInstalled$2$NetworkMaterialDownLoad(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$onInstalled$2(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    return-void
.end method

.method public synthetic lambda$pullNewList$5$NetworkMaterialDownLoad(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$pullNewList$5(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$pullNewList$6$NetworkMaterialDownLoad(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$pullNewList$6(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onInstalled(I)V
    .locals 2

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->getHumanListObservable()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$p12rcs_cbeAGnG-2IzpQ7giKOTc;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$p12rcs_cbeAGnG-2IzpQ7giKOTc;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Q2Yvpv5TlzdWIOoHk5QgIZnJ5hs;->INSTANCE:Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Q2Yvpv5TlzdWIOoHk5QgIZnJ5hs;

    invoke-virtual {p1, v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->getCartoonListObservable()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$sfx2EA28l96pr3uH0GI6zbYuNec;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$sfx2EA28l96pr3uH0GI6zbYuNec;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$v6eFer0spYvf0HaPtUn5MnN1bAY;->INSTANCE:Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$v6eFer0spYvf0HaPtUn5MnN1bAY;

    invoke-virtual {p1, v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onMaterialUpdate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMaterialVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMaterialDownloadState(Z)V

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MATERIAL_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteSubFiles(Ljava/lang/String;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMaterialVersion(Ljava/lang/String;)V

    return-void
.end method

.method public pullNewList(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->loadMimojiList(I)Z

    return-void

    :cond_0
    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "human.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cartoon.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->IS_DEBUG_TEST:Z

    if-nez v1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiDownloadTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b77400

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->loadMimojiList(I)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xf8

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$3JiU2Ie1F2jpiTE1pP8FDqAMRHw;

    invoke-direct {v5, v1}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$3JiU2Ie1F2jpiTE1pP8FDqAMRHw;-><init>(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    new-instance v1, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;

    invoke-direct {v1, v0, v2}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;ILjava/lang/String;Ljava/io/File;)V

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$kh9Szd_AumHb4MNzC0RyahffblE;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$kh9Szd_AumHb4MNzC0RyahffblE;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;I)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
