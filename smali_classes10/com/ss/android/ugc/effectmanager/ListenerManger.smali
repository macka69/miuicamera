.class public Lcom/ss/android/ugc/effectmanager/ListenerManger;
.super Ljava/lang/Object;
.source "ListenerManger.java"


# instance fields
.field private checkChannelListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/ICheckChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private fetchEffectChannelListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private fetchEffectListListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;",
            ">;"
        }
    .end annotation
.end field

.field private fetchEffectListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadProviderEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IDownloadProviderEffectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchCategoryEffectListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchCategoryEffectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchFavoriteListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchFavoriteList;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchPanelInfoListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchPanelInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchProviderEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchProviderEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mModFavoriteListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IModFavoriteList;",
            ">;"
        }
    .end annotation
.end field

.field private mReadUpdateTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IReadUpdateTagListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteUpdateTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/ugc/effectmanager/effect/listener/IWriteUpdateTagListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListListenerMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchProviderEffectMap:Ljava/util/Map;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_8
    return-void
.end method

.method public getCheckChannelListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/ICheckChannelListener;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/ICheckChannelListener;

    return-object p0
.end method

.method public getDownloadProviderEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IDownloadProviderEffectListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mDownloadProviderEffectMap:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IDownloadProviderEffectListener;

    return-object p0
.end method

.method public getFetchCategoryEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchCategoryEffectListener;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchCategoryEffectListenerMap:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchCategoryEffectListener;

    return-object p0
.end method

.method public getFetchEffectChannelListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

    return-object p0
.end method

.method public getFetchEffectLisListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;

    return-object p0
.end method

.method public getFetchEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;

    return-object p0
.end method

.method public getFetchFavoriteListListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchFavoriteList;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchFavoriteList;

    return-object p0
.end method

.method public getFetchPanelInfoListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchPanelInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchPanelInfoListenerMap:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchPanelInfoListener;

    return-object p0
.end method

.method public getFetchProviderEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchProviderEffect;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchProviderEffectMap:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchProviderEffect;

    return-object p0
.end method

.method public getModFavoriteListListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IModFavoriteList;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IModFavoriteList;

    return-object p0
.end method

.method public getReadUpdateTagListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IReadUpdateTagListener;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IReadUpdateTagListener;

    return-object p0
.end method

.method public getWriteUpdateTagListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IWriteUpdateTagListener;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/listener/IWriteUpdateTagListener;

    return-object p0
.end method

.method public removeReadUpdateTagListener(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeWriteUpdateTagListener(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCheckChannelListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/ICheckChannelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->checkChannelListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDownloadProviderEffectListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IDownloadProviderEffectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mDownloadProviderEffectMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mDownloadProviderEffectMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mDownloadProviderEffectMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFetchCategoryEffectListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchCategoryEffectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchCategoryEffectListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchCategoryEffectListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchCategoryEffectListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFetchEffectChannelListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectChannelListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFetchEffectListListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFetchEffectListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->fetchEffectListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFetchFavoriteListListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchFavoriteList;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchFavoriteListMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFetchPanelInfoListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchPanelInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchPanelInfoListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchPanelInfoListenerMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchPanelInfoListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFetchProviderEffectListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchProviderEffect;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchProviderEffectMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchProviderEffectMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mFetchProviderEffectMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setModFavoriteListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IModFavoriteList;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mModFavoriteListMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReadUpdateTagListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IReadUpdateTagListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mReadUpdateTagMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWriteUpdateTagListener(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IWriteUpdateTagListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/ListenerManger;->mWriteUpdateTagMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
