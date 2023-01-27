.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;
.implements Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;
.implements Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$CameraRunnable;,
        Lcom/android/camera/Camera$HibernateRunnable;,
        Lcom/android/camera/Camera$LogThread;,
        Lcom/android/camera/Camera$WatchDogThread;,
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$AdjBoostCallable;,
        Lcom/android/camera/Camera$ScreenSlideObserver;
    }
.end annotation


# static fields
.field private static final DIALOG_FRAGMENT_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERMISSION_REQUEST_CODE:I = 0x1

.field private static final PERMISSION_RESULT_CODE:I = 0x904

.field private static final REPEAT_KEY_EVENT_GAP:I = 0xfa


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

.field private mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

.field private mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

.field private mCameraOpenResult:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mCameraSetupConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

.field private mCurrentTempStage:I

.field private mDebugThread:Lcom/android/camera/Camera$LogThread;

.field private mDelayReleaseCamera:Z

.field private mDidRegister:Z

.field private mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

.field private mFirstOrientationArrived:Z

.field private mGalleryMessenger:Landroid/os/Messenger;

.field private mHasBeenSetupOnFocusChanged:Z

.field private mHasFocus:Z

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

.field private volatile mIntentPhotoDone:Z

.field private mIsGalleryServiceBound:Z

.field private mIsInRequestRuntimePermission:Z

.field private mIsLunchFromAutoTest:Z

.field private mIsModeSwitched:Z

.field private mIsScreenSlideOff:Z

.field private mLastIgnoreKey:I

.field private mLastKeyDownEventTime:J

.field private mLastKeyUpEventTime:J

.field private mLensApi:Lcom/google/lens/sdk/LensApi;

.field private mLockStreamOrientation:Z

.field private mLplDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

.field private mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

.field private mMoreModePopupController:Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

.field private mNeedReUpdateThermal:Z

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

.field private mRemoteControlConnected:Z

.field private mRemoteDeviceId:I

.field private mSDReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenSlideStatusObserver:Lcom/android/camera/Camera$ScreenSlideObserver;

.field private mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mStartControl:Lcom/android/camera/module/loader/StartControl;

.field private mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

.field private mSupportOrientation:Z

.field private mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

.field private volatile mTick:I

.field private mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field private mWatchDog:Ljava/lang/Thread;

.field private newbieDialogFragmentTag:Ljava/lang/String;

.field private final tickerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Camera;->DIALOG_FRAGMENT_TAGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    new-instance v2, Lcom/android/camera/Camera$1;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsGalleryServiceBound:Z

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsInRequestRuntimePermission:Z

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIsLunchFromAutoTest:Z

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z

    iput v0, p0, Lcom/android/camera/Camera;->mCurrentTempStage:I

    new-instance v4, Lcom/android/camera/-$$Lambda$Camera$4gzn2FxE59icNayf4A1cxcE9oL0;

    invoke-direct {v4, p0}, Lcom/android/camera/-$$Lambda$Camera$4gzn2FxE59icNayf4A1cxcE9oL0;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    new-instance v4, Lcom/android/camera/Camera$2;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mCameraSetupConsumer:Lio/reactivex/functions/Consumer;

    new-instance v4, Lcom/android/camera/-$$Lambda$Camera$zp575Zv6XODVjNjM9PbFyf5bJ5A;

    invoke-direct {v4, p0}, Lcom/android/camera/-$$Lambda$Camera$zp575Zv6XODVjNjM9PbFyf5bJ5A;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mCameraOpenResult:Lio/reactivex/functions/BiFunction;

    new-instance v4, Lcom/android/camera/Camera$4;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v4, Lcom/android/camera/Camera$6;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/camera/Camera$7;

    invoke-direct {v4, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    iput-object v4, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mLockStreamOrientation:Z

    iput-object v2, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    iput v0, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    iput-object v2, p0, Lcom/android/camera/Camera;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Camera;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/Camera;->mTick:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/Camera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/Camera;->mTick:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/Camera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->showCameraError(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)Lcom/android/camera/fragment/BaseFragmentDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/camera/Camera;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/camera/Camera;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/Camera;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/Camera;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/Camera;->mFirstOrientationArrived:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/camera/Camera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mFirstOrientationArrived:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Camera;->onDisplayRotationChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;)Lcom/android/camera/CommonRotationLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    return-object p0
.end method

.method private bindServices()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsGalleryServiceBound:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "bindServices error."

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private boostParallelServiceAdj()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->adjBoost()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isPendingSave()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->adjBoost()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    instance-of v1, v0, Lcom/android/camera/module/VideoModule;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->is4KCamcorder()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast p0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is8KCamcorder()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->adjBoost()V

    return-void

    :cond_6
    new-instance p0, Lcom/android/camera/Camera$AdjBoostCallable;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera$AdjBoostCallable;-><init>(Lcom/android/camera/Camera$1;)V

    invoke-static {p0}, Lcom/xiaomi/camera/device/CameraService;->addStickyCameraCallable(Lcom/xiaomi/camera/device/callable/CameraCallable;)V

    return-void
.end method

