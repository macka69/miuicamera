.class public Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;
.super Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;
.source "FetchExistEffectListTask.java"


# instance fields
.field private allDownloadedCategoryEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

.field private mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

.field private panel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/context/EffectContext;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p4, p2}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->panel:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {p3}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getCache()Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getJsonConverter()Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    return-void
.end method

.method private getCachedChannelModel()Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;
    .locals 3

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getChannel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->panel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectCacheKeyGenerator;->generatePanelKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/listener/ICache;->queryToStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;

    invoke-direct {v1}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;-><init>()V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->mJsonConverter:Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;

    const-class v1, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;

    invoke-interface {p0, v0, v1}, Lcom/ss/android/ugc/effectmanager/common/listener/IJsonConverter;->convertJsonToObj(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;

    :cond_0
    return-object v1
.end method

.method private getCategoryAllEffects(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->allDownloadedCategoryEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-virtual {v3}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getEffectId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getCategoryEffectResponse(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryResponse;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;->getCategory()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->checkValued()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryResponse;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->getEffects()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->getCategoryAllEffects(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->getTags()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->getTagsUpdateTime()Ljava/lang/String;

    move-result-object v10

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;->getCollection()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryResponse;->setCollectionEffect(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getDownloadedEffectList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ss/android/ugc/effectmanager/common/listener/ICache;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->panel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xe

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;

    new-instance v2, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->panel:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    const/16 v4, 0x2717

    invoke-direct {v3, v4}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    invoke-direct {v0, v2, v3}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    invoke-direct {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;-><init>()V

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->getCachedChannelModel()Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;

    new-instance v2, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->panel:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    const/16 v4, 0x2714

    invoke-direct {v3, v4}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    invoke-direct {v0, v2, v3}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;->checkValued()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;

    new-instance v2, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->panel:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->getDownloadedEffectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->allDownloadedCategoryEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;

    new-instance v2, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->panel:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->allDownloadedCategoryEffects:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->setAllCategoryEffects(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->getCategoryEffectResponse(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->setCategoryResponseList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;->panel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->setPanel(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelModel;->getPanel()Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->setPanelModel(Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;)V

    new-instance v2, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;

    invoke-direct {v2, v0, v4}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method
