.class Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;
.super Ljava/lang/Object;
.source "DualVideoModuleBase.java"

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/DualVideoModuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyDualVideoRenderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLayoutTypeChanged$0(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->hasMiniComposeType()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onSwitchClicked$1(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onSwitchClicked$2(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method static synthetic lambda$onSwitchClicked$3(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

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

.method static synthetic lambda$onSwitchClicked$4(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method static synthetic lambda$onSwitchClicked$5(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onLayoutTypeChanged$0$DualVideoModuleBase$MyDualVideoRenderListener(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->lambda$onLayoutTypeChanged$0(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method

.method public onAuxSourceImageAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$000(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/dualvideo/render/RenderTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->subFrameAvailable()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$102(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)Z

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->tryAnimBlackCover()V

    return-void
.end method

.method public onLayoutTypeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$bpxSds58-c8i1YGcpZohQPMB0_Q;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$bpxSds58-c8i1YGcpZohQPMB0_Q;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$200(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-static {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$300(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/module/loader/camera2/FocusManager2;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetTouchFocus(I)V

    :cond_0
    return-void
.end method

.method public onRenderRequestNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    return-void
.end method

.method public onSwitchClicked()V
    .locals 5

    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSwitchClicked: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$I3hnnzBNKGbCWl5O2CFR5kFXblU;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$I3hnnzBNKGbCWl5O2CFR5kFXblU;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$l9nabCJS2RHMklfTC-uKaPnzYZQ;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$l9nabCJS2RHMklfTC-uKaPnzYZQ;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$wakTkvDULuH4Q8PscsTzHktbMEU;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$wakTkvDULuH4Q8PscsTzHktbMEU;

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    sget-object v4, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$JCL3T7IJDlwEqIDQ4wcaAGwtqWM;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$JCL3T7IJDlwEqIDQ4wcaAGwtqWM;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v3, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$-pm-QAjFgT6qjYNa8DcbI9__C0U;

    invoke-direct {v3, v2, v1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$-pm-QAjFgT6qjYNa8DcbI9__C0U;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$aviQCzwC9bYZA2MIr4aCz4vsZCI;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$aviQCzwC9bYZA2MIr4aCz4vsZCI;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->this$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->reStartCurrentModule()V

    return-void
.end method
