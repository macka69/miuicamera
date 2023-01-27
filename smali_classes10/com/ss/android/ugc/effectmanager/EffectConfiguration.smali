.class public Lcom/ss/android/ugc/effectmanager/EffectConfiguration;
.super Ljava/lang/Object;
.source "EffectConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final API_ADDRESS:Ljava/lang/String; = "/effect/api"

.field public static final KEY_ACCESS_KEY:Ljava/lang/String; = "access_key"

.field public static final KEY_APP_ID:Ljava/lang/String; = "aid"

.field public static final KEY_APP_LANGUAGE:Ljava/lang/String; = "app_language"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_CITY_CODE:Ljava/lang/String; = "city_code"

.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_CURSOR:Ljava/lang/String; = "cursor"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_DEVICE_PLATFORM:Ljava/lang/String; = "device_platform"

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final KEY_EFFECT_IDS:Ljava/lang/String; = "effect_ids"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_PANEL:Ljava/lang/String; = "panel"

.field public static final KEY_PROVIDER_NAME:Ljava/lang/String; = "library"

.field public static final KEY_REGION:Ljava/lang/String; = "region"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field public static final KEY_SEARCH_WORD:Ljava/lang/String; = "word"

.field public static final KEY_SORTING_POSITION:Ljava/lang/String; = "sorting_position"

.field public static final KEY_SYS_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_WITH_CATEGORY_EFFECTS:Ljava/lang/String; = "has_category_effects"


# instance fields
.field private cityCode:Ljava/lang/String;

.field private jsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

.field private latitude:Ljava/lang/String;

.field private listenerManger:Lcom/ss/android/ugc/effectmanager/ListenerManger;

.field private longitude:Ljava/lang/String;

.field private mAccessKey:Ljava/lang/String;

.field private mApiAddress:Ljava/lang/String;

.field private mAppID:Ljava/lang/String;

.field private mAppLanguage:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

.field private mChannel:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mEffectDir:Ljava/io/File;

.field private mEffectFetcher:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

.field private mEffectNetWorker:Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

.field private mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

.field private mPlatform:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mRetryCount:I

.field private mSdkVersion:Ljava/lang/String;

.field private mSysLanguage:Ljava/lang/String;

.field private mTaskManager:Lcom/ss/android/ugc/effectmanager/common/TaskManager;

.field private monitorService:Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;


# direct methods
.method private constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "online"

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mChannel:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mRetryCount:I

    const-string v1, "/effect/api"

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mApiAddress:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$000(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mAccessKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$100(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mSdkVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$200(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mAppVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$300(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$400(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$400(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "local_test"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mChannel:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$500(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mPlatform:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$600(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mDeviceType:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$700(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectDir:Ljava/io/File;

    new-instance v0, Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$800(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;-><init>(Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;)V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectNetWorker:Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$900(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mRegion:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1000(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1100(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mRetryCount:I

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1200(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->jsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1300(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mAppID:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1400(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mAppLanguage:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1500(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mSysLanguage:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1600(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1700(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->longitude:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1800(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->latitude:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$1900(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->cityCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$2000(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->monitorService:Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;

    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$2100(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectNetWorker:Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    invoke-direct {p1, v0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DefaultEffectFetcher;-><init>(Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->access$2100(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectFetcher:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

    new-instance p1, Lcom/ss/android/ugc/effectmanager/ListenerManger;

    invoke-direct {p1}, Lcom/ss/android/ugc/effectmanager/ListenerManger;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->listenerManger:Lcom/ss/android/ugc/effectmanager/ListenerManger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;Lcom/ss/android/ugc/effectmanager/EffectConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;-><init>(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mAccessKey:Ljava/lang/String;

    return-object p0
.end method

.method public getApiAdress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mApiAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mAppID:Ljava/lang/String;

    return-object p0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mAppLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mAppVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getCache()Lcom/ss/android/ugc/effectmanager/common/listener/ICache;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    return-object p0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->cityCode:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectDir:Ljava/io/File;

    return-object p0
.end method

.method public getEffectFetcher()Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectFetcher:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

    return-object p0
.end method

.method public getEffectNetWorker()Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectNetWorker:Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    return-object p0
.end method

.method public getJsonConverter()Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->jsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    return-object p0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public getLinkSelectorConfiguration()Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    return-object p0
.end method

.method public getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->listenerManger:Lcom/ss/android/ugc/effectmanager/ListenerManger;

    return-object p0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public getMonitorService()Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->monitorService:Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;

    return-object p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mPlatform:Ljava/lang/String;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mRegion:Ljava/lang/String;

    return-object p0
.end method

.method public getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mRetryCount:I

    return p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getSysLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mSysLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mTaskManager:Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    return-object p0
.end method

.method public setCache(Lcom/ss/android/ugc/effectmanager/common/listener/ICache;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setEffectDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectDir:Ljava/io/File;

    return-void
.end method

.method public setEffectNetWorker(Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mEffectNetWorker:Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/effectmanager/network/EffectNetWorkerWrapper;->setIEffectNetWorker(Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;)V

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setTaskManager(Lcom/ss/android/ugc/effectmanager/common/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->mTaskManager:Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    return-void
.end method
