.class public Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningDualVideo.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ComponentRunningDualVideo"


# instance fields
.field private mDrawGridWindow:Z

.field private mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

.field private mUserSelectDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/util/UserSelectData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->initUserSelectionDataIfNeed()V

    sget-object p1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    return-void
.end method

.method private getLayoutForSelect()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/data/runing/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$8MyvrzZot2zjYRIKVQIQ_SNgv-0;

    invoke-direct {v1, p0}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$8MyvrzZot2zjYRIKVQIQ_SNgv-0;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$ccdFDpObfjWfi69E7Llmke_BdVE;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$ccdFDpObfjWfi69E7Llmke_BdVE;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$lNcf3Ua7KbX6z5f28TVNFBpq7TY;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$lNcf3Ua7KbX6z5f28TVNFBpq7TY;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/LayoutType;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method private initUserSelectionDataIfNeed()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDualVideoCameraChoose()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    sget-object v2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/util/UserSelectData;

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    sget-object v2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/util/UserSelectData;

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$getIds$14(I)[Ljava/lang/Integer;
    .locals 0

    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic lambda$getLayoutForSelect$10(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getLayoutForSelect$11(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$CihtZzM4e4bIdYr32fKRzM2StJE;

    invoke-direct {v0, p1}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$CihtZzM4e4bIdYr32fKRzM2StJE;-><init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getLayoutForSelect$12(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getLayoutForSelect$13(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method static synthetic lambda$getLocalCameraId$15(Ljava/lang/Integer;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getLocalCameraId$16(Ljava/lang/Integer;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getLocalCameraId$17(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$printSelectData$0(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printSelectData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ComponentRunningDualVideo"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$refreshSelectData$3(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$refreshSelectData$4(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$refreshSelectData$5(Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getFaceType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$refreshSelectData$6(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$refreshSelectData$7(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 0

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method static synthetic lambda$refreshSelectData$8(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$2gWuqNOxurZ4VoY8INatToNzoSc;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$2gWuqNOxurZ4VoY8INatToNzoSc;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$u1WwcgeTXow2t9lUN9dsdlpsolw;

    invoke-direct {v0, p1}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$u1WwcgeTXow2t9lUN9dsdlpsolw;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$refreshSelectData$9(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setSelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setSelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$setRecordType$1(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setRecordType$2(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/recorder/RecordType;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIds()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/data/data/runing/-$$Lambda$5w01cfCDx7N9ua4nFmZ7P7-mKHM;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$5w01cfCDx7N9ua4nFmZ7P7-mKHM;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$XwUaOk-FA7bxRiAbMVKEOfV-Wmg;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$XwUaOk-FA7bxRiAbMVKEOfV-Wmg;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    invoke-static {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->sortId([Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v0, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/RecordType;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const v4, 0x7f110324

    const v5, 0x7f110052

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->STANDALONE:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/RecordType;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const v12, 0x7f110326

    const v13, 0x7f110053

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Kdogi9qMKu0tJOxxR-MUVYAg7I4;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Kdogi9qMKu0tJOxxR-MUVYAg7I4;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$pkhVkMLc82UMdPxoOcOC5s6j1sU;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$pkhVkMLc82UMdPxoOcOC5s6j1sU;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$x5iWyjkfq9Ma10LsHLnaVl9TwO4;

    invoke-direct {v1, p0}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$x5iWyjkfq9Ma10LsHLnaVl9TwO4;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-object p0
.end method

.method public getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

    return-object p0
.end method

.method public getSelectedData()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/util/UserSelectData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public ismDrawGridWindow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mDrawGridWindow:Z

    return p0
.end method

.method public synthetic lambda$getLayoutForSelect$11$ComponentRunningDualVideo(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->lambda$getLayoutForSelect$11(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method

.method public printSelectData()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$d1yDAQVb68404yY70R0BF0YB59I;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$d1yDAQVb68404yY70R0BF0YB59I;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public reInit()V
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->initUserSelectionDataIfNeed()V

    return-void
.end method

.method public refreshSelectData()V
    .locals 5

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$cyh_BqgOthYhp3wJSCeejBO0iXQ;

    invoke-direct {v4, v2}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$cyh_BqgOthYhp3wJSCeejBO0iXQ;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLayoutForSelect()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$G2syg6yPKLqg7xbNLteiE4VbvCY;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$G2syg6yPKLqg7xbNLteiE4VbvCY;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Ti1UcDAT3lxUY4LZoDNY0r97CHU;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Ti1UcDAT3lxUY4LZoDNY0r97CHU;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$RgQF6wi9_nt96_get31f2-m0YV0;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$RgQF6wi9_nt96_get31f2-m0YV0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getGridLayoutTypeById(I)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Mp2IFVT6WHWkAr8T56yLThUsQWk;

    invoke-direct {v1, v0}, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Mp2IFVT6WHWkAr8T56yLThUsQWk;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecordType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComponentRunningDualVideo"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

    sget-object v0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo$1;->$SwitchMap$com$android$camera$dualvideo$recorder$RecordType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$jgmyT18V29jEyga8iriyR3DzWCU;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$jgmyT18V29jEyga8iriyR3DzWCU;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$TASg0z1qRuva2EQqtDNqthi1tzE;->INSTANCE:Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$TASg0z1qRuva2EQqtDNqthi1tzE;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public setmDrawGridWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mDrawGridWindow:Z

    return-void
.end method
