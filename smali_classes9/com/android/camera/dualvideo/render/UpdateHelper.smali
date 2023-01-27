.class Lcom/android/camera/dualvideo/render/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem(Lcom/android/camera/dualvideo/render/CameraItemManager;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateRenderableList(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateRenderableList(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->addCameraItem()V

    return-void
.end method

.method private static deleteItem(Lcom/android/camera/dualvideo/render/CameraItemManager;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/dualvideo/render/CameraItemManager;",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/CameraItemInterface;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$bZIQmOcdhGnZDY3RwMmgn7SPNws;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$bZIQmOcdhGnZDY3RwMmgn7SPNws;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->deleteCameraItem(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->deleteCameraItem(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$deleteItem$1(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$deleteItem$2(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$_91k_n3MEXlM__nTmRnj4zMbVh8;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$_91k_n3MEXlM__nTmRnj4zMbVh8;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateCameraItemList$0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method public static updateCameraItemList(Lcom/android/camera/dualvideo/render/CameraItemManager;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-static {p0, v0}, Lcom/android/camera/dualvideo/render/UpdateHelper;->deleteItem(Lcom/android/camera/dualvideo/render/CameraItemManager;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {p0}, Lcom/android/camera/dualvideo/render/UpdateHelper;->addItem(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->refreshSelectStatus()V

    sget-object p0, Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$5OqmY0gRAFNIQJaUlr22KPA2gvc;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$5OqmY0gRAFNIQJaUlr22KPA2gvc;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