.method private closeCameraSetup()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "closeCameraSetup: CameraPendingSetupDisposable: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "closeCameraSetup: CameraSetupDisposable: X"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private createNewModule(Lcom/android/camera/module/loader/StartControl;)Lcom/android/camera/module/Module;
    .locals 2

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/module/ModuleManager;->getModuleByIndex(Lcom/android/camera/module/loader/StartControl;Ljava/lang/String;)Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/camera/module/Module;->setActivity(Lcom/android/camera/Camera;)V

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V

    iget p1, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    iget p0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-interface {v0, p1, p0}, Lcom/android/camera/module/Module;->preTransferOrientation(II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid module index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dismissDialogFragment(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    const-class p1, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private hideHibernationFragment()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "Hibernation"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->modeChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "Touch event intercept caz mode change."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreModePopupController:Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa01

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMoreModePopupController:Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreModePopupController:Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xac

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object v0, p0, Lcom/android/camera/Camera;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa6

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mMainContentProtocolForDispatchTouch:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isSplitFocusExposureDown()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_9

    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->isLongPressedRecording()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v3, 0x106

    if-ne v0, v3, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/camera/module/Camera2Module;->onSingleTapUp(IIZ)V

    :cond_9
    return v2
.end method

.method private isFromKeyguard()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isFromOneShotKeyPressed(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    const-wide/16 v4, 0xfa

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    iget-wide v1, p0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    iget-wide v3, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFromOneShotKeyPressed: lastUpTIme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " | eventTime "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " isKeyEventOrderWrong: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isScreenOn()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isStreamingRequested(Landroid/content/Intent;)Z
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isStreamingSupported()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isLaunchByMiWatch(Landroid/content/Intent;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCastIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static synthetic lambda$EFw8ZaQKS2ZE-6I33zQ5SjBrgdw(Lcom/android/camera/Camera;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->dismissDialogFragment(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$hideLensDirtyDetectedHint$6()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "LensDirtyDetectDialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLunchFromAutoTest:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentTempStage:I

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onThermalNotification(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/camera/module/loader/NullHolder;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lcom/android/camera/module/loader/NullHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->getResult()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraOpenResult apply: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2Result;->getCameraError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->showCameraError(I)V

    :goto_0
    return-object p1
.end method

.method private synthetic lambda$onCreate$2(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLensAvailability callback: status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setGoogleLensAvailability(Z)V

    return-void
.end method

.method private synthetic lambda$resumeCurrentMode$3(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "cameraSingle: EXCEPTION_CAMERA_OPEN_CANCEL"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xe1

    invoke-static {v0, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private synthetic lambda$showGuide$5(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "pref_lpl_selector_use_hint_shown"

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->showLplSelectDialog()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startLensActivity$4(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startLensActivity: launch success ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDisplayRotationChanged()V
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isFrontCameraAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "RotateHint"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->animateOut(I)V

    :cond_1
    return-void
.end method

.method private parseLocationPermission([Ljava/lang/String;[I)V
    .locals 2

    invoke-static {p1}, Lcom/android/camera/permission/PermissionManager;->isContainLocationPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p1

    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult: is location granted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result p0

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_0
    return-void
.end method

.method private prefixCamera2Setup()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v8

    new-instance v0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/CameraScreenNail;Landroid/content/Intent;IZZ)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final registerReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.xiaomi.camera.AUX_CONTROL"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    return-void
.end method

.method private registerSDReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseAll(ZIZZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAll: releaseDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCurrentModuleAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", releaseImmediate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFinishing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/module/Module;->setDeparted()V

    :cond_0
    new-instance p1, Lcom/android/camera/Camera$CameraRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p3, p4}, Lcom/android/camera/Camera$CameraRunnable;-><init>(Ljava/lang/ref/WeakReference;ZZ)V

    sget-object p3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, v0, v1, p2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    iget-object p0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    return-void
.end method

.method private resumeCamera(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "resumeCamera: E"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v2

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v2

    if-ne v2, v11, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3aa

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;

    const/4 v13, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;->isDisplayFoldOrUnfold()Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v13

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->isAlive(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v1, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "resumeCamera: module is obsolete"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->registerProtocol()V

    goto/16 :goto_a

    :cond_4
    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v13}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    :cond_5
    iget-object v3, v0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->isJumpBack()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeCamera: from gallery, mReleaseByModule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v13, v0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    iget-boolean v2, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/android/camera/module/Module;->isShot2GalleryOrEnableParallel()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, v12}, Lcom/android/camera/module/Module;->enableCameraControls(Z)V

    iput-boolean v13, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    return-void

    :cond_6
    move v6, v13

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v15

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v10

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->isCameraAliveWhenResume()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->isActivityNewIntent()Z

    move-result v3

    if-nez v3, :cond_9

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v2, v13

    goto :goto_2

    :cond_9
    :goto_1
    move v2, v12

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v6

    const/4 v7, 0x0

    xor-int/lit8 v8, v16, 0x1

    move-object v3, v1

    move v11, v9

    move/from16 v9, p1

    move v12, v10

    move v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZZZZ)Landroidx/core/util/Pair;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    if-eq v11, v3, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    move v5, v13

    :goto_3
    if-eq v12, v2, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    move v6, v13

    :goto_4
    const-string v7, "resumeCamera: lastType="

    if-eqz v12, :cond_e

    iget-object v4, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v4, :cond_c

    invoke-interface {v4}, Lcom/android/camera/module/Module;->isSelectingCapturedResult()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v13, 0x1

    :cond_c
    iget-object v4, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " curType="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " captureFinish="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v12, v2, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->resumeCurrentMode(I)V

    return-void

    :cond_d
    if-eqz v13, :cond_10

    iget-object v2, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I)V

    goto :goto_5

    :cond_e
    iget-object v2, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " | mReleaseByModule "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_10

    if-ne v15, v4, :cond_10

    if-nez v5, :cond_10

    if-nez v6, :cond_10

    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/android/camera/module/Module;->notifyAfterFirstFrameArrived()V

    :cond_f
    iget-object v1, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/AnimationComposite;->notifyAfterFirstFrameArrived(I)V

    iput-boolean v13, v0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    return-void

    :cond_10
    :goto_5
    move v13, v5

    :goto_6
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x3

    if-nez v2, :cond_12

    if-nez v13, :cond_12

    if-eqz v6, :cond_11

    goto :goto_7

    :cond_11
    const/4 v2, 0x2

    goto :goto_8

    :cond_12
    :goto_7
    iget-object v2, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v2, :cond_14

    const v5, 0x7f0a0192

    invoke-virtual {v2, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    const v5, 0xffff1

    if-ne v2, v5, :cond_13

    iget-object v2, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I)V

    :cond_13
    iget-object v2, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I)V

    :cond_14
    move v2, v4

    :goto_8
    if-eq v2, v4, :cond_15

    if-eqz v14, :cond_15

    const/4 v11, 0x2

    goto :goto_9

    :cond_15
    if-eq v2, v4, :cond_17

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    const/16 v5, 0xb3

    if-ne v4, v5, :cond_17

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v4

    const-class v5, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v4, v5}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v4}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result v4

    if-ne v4, v3, :cond_16

    iget-object v0, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "resumeCamera: vv combine, return"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const/4 v11, -0x1

    goto :goto_9

    :cond_17
    const/4 v11, 0x1

    :goto_9
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :goto_a
    iget-object v0, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "resumeCamera: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resumeIfNotRecording()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/MiuiCameraSound;

    invoke-direct {v0, p0}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness;->onResume()V

    return-void
.end method

.method private setBrightnessRampRate(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setBrightnessRampRate(I)V

    return-void
.end method

.method private setScreenEffect(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/Camera;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    if-eqz p0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    :cond_0
    return-void
.end method

.method private setTranslucentNavigation(Z)V
    .locals 1

    invoke-static {p0}, Lcom/android/camera/Display;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x300

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 p1, 0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void
.end method

.method private setupCamera(Lcom/android/camera/module/loader/StartControl;)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsInRequestRuntimePermission:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setupCamera: skipped since we\'re requesting runtime permission."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setupCamera: skipped since activity is paused!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setupCamera: skipped since some permissions need to be granted"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    return-void

    :cond_2
    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setupCamera: skipped since module has been created"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupCamera: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()V

    new-instance v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;

    iget v3, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget v4, p1, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    iget v5, p1, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    iget-boolean v6, p1, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureData:Z

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    move-object v7, v1

    check-cast v7, Lcom/android/camera/module/BaseModule;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/module/loader/FunctionCameraPrepare;-><init>(IIIZLcom/android/camera/module/BaseModule;)V

    new-instance v1, Lcom/android/camera/module/loader/FunctionModuleSetup;

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v1, v2}, Lcom/android/camera/module/loader/FunctionModuleSetup;-><init>(I)V

    new-instance v2, Lcom/android/camera/module/loader/FunctionDataSetup;

    iget v3, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v2, v3}, Lcom/android/camera/module/loader/FunctionDataSetup;-><init>(I)V

    new-instance v3, Lcom/android/camera/module/loader/FunctionUISetup;

    iget v4, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->needNotifyUI()Z

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/android/camera/module/loader/FunctionUISetup;-><init>(IZ)V

    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v4, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setupCamera: CameraSetupDisposable: E"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraOpenResult:Lio/reactivex/functions/BiFunction;

    invoke-virtual {p1, v0, v4}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1, v3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setupCamera: X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldReleaseLater()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->shouldReleaseLater()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showCameraError(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCameraError(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/camera/aftersales/AftersalesManager;->count(JII)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isFrontPopCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->takebackMotor()Z

    :cond_0
    return-void
.end method

.method private showDebug()V
    .locals 2

    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/android/camera/Camera$LogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$LogThread;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isShowPreviewDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private showFirstUseHintIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRootView;->disableTouchEvent()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$5;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private showFirstUsePermissionActivity()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_first_use_permission_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sget-object v1, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERMISSION_USE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11057b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11057c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11057a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11057e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11057f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11057d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "extra_main_permission_groups"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "extra_pkgname"

    const-string v3, "com.android.camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KR Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private showHibernationFragment()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/camera/fragment/dialog/HibernationFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/HibernationFragment;-><init>()V

    const/4 v1, 0x2

    const v2, 0x7f1200b6

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "Hibernation"

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private switchEdgeFingerMode(Z)V
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    return-void
.end method

.method private triggerWatchDog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerWatchDog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/mi/config/Device;->IS_STABLE:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDeviceWatchDog()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    :cond_2
    :goto_0
    return-void
.end method

.method private unbindServices()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsGalleryServiceBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsGalleryServiceBound:Z

    :cond_0
    return-void
.end method

.method private unregisterSDReceiver()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public boostCameraByThreshold(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boostCameraByThreshold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miui.process.ProcessManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "boostCameraByThreshold"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public changeRequestOrientation()V
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isFrontCameraAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public connectionStatus(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p1}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->setIsGroupOwner(Landroid/os/Bundle;Z)V

    iget-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControl;->startStreaming(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "connectionStatus: startStreaming failed"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customCallback:\n\textensionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tPayload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->jsonify(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.xiaomi.camera.rcs.videoCastStateChanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v0, 0xa2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0, p2}, Lcom/android/camera/module/Module;->setVideoCastState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ProximitySensorLock;->intercept(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb3

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    iput-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mMoreChangeCtrl:Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->modeChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "Key event intercept caz mode change."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public exitAutoHibernationMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "exitAutoHibernationMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->exitAutoHibernation()V

    :cond_0
    return-void
.end method

.method public getCapturePosture()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result p0

    return p0
.end method

.method public getCurrentBrightness()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result p0

    return p0
.end method

.method public getCurrentModuleIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method public getImplFactory()Lcom/android/camera/module/impl/ImplFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    return-object p0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object p0
.end method

.method public handleScreenSlideKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 9

    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenSlideKeyEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mi/config/DataItemFeature;->isSupportMultiScreenDevices()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x2bd

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraIntentManager;->isFromScreenSlide()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isModeSwitched()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const p1, 0x7f010014

    const p2, 0x7f010015

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isPostProcessing()Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    const/16 v2, 0x2bc

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    move v4, v0

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v5

    const/16 v6, 0xab

    const/16 v7, 0xa6

    const/16 v8, 0xa3

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/config/DataItemFeature;->isSupportedFrontPortrait()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-eq v5, v7, :cond_5

    const/16 v6, 0xa7

    if-eq v5, v6, :cond_5

    const/16 v6, 0xad

    if-eq v5, v6, :cond_5

    const/16 v6, 0xaf

    if-ne v5, v6, :cond_6

    :cond_5
    move v5, v8

    :cond_6
    if-eq v5, v8, :cond_7

    const/16 v6, 0xa5

    if-ne v5, v6, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(I)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getMappingModeByRatio(I)I

    move-result v5

    :cond_8
    if-eq v1, v4, :cond_e

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xac

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v6, 0xa2

    invoke-virtual {v2, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p1, :cond_9

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu(I)V

    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->hideExtra()V

    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xb3

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz p1, :cond_b

    invoke-interface {p1, v5}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->resetModeSelectView(I)V

    :cond_b
    invoke-virtual {p2, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p2, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    if-ne v1, v0, :cond_c

    move p1, v0

    goto :goto_1

    :cond_c
    move p1, v3

    :goto_1
    if-ne v4, v0, :cond_d

    move v3, v0

    :cond_d
    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-static {p1, v3, p2}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchCameraStart(ZZI)V

    invoke-static {v5}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setFromScreenSlide(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_2

    :cond_e
    if-ne p1, v2, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateScreenSlide(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateContentDescription()V

    :cond_f
    :goto_2
    return v0
.end method

.method public hideLensDirtyDetectedHint()V
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportLensDirtyLightUI()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/-$$Lambda$Camera$7JdYCu95VSGBDW5WrdKVmhsZbiA;

    invoke-direct {v1, p0}, Lcom/android/camera/-$$Lambda$Camera$7JdYCu95VSGBDW5WrdKVmhsZbiA;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isCurrentModuleAlive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIntentPhotoDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/Camera;->mIntentPhotoDone:Z

    return p0
.end method

.method public isModeSwitched()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/Camera;->mIsModeSwitched:Z

    return p0
.end method

.method public isNewBieAlive(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "UltraTeleModeHint"

    goto :goto_0

    :pswitch_1
    const-string p1, "VVHint"

    goto :goto_0

    :pswitch_2
    const-string p1, "MacroModeHint"

    goto :goto_0

    :pswitch_3
    const-string p1, "UltraWideHint"

    goto :goto_0

    :pswitch_4
    const-string p1, "AiSceneHint"

    goto :goto_0

    :pswitch_5
    const-string p1, "RotateHint"

    goto :goto_0

    :pswitch_6
    const-string p1, "PortraitHint"

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isRecording()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenSlideOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    return p0
.end method

.method public isSelectingCapturedResult()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isSelectingCapturedResult()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->isStable()Z

    move-result p0

    return p0
.end method

.method public isStreaming()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v1}, Lcom/xiaomi/camera/rcs/RemoteControl;->isStreaming()Z

    move-result v1
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStreaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public synthetic lambda$hideLensDirtyDetectedHint$6$Camera()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Camera;->lambda$hideLensDirtyDetectedHint$6()V

    return-void
.end method

.method public synthetic lambda$new$0$Camera(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->lambda$new$0(I)V

    return-void
.end method

.method public synthetic lambda$new$1$Camera(Lcom/android/camera/module/loader/NullHolder;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lcom/android/camera/module/loader/NullHolder;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->lambda$new$1(Lcom/android/camera/module/loader/NullHolder;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lcom/android/camera/module/loader/NullHolder;

    return-object p1
.end method

.method public synthetic lambda$onCreate$2$Camera(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->lambda$onCreate$2(I)V

    return-void
.end method

.method public synthetic lambda$resumeCurrentMode$3$Camera(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->lambda$resumeCurrentMode$3(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$showGuide$5$Camera(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->lambda$showGuide$5(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    return-void
.end method

.method public synthetic lambda$startLensActivity$4$Camera(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->lambda$startLensActivity$4(I)V

    return-void
.end method

.method public notifyOnFirstFrameArrived(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isDeparted()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xfe

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/animation/AnimationComposite;->notifyAfterFirstFrameArrived(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/module/Module;->enableCameraControls(Z)V

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1, v0}, Lcom/android/camera/module/Module;->setFrameAvailable(Z)V

    iget-boolean p1, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v3, p1, Landroid/os/Message;->what:I

    iget v3, p0, Lcom/android/camera/Camera;->mCurrentTempStage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    iget-wide v3, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p1

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->startRealtimeBlur()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p1

    const/16 v2, 0xa5

    if-eq p1, v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p1

    const/16 v2, 0xa3

    if-eq p1, v2, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/mi/config/Device;->isFrontCameraAtBottom()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget p1, p0, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    if-eqz p1, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const-string v2, "pref_front_camera_first_use_hint_shown_key"

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->showNewBie(I)Lcom/android/camera/fragment/dialog/BaseDialogFragment;

    :cond_b
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/FileCompat;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    const-string p1, "Camera"

    invoke-virtual {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onActivityResult documents permission not granted"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x904

    if-ne p2, p0, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string p1, "pref_camera_first_use_permission_shown_key"

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_3
    :goto_0
    return-void
.end method

.method public onAwaken()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onAwaken"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->requestAwaken()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->cleanDefaultValues()V

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraAppImpl;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    const-string v0, "camera.test.auto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsLunchFromAutoTest:Z

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->TrackInit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->isApplicationFirstLaunched()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->trackAppLunchTimeStart(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIntentPhotoDone:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraIntentManager;->setReferer(Landroid/app/Activity;)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportMultiWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-static {v3, v0}, Lcom/android/camera/Display;->init(Landroid/content/Context;Z)V

    invoke-static {v1}, Lcom/android/camera/Display;->updateOrientation(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An illegal caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v1}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " use VOICE_CONTROL_INTENT!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v4}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackCallerControl(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Display;->initStatusBarHeight(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/camera/Display;->checkMultiWindowSupport(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create in MultiWindowMode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/camera/Util;->updateDeviceConfig(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/camera/Camera;->showFirstUsePermissionActivity()V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/Camera;->showFirstUseHintIfNeeded()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "onCreate(): prefixCamera2Setup"

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/Camera;->prefixCamera2Setup()V

    goto :goto_1

    :cond_4
    const/16 p1, 0x64

    invoke-static {p0, p1}, Lcom/android/camera/permission/PermissionManager;->requestCameraPermissions(Landroid/app/Activity;I)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsInRequestRuntimePermission:Z

    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isFromVolumeKey()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/camera/Util;->isNonUI()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "NonUI_volume"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPocketModeEnter(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Finish from NonUI mode."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->supported()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/android/camera/ProximitySensorLock;

    invoke-direct {p1, p0}, Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {p1}, Lcom/android/camera/ProximitySensorLock;->startWatching()V

    :cond_7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->releaseInstance()V

    const p1, 0x7f0d0174

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0a041e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const p1, 0x7f0a0197

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mGLCoverView:Landroid/widget/ImageView;

    const p1, 0x7f0a00a2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0a042e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V9EdgeShutterView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

    const p1, 0x7f0a00a1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CameraRootView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    iget-object p1, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    if-nez p1, :cond_8

    new-instance p1, Lcom/android/camera/CommonRotationLayout;

    invoke-direct {p1, p0}, Lcom/android/camera/CommonRotationLayout;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    :cond_8
    new-instance p1, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    new-instance p1, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {p1, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)V

    new-instance p1, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;-><init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->registerProtocol()V

    invoke-static {}, Lcom/mi/config/Device;->isSupportScreenLight()Z

    move-result p1

    if-eqz p1, :cond_9

    :try_start_0
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v3, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v5, "DisplayFeatureManager init failed"

    invoke-static {v3, v5, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setTranslucentNavigation(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/EffectChangedListenerController;->setHoldKey(I)V

    invoke-static {}, Lcom/mi/config/Device;->supportNewGoogleLens()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0d00c7

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/lens/LensAgent;->getInstance()Lcom/android/lens/LensAgent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v3, p0, v4, p1}, Lcom/android/lens/LensAgent;->init(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->supportGoogleLens()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/google/lens/sdk/LensApi;

    invoke-direct {p1, p0}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    new-instance v3, Lcom/android/camera/-$$Lambda$Camera$hTPLWAB8pk7oKNyAGCBnHmzmOqs;

    invoke-direct {v3, p0}, Lcom/android/camera/-$$Lambda$Camera$hTPLWAB8pk7oKNyAGCBnHmzmOqs;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v3}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "Bind Lens service: E"

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onResume()V

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "Bind Lens service: X"

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->showDebug()V

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/ThermalDetector;->onCreate(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object p1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->supportSnapClickHapticFeedback()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->setSnapClickVibratorEnable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isStreamingRequested(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, -0x1

    const-string v4, "device_id"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: remote device id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "onCreate: bind rcs"

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    invoke-static {p0, p0, p0, p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getRemoteControl(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)Lcom/xiaomi/camera/rcs/RemoteControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    :cond_c
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mi/config/DataItemFeature;->isSupportOrientation(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    if-nez v0, :cond_d

    move v1, v2

    :cond_d
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSupportOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/camera/Coverage;->initCoverageService(Landroid/content/Context;)V

    new-instance p1, Lcom/android/camera/Camera$ScreenSlideObserver;

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, p0}, Lcom/android/camera/Camera$ScreenSlideObserver;-><init>(Landroid/os/Handler;Lcom/android/camera/Camera;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mScreenSlideStatusObserver:Lcom/android/camera/Camera$ScreenSlideObserver;

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa3

    const/16 v2, 0xb9

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportCloneMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xd2

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xb3

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportFeatureLiveVVMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xd1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xd5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_4

    const/16 v1, 0xbd

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_5
    :goto_0
    const/16 v1, 0xb7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(Ljava/util/List;)V

    :cond_6
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->removeInstance(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->onDestroy()V

    :cond_8
    iput-object v2, p0, Lcom/android/camera/Camera;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->onDestroy(Lcom/android/camera/ActivityBase;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/EffectChangedListenerController;->removeEffectChangedListenerMap(I)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera$LogThread;->setRunFlag(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->destroy()V

    :cond_a
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->destroy()V

    iput-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->dismissSystemChoiceDialog()V

    :cond_c
    invoke-static {}, Lcom/android/camera/CameraIntentManager;->removeAllInstance()V

    invoke-static {}, Lcom/mi/config/Device;->supportNewGoogleLens()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/lens/LensAgent;->getInstance()Lcom/android/lens/LensAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lens/LensAgent;->release()V

    goto :goto_1

    :cond_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->supportGoogleLens()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "onDestroy: mLensApi is null!"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "Unbind Lens service: E"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {v0}, Lcom/google/lens/sdk/LensApi;->onPause()V

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "Unbind Lens service: X"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "onDestroy: release glrender thread"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->quit()V

    iput-object v2, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    :cond_10
    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "onDestroy: release rcs"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/RemoteControl;->release()V

    iput-object v2, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    :cond_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMResource;->onDestroy()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->reset()V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->removeAllRequestListener()V

    :cond_12
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHibernate()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onHibernate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->showHibernationFragment()V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->requestHibernate()V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/android/camera/Camera$HibernateRunnable;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$HibernateRunnable;-><init>(Lcom/android/camera/module/Module;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-eqz v3, :cond_0

    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v3, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown: keycode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x1b

    const/16 v6, 0x42

    const/16 v7, 0x19

    const/16 v8, 0x18

    const/16 v9, 0x57

    const/16 v10, 0x58

    const/4 v11, 0x1

    if-nez v3, :cond_4

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v10, :cond_1

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_4

    :cond_1
    iget-wide v12, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v5, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    cmp-long v5, v12, v5

    if-gez v5, :cond_2

    iput v1, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    iput-wide v14, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    return v11

    :cond_2
    const-string v5, ""

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getVolumeCameraFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-wide v12, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    cmp-long v6, v12, v14

    if-eqz v6, :cond_3

    invoke-direct {v0, v2}, Lcom/android/camera/Camera;->isFromOneShotKeyPressed(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f110743

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v2, v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: isFromOneShotKeyPressed and return! keyCode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    iput-wide v14, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    return v11

    :cond_3
    iput v4, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/camera/Camera;->mLastKeyDownEventTime:J

    goto :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_5

    iget v5, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne v1, v5, :cond_5

    iput v4, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    :cond_5
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x2bd

    const/16 v6, 0x2bc

    if-ne v1, v6, :cond_6

    iput-boolean v4, v0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    goto :goto_1

    :cond_6
    if-ne v1, v5, :cond_7

    iput-boolean v11, v0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v12}, Lcom/android/camera/module/Module;->isFrameAvailable()Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_4

    :cond_8
    sget-boolean v3, Lcom/mi/config/Device;->IS_U2:Z

    if-eqz v3, :cond_a

    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_9

    if-eq v1, v9, :cond_9

    if-eq v1, v10, :cond_9

    goto :goto_2

    :cond_9
    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_a
    :goto_2
    iget-object v3, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v3, v1, v2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    move v11, v4

    :cond_c
    :goto_3
    return v11

    :cond_d
    :goto_4
    if-eq v1, v8, :cond_f

    if-eq v1, v7, :cond_f

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_f

    const/16 v3, 0x42

    if-eq v1, v3, :cond_f

    const/16 v3, 0x50

    if-eq v1, v3, :cond_f

    if-eq v1, v9, :cond_f

    if-eq v1, v10, :cond_f

    if-eq v1, v6, :cond_e

    if-eq v1, v5, :cond_e

    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_e
    invoke-virtual/range {p0 .. p2}, Lcom/android/camera/Camera;->handleScreenSlideKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_f
    return v11
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onKeyUp: keyCode KeyEvent.KEYCODE_BACK is not isTracking or isCanceled"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyUp: key is lastIgnore key   keyCode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp: mLastKeyUpEventTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/camera/Camera;->mLastKeyUpEventTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_4
    sget-boolean v0, Lcom/mi/config/Device;->IS_U2:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x18

    if-eq p1, v0, :cond_5

    const/16 v0, 0x19

    if-eq p1, v0, :cond_5

    const/16 v0, 0x57

    if-eq p1, v0, :cond_5

    const/16 v0, 0x58

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method public onLifeAlive()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v3, v3, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v3, v3, Lcom/android/camera/module/loader/StartControl;->mViewConfigType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v3, v3, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v3, v3, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v3, v3, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string v3, "onLifeAlive module 0x%x, need anim %d, need blur %b need reconfig %b reset type %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLifeAlive: isFromKeyguard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasBeenSetupOnFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Display;->isNormalMuiltDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onLifeAlive: setupCamera: focused"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onLifeAlive: setupCamera: !keyguard"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onLifeDestroy(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLifeDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLifeStart(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLifeStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLifeStop(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLifeStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onModeSelected(Lcom/android/camera/module/loader/StartControl;)V
    .locals 12
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsModeSwitched:Z

    invoke-static {p0}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget v6, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "onModeSelected from 0x%x to 0x%x, ScreenSlideOff = %b"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    iget v1, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchModeStart(IIZ)V

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportReleaseSensorCache()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/external/cameraperformance/CameraPerformance;->getInstance()Lcom/android/camera/external/cameraperformance/CameraPerformance;

    move-result-object v1

    iget v4, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v1, v0, v4}, Lcom/android/camera/external/cameraperformance/CameraPerformance;->notifyModeConstant(II)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setPreviousCapturingMode(Landroid/os/Bundle;I)V

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setCurrentCapturingMode(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    const-string v4, "com.xiaomi.camera.rcs.setCapturingMode"

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/camera/rcs/RemoteControl;->customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->getErrorCode(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send payload failed with error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v4, "send payload failed"

    invoke-static {v1, v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()V

    iput-object p1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    iget-boolean v0, p1, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {p0, v1, p1, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/animation/AnimationComposite;->setClickEnable(Z)V

    :cond_5
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    iget-boolean v0, p1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ActivityBase;->mModeSelectGaussianTime:J

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_7

    iput-boolean v3, p1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    :cond_7
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->setCurrentModule(Lcom/android/camera/module/Module;)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    move-object v5, v0

    check-cast v5, Lcom/android/camera/module/BaseModule;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setLastMode(I)Lcom/android/camera/module/loader/StartControl;

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->createNewModule(Lcom/android/camera/module/loader/StartControl;)Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onModeSelected: module instantiated: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iget-boolean v4, p1, Lcom/android/camera/module/loader/StartControl;->mDummyEnable:Z

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->setDummySystemEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onModeSelected: without prefix"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->init(Landroidx/fragment/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportPresentationDisplay()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->registerAnimationResource(Lcom/android/camera/animation/AnimationComposite;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v4, "onModeSelected: with prefix"

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v11

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v10

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/module/loader/camera2/CompletablePreFixCamera2Setup;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/CameraScreenNail;Landroid/content/Intent;IZZ)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    iget v4, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v0, v4}, Lcom/android/camera/CommonRotationLayout;->getForceFixedRotation(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    if-eqz v4, :cond_b

    iget v5, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v4, v5}, Lcom/android/camera/CommonRotationLayout;->updateForceFixedGravity(I)V

    :cond_b
    iget-object v4, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    iget v5, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget v6, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/camera/CommonRotationLayout;->provideOrientationChanged(ZII)Z

    move-result v3

    if-eqz v3, :cond_c

    iput v2, p1, Lcom/android/camera/module/loader/StartControl;->mViewConfigType:I

    :cond_c
    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraLayoutRotation:Lcom/android/camera/CommonRotationLayout;

    iget v3, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CommonRotationLayout;->getForceFixedRotation(I)I

    move-result v2

    if-eq v2, v0, :cond_d

    invoke-static {v2}, Lcom/android/camera/Display;->updateOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mSupportOrientation:Z

    invoke-static {}, Lcom/android/camera/Display;->getScreenOrientation()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/animation/AnimationComposite;->disposeRotation(IZI)V

    :cond_d
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "CameraPendingSetupDisposable: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/CompositeDisposable;

    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const v1, 0x7f0a0191

    const/16 v2, 0xff6

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->lazyLoadFragment(II)V

    iget-object p0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->getFeatureFragmentAlias()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->batchFragmentRequest(Ljava/util/List;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiWindowModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", configuration = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityNewIntent:Z

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->destroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIntentPhotoDone:Z

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraIntentManager;->setReferer(Landroid/app/Activity;)V

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onNewIntent end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->onActivityPaused(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onPause start mwm"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onPause end mwm"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->pauseActivity(Z)V

    :goto_0
    return-void
.end method

.method public onPrelaunchGallery(Lcom/android/camera/Thumbnail;)V
    .locals 5
    .param p1    # Lcom/android/camera/Thumbnail;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isThumbnailSharingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "Large thumbnail sharing not supported"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "Large thumbnail sharing not ready"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/ShareableMemoryFileBitmap;->getInstance()Lcom/android/camera/ShareableMemoryFileBitmap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ShareableMemoryFileBitmap;->set(Landroid/net/Uri;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E: Send shareable bitmap@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "uri"

    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bitmap"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "size"

    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "width"

    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "height"

    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X: Send shareable bitmap@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/Camera;->mGalleryMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GalleryBackgroundService width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception p0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "ignore this onRequestPermissionsResult callback"

    const/16 v1, 0x64

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsInRequestRuntimePermission:Z

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult: no permission finish, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    array-length v1, p2

    if-nez v1, :cond_1

    array-length v1, p3

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_3

    aget-object v0, p2, p1

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "has camera permissions, retry init Camera2DataContainer"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onRequestPermissionsResult: prefixCamera2Setup"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/Camera;->prefixCamera2Setup()V

    iget-object p1, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    invoke-direct {p0, p2, p3}, Lcom/android/camera/Camera;->parseLocationPermission([Ljava/lang/String;[I)V

    goto :goto_2

    :cond_4
    const/16 v1, 0x65

    if-ne p1, v1, :cond_6

    array-length p1, p2

    if-nez p1, :cond_5

    array-length p1, p3

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/android/camera/Camera;->parseLocationPermission([Ljava/lang/String;[I)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onRestart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onRestart start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->trackAppLunchTimeStart(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->showFirstUseHintIfNeeded()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "pref_lpl_selector_use_hint_shown"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->showLplSelectDialog()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onRestart end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->onActivityResumed(Landroid/app/Activity;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->resumeActivity(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x3aa

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;->setDisplayFoldOrUnfold(Z)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onSaveInstanceState"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onStart start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityStarted:Z

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStart()V

    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->onStart()V

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportReleaseSensorCache()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/external/cameraperformance/CameraPerformance;->getInstance()Lcom/android/camera/external/cameraperformance/CameraPerformance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/external/cameraperformance/CameraPerformance;->enableReleaseSensorCache()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->pauseActivity(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "onStop start"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->removeNewBie()V

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mActivityStopped:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityStarted:Z

    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()V

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    iget-object v2, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/animation/AnimationComposite;->onStop()V

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/Camera;->releaseAll(ZZ)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->unbindServices()V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoSettings()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->clearInitASDScenes()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/Camera2Module;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v1}, Lcom/android/camera/module/Camera2Module;->resetMagneticInfo()V

    :cond_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportReleaseSensorCache()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraPerf currentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/external/cameraperformance/CameraPerformance;->getInstance()Lcom/android/camera/external/cameraperformance/CameraPerformance;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/external/cameraperformance/CameraPerformance;->notifyModeConstant(II)V

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->cancel()V

    :cond_6
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onStop end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setStreamSize(II)V

    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    iget p0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p1, p2, p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->draw(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;I)V

    return-void
.end method

.method protected onThermalNotification(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onThermalNotification config is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onThermalNotification(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onThermalNotification error"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/camera/MemoryHelper;->setTrimLevel(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged: hasFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFromKeyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mHasBeenSetupOnFocusChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->isNormalMuiltDisplayType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged: setupCamera: keyguard"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mHasBeenSetupOnFocusChanged:Z

    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->checkActivityOrientation()V

    :cond_4
    return-void
.end method

.method public pauseActivity(Z)V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onPause start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz p1, :cond_0

    const/16 v0, 0x7ff

    invoke-virtual {p1, v0}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setLensIndex(I)V

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setMacro2Sat(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mActivityNewIntent:Z

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIsInRequestRuntimePermission:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mScreenSlideStatusObserver:Lcom/android/camera/Camera$ScreenSlideObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onPause()V

    invoke-direct {p0}, Lcom/android/camera/Camera;->hideHibernationFragment()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a8

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->dismissAutoHibernation()V

    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    iget-object v2, p0, Lcom/android/camera/Camera;->mLplDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/camera/Camera;->mLplDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_2
    sget-object v2, Lcom/android/camera/Camera;->DIALOG_FRAGMENT_TAGS:Ljava/util/List;

    new-instance v4, Lcom/android/camera/-$$Lambda$Camera$EFw8ZaQKS2ZE-6I33zQ5SjBrgdw;

    invoke-direct {v4, p0}, Lcom/android/camera/-$$Lambda$Camera$EFw8ZaQKS2ZE-6I33zQ5SjBrgdw;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v2, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object v2

    sget-object v4, Lcom/android/camera/-$$Lambda$TNi46IOBMQPyhIZxLKMlneTcV6M;->INSTANCE:Lcom/android/camera/-$$Lambda$TNi46IOBMQPyhIZxLKMlneTcV6M;

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->unregisterSDReceiver()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isShowBottomIntentDone()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportShot2Gallery()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v2, v0, :cond_6

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->doPreviewGaussianForever()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportStartupAlphaMask()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v2

    const/16 v4, 0xfe

    if-eq v2, v4, :cond_7

    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v4, "onPause: readLastFrameGaussian..."

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->readLastFrameGaussian()V

    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mGLCoverDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_8
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mErrorDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/Camera;->pauseIfNotRecording()V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    iget-object v4, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPause: clearFlag --> FLAG_TURN_SCREEN_ON and isChangingConfigurations is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mJumpFlag is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x200000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    iget v4, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v4, :cond_a

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStreaming()Z

    move-result v2

    iget-object v4, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPause: isStreaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStreaming()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/android/camera/Camera;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    iget v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iput-object v3, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    goto :goto_1

    :cond_c
    iget v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v2, v0, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->clearNotification()V

    :cond_d
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/mi/config/Device;->supportNewGoogleLens()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/lens/LensAgent;->getInstance()Lcom/android/lens/LensAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lens/LensAgent;->onPause()V

    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    :cond_f
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraRootView;->enableTouchEvent()V

    :cond_10
    iget-object v2, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    :cond_11
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v4, "release by module"

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->onHostStopAndNotifyActionStop()V

    :cond_12
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "onThermalNotification finish activity now"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_13
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->unregisterReceiver()V

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mNeedReUpdateThermal:Z

    iput v1, p0, Lcom/android/camera/Camera;->mCurrentTempStage:I

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->triggerWatchDog(Z)V

    invoke-direct {p0}, Lcom/android/camera/Camera;->boostParallelServiceAdj()V

    iget-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_14

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCastIntent(Landroid/content/Intent;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause: stop rcs: isVideoCast = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStreaming()Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause: stop rcs: isStreaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget v3, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    const-string v4, "device_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_15

    invoke-static {p0, v2}, Lcom/xiaomi/camera/videocast/VideoCastService;->disconnect(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_15
    if-eqz v0, :cond_16

    if-eqz p1, :cond_17

    :cond_16
    :try_start_0
    iget-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {p1, v2}, Lcom/xiaomi/camera/rcs/RemoteControl;->stopStreaming(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "onPause: stopStreaming failed"

    invoke-static {v0, v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_2
    iput v1, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    :cond_18
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onPause end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseIfNotRecording()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->onPause()V

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPreviewThumbnail:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mPreviewThumbnail:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->saveThumbnailToFile()V

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->cancelTask()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected recoverFromCameraError()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "recoverFromCameraError: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->recoverFromCameraError()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "recoverFromCameraError: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerProtocol()V
    .locals 14

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->forceDestroy()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->create(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/EffectChangedListenerController;->setHoldKey(I)V

    new-instance v0, Lcom/android/camera/module/impl/ImplFactory;

    invoke-direct {v0}, Lcom/android/camera/module/impl/ImplFactory;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportStabilizerCapture()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v4, v3, [I

    const/16 v5, 0xef

    aput v5, v4, v2

    invoke-virtual {v0, p0, v4}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    :cond_0
    invoke-static {}, Lcom/mi/config/Device;->isSupportSpeechShutter()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v4, v3, [I

    const/16 v5, 0xff

    aput v5, v4, v2

    invoke-virtual {v0, p0, v4}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportPresentationDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v4, v3, [I

    const/16 v5, 0x3b1

    aput v5, v4, v2

    invoke-virtual {v0, p0, v4}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportMultiScreenDevices()Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    invoke-virtual {v0, p0, v5}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0x3aa

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;->isDisplayFoldOrUnfold()Z

    move-result v5

    xor-int/2addr v3, v5

    :cond_5
    move v13, v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v13}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZZZZ)Landroidx/core/util/Pair;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void

    :array_0
    .array-data 4
        0xab
        0x3a1
        0x3a5
    .end array-data

    :array_1
    .array-data 4
        0x3aa
        0x3b2
    .end array-data
.end method

.method public releaseAll(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityStopped()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mReleaseByModule:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/camera/Camera;->releaseAll(ZIZZ)V

    return-void
.end method

.method public removeNewBie()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNewBie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->drawBlackFrame(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public restoreWindowBrightness()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v0

    if-lez v0, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    return-void
.end method

.method public resumeActivity(Z)V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    iput p1, p0, Lcom/android/camera/ActivityBase;->mLastJumpFlag:I

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onResume start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/camera/Display;->checkMultiWindowSupport(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume in MultiWindowMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "start from keyguard, not grant lunch permission, finish activity"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showBlurCover()V

    invoke-static {}, Lcom/android/camera/Display;->isNotchScreenHidden()Z

    move-result p1

    invoke-static {p0}, Lcom/android/camera/Display;->isNotchScreenHidden(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/camera/Display;->isFullScreenNavBarHidden()Z

    move-result p1

    invoke-static {p0}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcom/android/camera/Display;->isDisplaySizeChange(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/Display;->init(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Display;->initStatusBarHeight(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/camera/Display;->isContentViewExtendToTopEdges()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCutoutModeShortEdges(Landroid/view/Window;)V

    :cond_3
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->onResume()V

    iget-object p1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/ProximitySensorLock;->onResume()V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/camera/Util;->SCREEN_SLIDE_STATUS_SETTING_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/camera/Camera;->mScreenSlideStatusObserver:Lcom/android/camera/Camera$ScreenSlideObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mActivityStopped:Z

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mActivityStopped:Z

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mFirstOrientationArrived:Z

    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    iput v2, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    invoke-static {p0}, Lcom/android/camera/Util;->clearSeamlessRotation(Landroid/app/Activity;)V

    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag()V

    invoke-direct {p0}, Lcom/android/camera/Camera;->resumeIfNotRecording()V

    invoke-static {p0}, Lcom/android/camera/Util;->isScreenSlideOff(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsScreenSlideOff:Z

    invoke-static {}, Lcom/mi/config/Device;->supportNewGoogleLens()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/lens/LensAgent;->getInstance()Lcom/android/lens/LensAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lens/LensAgent;->onResume()V

    :cond_6
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/FileCompat;->hasStoragePermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "start request documents permission"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/FileCompat;->getStorageAccessForLOLLIPOP(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "documents permission not granted, getKeyguardFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerReceiver()V

    invoke-direct {p0}, Lcom/android/camera/Camera;->registerSDReceiver()V

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->resumeCamera(Z)V

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsModeSwitched:Z

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/Camera;->mThermalNotificationListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    invoke-virtual {p1, v1}, Lcom/android/camera/ThermalDetector;->registerReceiver(Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;)V

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move p1, v2

    goto :goto_3

    :cond_b
    :goto_2
    move p1, v0

    :goto_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-nez v1, :cond_c

    new-instance v1, Lcom/android/camera/storage/ImageSaver;

    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;Landroid/os/Handler;Z)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    :cond_c
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v1, p1}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    invoke-direct {p0}, Lcom/android/camera/Camera;->bindServices()V

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->triggerWatchDog(Z)V

    invoke-static {p0}, Lcom/android/camera/Util;->updateAccessibility(Landroid/content/Context;)V

    iget-boolean p1, p0, Lcom/android/camera/Camera;->mIsInRequestRuntimePermission:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    new-instance v1, Lcom/android/camera/-$$Lambda$iMHAd0ZiFJu3oLAPjgIxcGFiQgI;

    invoke-direct {v1, p0}, Lcom/android/camera/-$$Lambda$iMHAd0ZiFJu3oLAPjgIxcGFiQgI;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const-string v1, "pref_lpl_selector_use_hint_shown"

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/-$$Lambda$BbL4o5w8ZoqT69cda7xy0mkzlTA;

    invoke-direct {v1, p0}, Lcom/android/camera/-$$Lambda$BbL4o5w8ZoqT69cda7xy0mkzlTA;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCastIntent(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/Camera;->mLockStreamOrientation:Z

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->isStreamingRequested(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume: remote camera id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_f

    new-instance p1, Lcom/android/camera/Camera$3;

    invoke-direct {p1, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/Camera;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_f
    iget-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onResume: bind rcs"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    invoke-static {p0, p0, p0, p0}, Lcom/xiaomi/camera/rcs/RemoteControl;->getRemoteControl(Landroid/content/Context;Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;)Lcom/xiaomi/camera/rcs/RemoteControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    :cond_10
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: start rcs: already connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/camera/Camera;->mRemoteControlConnected:Z

    if-eqz p1, :cond_11

    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->setIsGroupOwner(Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/android/camera/Camera;->mRemoteControl:Lcom/xiaomi/camera/rcs/RemoteControl;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/rcs/RemoteControl;->startStreaming(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/camera/rcs/RemoteControl$ServiceExitedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onResume: startStreaming failed"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/external/NotifyExternalManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/external/NotifyExternalManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/external/NotifyExternalManager;->notifyCameraResume()V

    iget-object p1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/camera/SensorStateManager;->register()V

    :cond_12
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onResume end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumeCurrentMode(I)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertMainThread()V

    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    new-instance v0, Lcom/android/camera/module/loader/FunctionResumeModule;

    invoke-direct {v0, p1}, Lcom/android/camera/module/loader/FunctionResumeModule;-><init>(I)V

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-static {p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/android/camera/-$$Lambda$Camera$uAta8Cn1qJ-Eobfjv_ZVbrsTN3Y;

    invoke-direct {v1, p0}, Lcom/android/camera/-$$Lambda$Camera$uAta8Cn1qJ-Eobfjv_ZVbrsTN3Y;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/Camera;->mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v3, "resumeCurrentMode: CameraSetupDisposable: E"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraOpenResult:Lio/reactivex/functions/BiFunction;

    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupConsumer:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setBlockingLifeCycles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setIntnetPhotoDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/Camera;->mIntentPhotoDone:Z

    return-void
.end method

.method public setVideoStreamEffect(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setFilterId(I)V

    :cond_0
    return-void
.end method

.method public setWindowBrightness(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showDialogFragment(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/camera/Camera;->DIALOG_FRAGMENT_TAGS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f1200b6

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    new-instance p1, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;-><init>()V

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget-object v0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;-><init>()V

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget-object v0, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;-><init>()V

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget-object v0, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_5
    :goto_0
    return-void
.end method

.method public showGuide()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showGuide(I)V

    return-void
.end method

.method public showGuide(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isCtsCall()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showGuide = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  isCtsCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    new-instance v1, Lcom/android/camera/-$$Lambda$Camera$7rM5dx8bi6zyW7qYcdlBreXJmsU;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/-$$Lambda$Camera$7rM5dx8bi6zyW7qYcdlBreXJmsU;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/data/data/global/DataItemGlobal;)V

    const/4 v2, 0x0

    const/16 v3, 0xb6

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportIDCardMode()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->isNewBieAlive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    const-string v4, "pref_camera_first_id_card_mode_use_hint_shown_key"

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->showNewBie(I)Lcom/android/camera/fragment/dialog/BaseDialogFragment;

    move-result-object v2

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->setDismissCallback(Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;->onDismiss()V

    :cond_6
    :goto_1
    return-void
.end method

.method public showLensDirtyDetectedHint()V
    .locals 4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportLensDirtyLightUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "LensDirtyDetectDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/fragment/dialog/LensDirtyDetectDialogFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/LensDirtyDetectDialogFragment;-><init>()V

    const/4 v2, 0x2

    const v3, 0x7f1200bf

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method

.method public showLplSelectDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mLplDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportLongPressRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isSupportedLongPressBurst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/RotateDialogController;->showLongPressDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mLplDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public showNewBie(I)Lcom/android/camera/fragment/dialog/BaseDialogFragment;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraScreenNail;->drawBlackFrame(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNewBie newBieType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p1, Lcom/android/camera/fragment/dialog/IDCardModeNewbieDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/IDCardModeNewbieDialogFragment;-><init>()V

    const v1, 0x7f1200bb

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "IDCardModeHint"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "pref_camera_first_id_card_mode_use_hint_shown_key"

    invoke-interface {p0, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-object p1

    :cond_2
    new-instance p1, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;-><init>()V

    const v1, 0x7f1200b6

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "RotateHint"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    return-object p1
.end method

.method public showNewNotification()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsLunchFromAutoTest:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getMiServiceNotificationLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_first_notification_shown_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showNewNotification: locale does not match, return..."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.miservice.MISERVICE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intent_extra_key_flag"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getMiServiceNotificationLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_key_label"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f1104d0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_key_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f1104cf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_key_content"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_extra_key_is_to_main"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showNewNotification: return..."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startLensActivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLensActivity: isAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mLensApi:Lcom/google/lens/sdk/LensApi;

    new-instance v1, Lcom/android/camera/-$$Lambda$Camera$aiPZg7JwbdNlnyNPsB9P-HF2O3c;

    invoke-direct {v1, p0}, Lcom/android/camera/-$$Lambda$Camera$aiPZg7JwbdNlnyNPsB9P-HF2O3c;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V

    return-void
.end method

.method public streamingServerStatus(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "streaming server error occurred: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->getStreamingServerPort(Landroid/os/Bundle;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "streaming server started, port = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mi/config/DataItemFeature;->isRemoteOnlineSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2, p1}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->setStreamingServerPort(Landroid/os/Bundle;I)V

    iget p1, p0, Lcom/android/camera/Camera;->mRemoteDeviceId:I

    const-string v0, "device_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->sendPayload(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public streamingSessionStatus(ILandroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown streaming status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p2, "onStreamingStopped"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->quit()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onStreamingStarted"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onStreamingStarted: invalid session"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->getCodecInputSurface(Landroid/os/Bundle;)Landroid/view/Surface;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onStreamingStarted: invalid codec surface"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onStreamingStarted: too many clients connected?"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onStreamingStarted: mode not available"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onStreamingStarted: screennail not available"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onStreamingStarted: surfaceview not available"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onStreamingStarted: EGLContext not available"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result v3

    new-instance p1, Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    const/4 v6, 0x1

    const-string v1, "StreamingSurfaceRenderThread"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;-><init>(Ljava/lang/String;IILandroid/opengl/EGLContext;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mLockStreamOrientation:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setOrientationLocked(Z)V

    invoke-static {p2}, Lcom/xiaomi/camera/rcs/RemoteControlContract;->getVideoStreamSize(Landroid/os/Bundle;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    if-lez p2, :cond_b

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    if-gtz p2, :cond_9

    goto :goto_1

    :cond_9
    iget-object p2, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->setCanvasSize(II)V

    iget-object p2, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreamingStarted: video quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/android/camera/Camera;->mStreamingSurfaceRenderThread:Lcom/xiaomi/camera/liveshot/gles/RenderThread;

    invoke-virtual {p0}, Lcom/xiaomi/camera/liveshot/gles/RenderThread;->waitUntilReady()V

    :cond_a
    :goto_0
    return-void

    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onStreamingStarted: illegal video size"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachBase()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->unRegisterProtocol()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    :cond_1
    return-void
.end method

.method public updateSurfaceState(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->updateSurfaceState(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/Camera;->mCamera2OpenOnSubscribe:Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenOnSubscribe;->onGlSurfaceCreated()V

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCapture()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->updatePreviewSurface()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateSurfaceState: module has not been initialized"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
