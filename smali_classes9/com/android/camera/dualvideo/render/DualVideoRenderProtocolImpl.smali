.class public Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;
.super Ljava/lang/Object;
.source "DualVideoRenderProtocolImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;


# static fields
.field private static final TAG:Ljava/lang/String; = "DualVideoRenderProtocol"


# instance fields
.field private final mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/RenderManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->setResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic lambda$restoreData$0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private restoreData()V
    .locals 1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$DualVideoRenderProtocolImpl$k1hanVE0UFir0YzoYSshPCnzeLY;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$DualVideoRenderProtocolImpl$k1hanVE0UFir0YzoYSshPCnzeLY;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->removeExternalConfig(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->refreshSelectData()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    return-object p0
.end method

.method public registerProtocol()V
    .locals 2

    const-string v0, "DualVideoRenderProtocol"

    const-string v1, "registerProtocol: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const-string v0, "DualVideoRenderProtocol"

    const-string/jumbo v1, "unRegisterProtocol: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDualVideoCameraChoose()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderManager;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;->restoreData()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
