.class public final Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
.super Ljava/lang/Object;
.source "EffectConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/effectmanager/EffectConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessKey:Ljava/lang/String;

.field private appID:Ljava/lang/String;

.field private appLanguage:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private cache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

.field private channel:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private effectDir:Ljava/io/File;

.field private effectFetcher:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

.field private effectNetWorker:Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;

.field private jsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

.field private monitorService:Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;

.field private platform:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private retryCount:I

.field private sdkVersion:Ljava/lang/String;

.field private sysLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->retryCount:I

    new-instance v0, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-direct {v0}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->accessKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/common/listener/ICache;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->cache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->retryCount:I

    return p0
.end method

.method static synthetic access$1200(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->jsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->appID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->appLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->sysLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->cityCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->monitorService:Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->effectFetcher:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->platform:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->effectDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->effectNetWorker:Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->region:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public JsonConverter(Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->jsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    return-object p0
.end method

.method public accessKey(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->accessKey:Ljava/lang/String;

    return-object p0
.end method

.method public appID(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->appID:Ljava/lang/String;

    return-object p0
.end method

.method public appLanguage(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->appLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public appVersion(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;
    .locals 2

    new-instance v0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;-><init>(Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;Lcom/ss/android/ugc/effectmanager/EffectConfiguration$1;)V

    return-object v0
.end method

.method public cache(Lcom/ss/android/ugc/effectmanager/common/listener/ICache;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->cache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    return-object p0
.end method

.method public channel(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public context(Landroid/content/Context;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->setContext(Landroid/content/Context;)V

    return-object p0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public deviceType(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method public effectDir(Ljava/io/File;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->effectDir:Ljava/io/File;

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->effectDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object p0
.end method

.method public effectFetcher(Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->effectFetcher:Lcom/ss/android/ugc/effectmanager/effect/bridge/EffectFetcher;

    return-object p0
.end method

.method public effectNetWorker(Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->effectNetWorker:Lcom/ss/android/ugc/effectmanager/common/listener/IEffectNetWorker;

    return-object p0
.end method

.method public hosts(Ljava/util/List;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;)",
            "Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->setOriginHosts(Ljava/util/List;)V

    return-object p0
.end method

.method public lazy(Z)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->setLazy(Z)V

    return-object p0
.end method

.method public monitorService(Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->monitorService:Lcom/ss/android/ugc/effectmanager/common/listener/IMonitorService;

    return-object p0
.end method

.method public netWorkChangeMonitor(Z)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->setNetworkChangeMonitor(Z)V

    return-object p0
.end method

.method public platform(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public poi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->longitude:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->latitude:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->cityCode:Ljava/lang/String;

    return-object p0
.end method

.method public region(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public repeatTime(I)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->setRepeatTime(I)V

    return-object p0
.end method

.method public retryCount(I)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->retryCount:I

    return-object p0
.end method

.method public sdkVersion(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public speedApi(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->setSpeedApi(Ljava/lang/String;)V

    return-object p0
.end method

.method public speedTimeOut(I)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->mLinkSelectorConfiguration:Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;->setSpeedTimeOut(I)V

    return-object p0
.end method

.method public sysLanguage(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectConfiguration$Builder;->sysLanguage:Ljava/lang/String;

    return-object p0
.end method
