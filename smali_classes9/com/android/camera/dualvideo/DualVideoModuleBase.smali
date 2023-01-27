.class public Lcom/android/camera/dualvideo/DualVideoModuleBase;
.super Lcom/android/camera/module/VideoBase;
.source "DualVideoModuleBase.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;
.implements Lcom/android/camera/dualvideo/remote/AvailabilityCallback;
.implements Lcom/android/camera/dualvideo/remote/ConnectivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;
    }
.end annotation


# instance fields
.field private mCoverAnimNeed:Z

.field private volatile mCurrentTapId:I

.field private mDissmisBlurOneTime:Z

.field private final mFocusCallback:Lcom/android/camera2/Camera2Proxy$FocusCallback;

.field protected mKeepRecorderWhenSwitching:Z

.field protected mMainFrameIsAvailable:Z

.field private mMainFrameReady:Z

.field protected mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

.field protected mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

.field private mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

.field private mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

.field protected mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

.field private mSkipMainFrame:Z

.field private mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

.field private mSubFocusAreaSupported:Z

.field private mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

.field private mSubFrameReady:Z

.field private mSubMeteringAreaSupported:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoBase;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameReady:Z

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFrameReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCoverAnimNeed:Z

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSkipMainFrame:Z

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mDissmisBlurOneTime:Z

    new-instance p1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2egD2zNZjlCjAwf2teQH_o7OP8k;

    invoke-direct {p1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2egD2zNZjlCjAwf2teQH_o7OP8k;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mFocusCallback:Lcom/android/camera2/Camera2Proxy$FocusCallback;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getActionProcess()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$1lged46k8dd9LPDzGUN4RhmquHE;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$1lged46k8dd9LPDzGUN4RhmquHE;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/dualvideo/render/RenderTrigger;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFrameReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/module/loader/camera2/FocusManager2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/module/loader/camera2/FocusManager2;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addViewForGestureRecognize(Landroid/view/ViewGroup;)V
    .locals 2

    new-instance v0, Lcom/android/camera/dualvideo/view/TouchEventView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/view/TouchEventView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$AzLdEsR0NnH62i74DQETQbQEsp0;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$AzLdEsR0NnH62i74DQETQbQEsp0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/view/TouchEventView;->setListener(Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;)V

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyZoomForDevices(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1
    .param p1    # Lcom/android/camera2/Camera2Proxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$DIBSixEJrFpyeqQ1tSaPJYQJroE;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$DIBSixEJrFpyeqQ1tSaPJYQJroE;-><init>(Lcom/android/camera2/Camera2Proxy;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$6ZvTg5TMr5LxRpeuDlXKIP5HGao;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$6ZvTg5TMr5LxRpeuDlXKIP5HGao;-><init>(Lcom/android/camera2/Camera2Proxy;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getActionProcess()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getFocusManager(I)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/loader/camera2/FocusManager2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getMainContent()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getOperatingMode(Lcom/android/camera2/Camera2Proxy;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x8009

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportDualVideoOpMode()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x8010

    return p0

    :cond_1
    const p0, 0x8004

    return p0
.end method

.method private initDualVideoController()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1af

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;->getParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    new-instance v2, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$r-74QlR9Hf7Jy1zek0iGuL_w_8o;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$r-74QlR9Hf7Jy1zek0iGuL_w_8o;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initRenderTrigger()V
    .locals 3

    sget-boolean v0, Lcom/mi/config/Device;->IS_J10:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    new-instance v1, Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;-><init>(Landroid/opengl/GLSurfaceView;I)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    return-void
.end method

.method static synthetic lambda$addOrDelRemoteConfig$39(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
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

.method static synthetic lambda$addViewForGestureRecognize$23(Landroid/view/MotionEvent;Lcom/android/camera/dualvideo/render/RenderManager;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/render/RenderManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addViewForGestureRecognize$24(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Q1z3e2r4WEiepfHY0u38PwM40bM;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Q1z3e2r4WEiepfHY0u38PwM40bM;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$applyZoomForDevices$28(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getCameraId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$applyZoomForDevices$29(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
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

.method static synthetic lambda$applyZoomForDevices$30(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 1

    iget v0, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mPresentZoom:F

    iget p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mRelativeZoom:F

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setZoomRatio(F)V

    return-void
.end method

.method static synthetic lambda$applyZoomForDevices$31(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$vpxTMbitJAwsXMCDBasLCSpxVAY;

    invoke-direct {v1, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$vpxTMbitJAwsXMCDBasLCSpxVAY;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$bwbkrU8L3_7TFHXLGXwWWUMG0BM;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$bwbkrU8L3_7TFHXLGXwWWUMG0BM;-><init>(Lcom/android/camera2/Camera2Proxy;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$hasRemoteCamera$47(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
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

.method private synthetic lambda$initDualVideoController$22(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addViewForGestureRecognize(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms focused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " waitForRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusingSnapOnFinish()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$3x5A17Ba5WJL_K10uWQeF8JjXq8;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$3x5A17Ba5WJL_K10uWQeF8JjXq8;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$2(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showCameraPicker(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic lambda$onAvailabilityStateChanged$42(Lcom/android/camera/dualvideo/remote/RemoteDevice;Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailabilityStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method

.method static synthetic lambda$onCameraOpened$15([ILcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setMtkPipDevices([I)V

    return-void
.end method

.method static synthetic lambda$onCameraOpened$16(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onConnectivityStateChanged$43(Lcom/android/camera/dualvideo/remote/RemoteDevice;Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method

.method static synthetic lambda$onConnectivityStateChanged$44(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_streaming"

    const-string/jumbo v1, "start"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onConnectivityStateChanged$45(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->REMOTE_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/dualvideo/render/RenderManager;->genOrUpdateRenderSource(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lio/reactivex/CompletableEmitter;)Landroid/view/Surface;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startStreaming(Ljava/lang/String;Landroid/view/Surface;)V

    return-void
.end method

.method private synthetic lambda$onConnectivityStateChanged$46()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchRenderRemoteItem()V

    return-void
.end method

.method static synthetic lambda$onDeparted$3(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showCameraPicker(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onDeparted$4(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$6B9CjHeM_umIKPGwk2X7i7bn8XI;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$6B9CjHeM_umIKPGwk2X7i7bn8XI;-><init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onSingleTapUp$17(Lcom/android/camera/dualvideo/render/LayoutType;Landroid/graphics/Point;ZLcom/android/camera/module/loader/camera2/FocusManager2;)V
    .locals 3

    invoke-virtual {p4, p1}, Lcom/android/camera/FocusManagerAbstract;->setRenderComposeType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is main camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", type = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p2, Landroid/graphics/Point;->x:I

    iget p1, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, p0, p1, p3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onSingleTapUp(IIZ)V

    return-void
.end method

.method static synthetic lambda$reStartCurrentModule$40(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->enableDrawBlur(Z)V

    return-void
.end method

.method private synthetic lambda$registerRenderManager$10(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->setOrientation(I)V

    return-void
.end method

.method private synthetic lambda$registerRenderManager$8(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->setListener(Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;)V

    return-void
.end method

.method private synthetic lambda$registerRenderManager$9(Lio/reactivex/SingleEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$requestRender$25(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSkipMainFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSkipMainFrame:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->isDrawBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mDissmisBlurOneTime:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->updateTextureId()V

    invoke-virtual {p1, v1}, Lcom/android/camera/dualvideo/render/RenderManager;->enableDrawBlur(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mDissmisBlurOneTime:Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$resetEvValue$21(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setExposureCompensation(I)V

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    return-void
.end method

.method static synthetic lambda$setEvValue$19(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    return-void
.end method

.method private synthetic lambda$setEvValue$20(Lcom/android/camera2/Camera2Proxy;)V
    .locals 4

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mEvState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mEvValue:I

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setExposureCompensation(I)V

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mEvState:I

    if-ne v0, v2, :cond_3

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mEvValue:I

    if-eqz p0, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    return-void
.end method

.method static synthetic lambda$setFlashMode$6(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/high16 v0, 0x42160000    # 37.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->setTopOffset(I)V

    return-void
.end method

.method static synthetic lambda$setFlashMode$7(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->setTopOffset(I)V

    return-void
.end method

.method private synthetic lambda$setOrientationParameter$5(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/render/RenderManager;->setOrientation(I)V

    return-void
.end method

.method static synthetic lambda$showModeSwitchLayout$11(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->switchModeOrExternalTipLayout(Z)V

    return-void
.end method

.method private synthetic lambda$showModeSwitchLayout$12(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$WYvBz8pdGWMj6XQiz61zVWXxB0U;

    invoke-direct {v0, p2, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$WYvBz8pdGWMj6XQiz61zVWXxB0U;-><init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$showOrHideBottom$26(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideBottom(Z)V

    return-void
.end method

.method static synthetic lambda$startPreviewSession$35(Lcom/android/camera/dualvideo/render/RenderManager;)Landroid/view/Surface;
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {}, Lcom/android/camera/dualvideo/render/RenderUtil;->getSubPreviewSize()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/dualvideo/render/RenderManager;->genOrUpdateRenderSource(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lio/reactivex/CompletableEmitter;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$startPreviewSession$36(Lcom/android/camera2/Camera2Proxy;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ZhpTFMRYRln-7CBLCF2aSfQfDX0;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ZhpTFMRYRln-7CBLCF2aSfQfDX0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getOperatingMode(Lcom/android/camera2/Camera2Proxy;)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera2/Camera2Proxy;->startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method private synthetic lambda$switchRemoteCamera$37(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->REMOTE_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/dualvideo/render/RenderManager;->genOrUpdateRenderSource(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lio/reactivex/CompletableEmitter;)Landroid/view/Surface;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startStreaming(Ljava/lang/String;Landroid/view/Surface;)V

    return-void
.end method

.method private synthetic lambda$switchRemoteCamera$38()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchRenderRemoteItem()V

    return-void
.end method

.method static synthetic lambda$switchThumbnailFunction$13(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->switchThumbnailFunction(Z)V

    return-void
.end method

.method private synthetic lambda$switchThumbnailFunction$14(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lWX2O_Cjeji9rMCyPxkpW9UbibI;

    invoke-direct {v0, p2, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lWX2O_Cjeji9rMCyPxkpW9UbibI;-><init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryAnimBlackCover$41()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getTopAlert()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$1d587yagZaXqzfqDgxqu4BwHCxI;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$1d587yagZaXqzfqDgxqu4BwHCxI;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getMainContent()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$mP78pgx0Egh7Et9dRPeeABdcn74;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$mP78pgx0Egh7Et9dRPeeABdcn74;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$uaBG5J4YOpIzxy9RddxvkEcUcdI(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->applyZoomForDevices(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method private synthetic lambda$unlockAEAF$18(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    return-void
.end method

.method private synthetic lambda$updateBeauty$32(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateFpsRange$34(Landroid/util/Range;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    return-void
.end method

.method private synthetic lambda$updateModuleRelated$33(Lcom/android/camera2/Camera2Proxy;)V
    .locals 2

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/camera2/Camera2Proxy;->setModuleParameter(II)V

    return-void
.end method

.method private synthetic lambda$updateSubCameraFocusMode$27(ILcom/android/camera2/Camera2Proxy;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFocusModes()[I

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSubCameraFocusMode: focusMode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but device is null..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerRecorderManager()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ad

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    return-void
.end method

.method private registerRemoteService()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RemoteOnlineProtocol;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    return-void
.end method

.method private registerRenderManager()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ae

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;->getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$7PlRRj--TZw_0XJlljD7rn7o1MQ;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$7PlRRj--TZw_0XJlljD7rn7o1MQ;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$TpnejjPIcBgIg8cRo5IM41qYung;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$TpnejjPIcBgIg8cRo5IM41qYung;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_Vwz5SPgLJrbkQQVJKOeNRnZUao;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_Vwz5SPgLJrbkQQVJKOeNRnZUao;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    return-void
.end method

.method private showSetupWizard()V
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isRemoteOnlineSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$3O9Xvz1V8jwaYVTJ3d12FX_FMlE;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$3O9Xvz1V8jwaYVTJ3d12FX_FMlE;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_3
    :goto_0
    sget-object v0, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private startMainPreviewSession()V
    .locals 10

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreviewSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getOperatingMode(Lcom/android/camera2/Camera2Proxy;)I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocused()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return-void
.end method

.method private startPreviewSession()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->startMainPreviewSession()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->initDualVideoController()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$rg7BHOyjk_LskANZKKYs4aCuPs0;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$rg7BHOyjk_LskANZKKYs4aCuPs0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateFpsRange()V
    .locals 2

    sget-boolean v0, Lcom/mi/config/Device;->IS_J10:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/Device;->IS_K9:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$PBTPi0Obi0r3NKiQ3VBqQ3OIrio;

    invoke-direct {v1, v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$PBTPi0Obi0r3NKiQ3VBqQ3OIrio;-><init>(Landroid/util/Range;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateRemoteCameraTopIcon()V
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isRemoteOnlineSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x200

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    return-void
.end method

.method private updateSubCameraFocusMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$oWFGM0C7FKAHFwKAYYYa08XrTks;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$oWFGM0C7FKAHFwKAYYYa08XrTks;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method protected addOrDelRemoteConfig(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_7MSc8XfsaKQoXGu-VnEdpahAuU;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_7MSc8XfsaKQoXGu-VnEdpahAuU;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    const/16 v0, 0x3e8

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    const-string v1, "remote"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->addExternalConfig(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->removeExternalConfig(I)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "addOrDelRemoteConfig: miss match info!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    :cond_2
    return-void
.end method

.method protected applyZoomRatio()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomRatio:F

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->applyZoomRatio(F)V

    return-void
.end method

.method protected applyZoomRatio(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->applyZoomRatio(F)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->applyZoomForDevices(Lcom/android/camera2/Camera2Proxy;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$uaBG5J4YOpIzxy9RddxvkEcUcdI;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$uaBG5J4YOpIzxy9RddxvkEcUcdI;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public cancelFocus(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, "cancelFocus: frame not available"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->cancelFocus(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFocus: sub camera resetFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateSubCameraFocusMode(I)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->cancelFocus(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p1

    if-eq p1, v0, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected varargs consumePreference([I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_9

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/16 v4, 0x13

    if-eq v3, v4, :cond_6

    const/16 v4, 0x18

    if-eq v3, v4, :cond_5

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_4

    const/16 v4, 0x37

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoFocusMode()V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateBeauty()V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->setEvValue()V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateFlashPreference()V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isAndroidOne()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "0"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateModuleRelated()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateVideoStabilization()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->applyZoomRatio()V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateFpsRange()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updatePictureAndPreviewSize()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected forceTrackLayoutType(Z)V
    .locals 0

    return-void
.end method

.method protected getOperatingMode()I
    .locals 0

    const p0, 0x8004

    return p0
.end method

.method protected getRenderManager()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/dualvideo/render/RenderManager;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method protected getSubCamera2Device()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera2/Camera2Proxy;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected getTopAlert()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/ModeProtocol$TopAlert;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method protected handleBackStack()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected hasRemoteCamera()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YMoNG2lBYN9mVJjSpxQoP1JRMOA;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YMoNG2lBYN9mVJjSpxQoP1JRMOA;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method protected initializeFocusManager()V
    .locals 8

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    new-instance v7, Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSupportAFSaliency()Z

    move-result v6

    move-object v1, v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager2;-><init>(Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;ZLandroid/os/Looper;Z)V

    iput-object v7, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->BACK_PREVIEW:Landroid/util/Size;

    :goto_0
    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setPreviewSize(II)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mFocusCallback:Lcom/android/camera2/Camera2Proxy$FocusCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isAFRegionSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusAreaSupported:Z

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isAERegionSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubMeteringAreaSupported:Z

    return-void
.end method

.method protected isMultiCameraMode()Z
    .locals 0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDualVideoCameraChoose()Z

    move-result p0

    return p0
.end method

.method protected isNeedMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecordingPaused()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isRenderAnimating()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$5zBNWwMphz3QK4UOZyeVQ889xZ4;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$5zBNWwMphz3QK4UOZyeVQ889xZ4;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isZoomEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$Cg6bItxWlgcRCsQKqSnpAHFqoF8;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$Cg6bItxWlgcRCsQKqSnpAHFqoF8;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected judgeTapableRectByUiStyle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$addViewForGestureRecognize$24$DualVideoModuleBase(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$addViewForGestureRecognize$24(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$initDualVideoController$22$DualVideoModuleBase(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$initDualVideoController$22(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public synthetic lambda$new$1$DualVideoModuleBase(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$new$1(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void
.end method

.method public synthetic lambda$onConnectivityStateChanged$45$DualVideoModuleBase(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onConnectivityStateChanged$45(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method public synthetic lambda$onConnectivityStateChanged$46$DualVideoModuleBase()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onConnectivityStateChanged$46()V

    return-void
.end method

.method public synthetic lambda$onDeparted$4$DualVideoModuleBase(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onDeparted$4(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method

.method public synthetic lambda$onSingleTapUp$17$DualVideoModuleBase(Lcom/android/camera/dualvideo/render/LayoutType;Landroid/graphics/Point;ZLcom/android/camera/module/loader/camera2/FocusManager2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onSingleTapUp$17(Lcom/android/camera/dualvideo/render/LayoutType;Landroid/graphics/Point;ZLcom/android/camera/module/loader/camera2/FocusManager2;)V

    return-void
.end method

.method public synthetic lambda$registerRenderManager$10$DualVideoModuleBase(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$registerRenderManager$10(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$registerRenderManager$8$DualVideoModuleBase(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$registerRenderManager$8(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method

.method public synthetic lambda$registerRenderManager$9$DualVideoModuleBase(Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$registerRenderManager$9(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public synthetic lambda$requestRender$25$DualVideoModuleBase(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$requestRender$25(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method

.method public synthetic lambda$setEvValue$20$DualVideoModuleBase(Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$setEvValue$20(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public synthetic lambda$setOrientationParameter$5$DualVideoModuleBase(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$setOrientationParameter$5(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method

.method public synthetic lambda$showModeSwitchLayout$12$DualVideoModuleBase(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$showModeSwitchLayout$12(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method

.method public synthetic lambda$startPreviewSession$36$DualVideoModuleBase(Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$startPreviewSession$36(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public synthetic lambda$switchRemoteCamera$37$DualVideoModuleBase(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$switchRemoteCamera$37(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method public synthetic lambda$switchRemoteCamera$38$DualVideoModuleBase()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$switchRemoteCamera$38()V

    return-void
.end method

.method public synthetic lambda$switchThumbnailFunction$14$DualVideoModuleBase(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$switchThumbnailFunction$14(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method

.method public synthetic lambda$tryAnimBlackCover$41$DualVideoModuleBase()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$tryAnimBlackCover$41()V

    return-void
.end method

.method public synthetic lambda$unlockAEAF$18$DualVideoModuleBase(Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$unlockAEAF$18(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public synthetic lambda$updateBeauty$32$DualVideoModuleBase(Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$updateBeauty$32(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public synthetic lambda$updateModuleRelated$33$DualVideoModuleBase(Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$updateModuleRelated$33(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public synthetic lambda$updateSubCameraFocusMode$27$DualVideoModuleBase(ILcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$updateSubCameraFocusMode$27(ILcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public notifyFocusAreaUpdate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->notifyFocusAreaUpdate(Z)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateFocusArea: sub camera device is null!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomRatio:F

    invoke-static {v0, p1}, Lcom/android/camera/HybridZoomingSystem;->toCropRegionConsiderZoomRatio(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v2, v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v2, v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    iget-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusAreaSupported:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v2, v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->getFocusAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/camera2/Camera2Proxy;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusAreaSupported:Z

    if-eqz v0, :cond_6

    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_7
    :goto_1
    return-void
.end method

.method protected notifyLayoutTypeToRemoteDevice(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setLayoutType(I)V

    :cond_0
    return-void
.end method

.method protected notifyRecordingStateToRemoteDevice(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setRecordingState(I)V

    :cond_0
    return-void
.end method

.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 1
    .param p1    # Lcom/android/camera/dualvideo/remote/RemoteDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$00PBFfa04uKkKjhiHYhmz-OZEAo;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$00PBFfa04uKkKjhiHYhmz-OZEAo;-><init>(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method protected onCameraOpened()V
    .locals 4

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$jaO-2G28EvnnNin3NiRM_X7CYGs;

    invoke-direct {v2, v1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$jaO-2G28EvnnNin3NiRM_X7CYGs;-><init>([I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setMtkPipDevices([I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$txpi-dTibNXGRmSyMp6Sf40BnCE;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$txpi-dTibNXGRmSyMp6Sf40BnCE;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateBeauty()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->initializeFocusManager()V

    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onCameraOpened()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->startPreviewSession()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 4
    .param p1    # Lcom/android/camera/dualvideo/remote/RemoteDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2iv9nerKYTycFzBtXY241JMP_SY;

    invoke-direct {v2, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2iv9nerKYTycFzBtXY241JMP_SY;-><init>(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isConnectionSuspended()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopStreaming"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget p1, p1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    if-ne p1, v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$E0-ut_l6lm1rlYYqlJutol19cmE;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$E0-ut_l6lm1rlYYqlJutol19cmE;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->stopStreaming()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->releaseRemote()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateRemoteCameraTopIcon()V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteDevice;->getUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startStreaming"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$GJ-BkFwafKycER7ieDmnso57C7I;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$GJ-BkFwafKycER7ieDmnso57C7I;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Ze0MPhjOKhHAdaMTrg3icfdMA0U;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Ze0MPhjOKhHAdaMTrg3icfdMA0U;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$WWxFPevS7aFFAWgF99G4Pr8E6o8;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$WWxFPevS7aFFAWgF99G4Pr8E6o8;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void

    :cond_6
    :goto_2
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectivityStateChanged: suspended: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(II)V
    .locals 5

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->initRenderTrigger()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enumerating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    sget-object v4, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iput-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->registerRenderManager()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->registerRecorderManager()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->registerRemoteService()V

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    const-string p1, "continuous-video"

    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->onCameraOpened()V

    return-void
.end method

.method protected onDeparted()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDeparted()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getActionProcess()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lkJmAXKusvOv4_hOy07RqVhFoYY;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$lkJmAXKusvOv4_hOy07RqVhFoYY;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onHostStopAndNotifyActionStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mKeepRecorderWhenSwitching:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onHostStopAndNotifyActionStop()V

    return-void
.end method

.method public onLongPress(FF)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/VideoBase;->onOrientationChanged(III)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/camera/dualvideo/view/RotateAnimator;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1af

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;->getParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/camera/dualvideo/-$$Lambda$lB3j2s7bvx4st_lyLjcVpOAEORg;

    invoke-direct {v2, v0}, Lcom/android/camera/dualvideo/-$$Lambda$lB3j2s7bvx4st_lyLjcVpOAEORg;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/view/RotateAnimator;->clear()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onPause()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->release()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setAvailabilityCallback(Lcom/android/camera/dualvideo/remote/AvailabilityCallback;)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectivityCallback(Lcom/android/camera/dualvideo/remote/ConnectivityCallback;)V

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateSubCameraFocusMode(I)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/-$$Lambda$1vgdmqWTUjQx4_Rq6wIWtJMxWlA;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$1vgdmqWTUjQx4_Rq6wIWtJMxWlA;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    :goto_0
    return-void
.end method

.method protected onPreviewStart()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onResume()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->registerRenderManager()V

    new-instance v0, Lcom/android/camera/dualvideo/view/RotateAnimator;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    rsub-int v1, v1, 0x168

    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/view/RotateAnimator;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setAvailabilityCallback(Lcom/android/camera/dualvideo/remote/AvailabilityCallback;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectivityCallback(Lcom/android/camera/dualvideo/remote/ConnectivityCallback;)V

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isPreviewReady()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRenderAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/dualvideo/render/RenderManager;->getRenderComposeTypeByPosition(FF)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne v0, v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->unlockAEAF()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/dualvideo/render/RenderManager;->getIdByPosition(FF)I

    move-result p1

    iput p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getFocusManager(I)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Mtc9IenR36mBiAM4OdmOVK7s8t0;

    invoke-direct {p2, p0, v0, v3, p3}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Mtc9IenR36mBiAM4OdmOVK7s8t0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera/dualvideo/render/LayoutType;Landroid/graphics/Point;Z)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public pausePreview()V
    .locals 0

    return-void
.end method

.method protected reStartCurrentModule()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchSelecteWindowToRecord: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRenderAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$TKeNnC-TPDXDi5D-A2hCB7RHTgI;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$TKeNnC-TPDXDi5D-A2hCB7RHTgI;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$3nRYeveaxbyq4X41SymHKY-AC3Y;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$3nRYeveaxbyq4X41SymHKY-AC3Y;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void

    :array_0
    .array-data 4
        0xa4
        0xae
        0xea
        0xd4
    .end array-data
.end method

.method protected releaseRemote()V
    .locals 0

    return-void
.end method

.method public requestRender()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->mainFrameAvailable()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$cZ8dUtfZY6h-jm86gLaKYu90vAA;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$cZ8dUtfZY6h-jm86gLaKYu90vAA;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameReady:Z

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->tryAnimBlackCover()V

    return-void
.end method

.method public resetEvValue()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->resetEvValue()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YIA-jQclfzjWlNvnBcE5vKGcdxQ;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YIA-jQclfzjWlNvnBcE5vKGcdxQ;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected resetFocusState(D)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoBase;->resetFocusState(D)V

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetFocusState: isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNeedCancelAutoFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onDeviceKeepMoving(D)V

    :cond_1
    return-void
.end method

.method public resumePreview()V
    .locals 0

    return-void
.end method

.method protected setEvValue()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2QMWljI5FP3ZAqr8JaOungYavvQ;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2QMWljI5FP3ZAqr8JaOungYavvQ;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$F-ogtLHXQoh2KKUscLCVIQB6yGU;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$F-ogtLHXQoh2KKUscLCVIQB6yGU;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method protected setFlashMode(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$5C3prhzUdn9x6-l-NnV7LcbHuuU;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$5C3prhzUdn9x6-l-NnV7LcbHuuU;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$b-zxIFqHCPLsU8liVk71mlKiUDM;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$b-zxIFqHCPLsU8liVk71mlKiUDM;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->setFrameAvailable(Z)V

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    return-void
.end method

.method protected setOrientationParameter()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->setOrientationParameter()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$0QcIyrLmzCqapI41bYXl-qOQc5Q;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$0QcIyrLmzCqapI41bYXl-qOQc5Q;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected showModeSwitchLayout(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getActionProcess()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_JsujUXljQex3ltQX83C3ViWOEU;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_JsujUXljQex3ltQX83C3ViWOEU;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected showOrHideBottom(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getActionProcess()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Bjh_NcJRrNzqMUbR-J9gZFIHTqg;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$Bjh_NcJRrNzqMUbR-J9gZFIHTqg;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startFocus()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "cancelFocus: frame not available"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->startFocus()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFocus: sub camera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mFocusCallback:Lcom/android/camera2/Camera2Proxy$FocusCallback;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/FocusTask;->create(I)Lcom/android/camera/module/loader/camera2/FocusTask;

    move-result-object v1

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera2/Camera2Proxy;->startFocus(Lcom/android/camera/module/loader/camera2/FocusTask;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 0

    return-void
.end method

.method public switchRemoteCamera()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result v0

    const-string v1, "attr_rol_suw_menu"

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v2, "cam.rcs.debug.streaming_url"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startStreaming"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ipUQmBOsvc7QBiba2SEg3lqhTRY;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ipUQmBOsvc7QBiba2SEg3lqhTRY;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$QRsQrKNo0cOHZA3Dld3Ug4Z6-ik;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$QRsQrKNo0cOHZA3Dld3Ug4Z6-ik;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    const-string v0, "open"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showSetupWizard()V

    goto :goto_0

    :cond_2
    const-string v0, "close"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v0, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected switchRenderRemoteItem()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateRemoteCameraTopIcon()V

    return-void
.end method

.method protected switchThumbnailFunction(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getActionProcess()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$sZckzfUttqhK688o32SzJNRtOPw;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$sZckzfUttqhK688o32SzJNRtOPw;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method declared-synchronized tryAnimBlackCover()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFrameReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCoverAnimNeed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCoverAnimNeed:Z

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$0QAndEGg4p8mMwoGHe4lGrvrU8k;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$0QAndEGg4p8mMwoGHe4lGrvrU8k;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$61sBsBdkRQvxKbIsm9uGA88qYvU;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$61sBsBdkRQvxKbIsm9uGA88qYvU;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method protected unlockAEAF()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$IS5g4BjX2NT84Y_MmRWJPklRf28;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$IS5g4BjX2NT84Y_MmRWJPklRf28;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected updateAntiBanding(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getAntiBanding()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setAntiBanding(I)V

    :cond_0
    return-void
.end method

.method protected updateBeauty()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/16 v1, 0x28

    iput v1, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    iput v1, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ZB6dQisjFN22HOCwbsQ-GuPve5w;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$ZB6dQisjFN22HOCwbsQ-GuPve5w;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method protected updateModuleRelated()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$zZ0iA0Ay3cjAJYH-S7pqvpMdTLM;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$zZ0iA0Ay3cjAJYH-S7pqvpMdTLM;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected updatePictureAndPreviewSize()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    const/16 v1, 0x780

    const/16 v2, 0x438

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/mi/config/Device;->IS_K9:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->getUIStyle()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v3, 0x5a0

    invoke-direct {v0, v3, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v0, v3, v4}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    :goto_2
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method protected updateVideoStabilization()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "videoStabilization: EIS"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "videoStabilization: OIS"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    :cond_2
    :goto_0
    return-void
.end method
