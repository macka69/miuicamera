.class public Lcom/android/camera/data/data/global/ComponentModuleList;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentModuleList.java"


# instance fields
.field private isChanged:Z

.field private mFavoriteItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInHideItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInMoreItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentType:I

.field private mLastCameraId:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mFavoriteItems:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mInMoreItems:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mInHideItems:Ljava/util/List;

    return-void
.end method

.method private getItemStringName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v0, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez p0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private getMoreItemIndex(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)I"
        }
    .end annotation

    iget p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v0, -0x1

    if-nez p0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static final getTransferredMode(I)I
    .locals 1

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_5

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_4

    const/16 v0, 0xb9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd6

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0xa7

    return p0

    :cond_1
    const/16 p0, 0xd1

    return p0

    :cond_2
    const/16 p0, 0xad

    return p0

    :cond_3
    const/16 p0, 0xd2

    return p0

    :cond_4
    const/16 p0, 0xa6

    return p0

    :cond_5
    const/16 p0, 0xa3

    return p0
.end method

.method private initHideItems()V
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mInHideItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportedSuperNightScene()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportRawDomainBasedSuperNight()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mInHideItems:Ljava/util/List;

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v0

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private initImageItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object p0

    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized initItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initVideoItems(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initQRItems(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initVideoItems(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initImageItems(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initNormalItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initHideItems()V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mFavoriteItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mInMoreItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItemIndex(Ljava/util/List;)I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mFavoriteItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mFavoriteItems:Ljava/util/List;

    invoke-interface {v0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mFavoriteItems:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mInMoreItems:Ljava/util/List;

    add-int/2addr v2, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "parse intent first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initNormalItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportOnlyMimojiMode()Z

    move-result v0

    const/16 v1, 0xb8

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const-string v3, "pref_ultral_pixel_self"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0xaf

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getRearUltraPixelPhotographyIndex()I

    move-result p0

    if-lez p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportProMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportedBackPortrait()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->getRearUltraPixelPhotographyIndex()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v2, 0xa2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportedSuperNightScene()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportRawDomainBasedSuperNight()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportMiLiveMode()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportLiveMode()Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportLiveMode()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportMiLiveMode()Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0xae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportLiveMode()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportMiLiveMode()Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportMimoji()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportedPanorama()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xa6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode2()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportSuperMoonMode()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportFeatureLiveVVMode()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xd1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->useSlowMotionTab()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportFastMotionMode()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xa9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportCloneMode()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0xd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDualVideo()Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAIWatermark()Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportXiaomiAmbilight()Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0xbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v2

    const/16 v3, 0xbb

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportLongExposureDelay()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportParalleldream()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportTimestop()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportSlowShutter()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDollyZoom()Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_17
    const/16 p0, 0xd3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object v1

    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getSortModes()[I

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [I

    move v2, v4

    :goto_0
    array-length v3, p0

    if-ge v4, v3, :cond_1a

    aget v3, p0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v3, :cond_19

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v3, p0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    aget v3, p0, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1b

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1b
    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object p0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setSortModes([I)V

    return-void
.end method

.method private initQRItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object p0

    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initVideoItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/global/ModeDataFactory;->getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/ModeDataFactory;->createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public geItemStringName(IZ)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getTransferredMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItemStringName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getHideItems()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItemStringName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public getCommonItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mFavoriteItems:Ljava/util/List;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayNameRes(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHideItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mInHideItems:Ljava/util/List;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportShowOnlyFrontLensRelated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mLastCameraId:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mLastCameraId:I

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pref_camera_mode_key_intent_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMode(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMoreItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mInMoreItems:Ljava/util/List;

    return-object p0
.end method

.method public isCommonMode(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getTransferredMode(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mFavoriteItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mFavoriteItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public needShowLiveRedDot()Z
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveModuleClicked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->hasModesChanged()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->isChanged:Z

    :cond_1
    return-void
.end method

.method public runChangeResetCb(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->isChanged:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->isChanged:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setIntentType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
