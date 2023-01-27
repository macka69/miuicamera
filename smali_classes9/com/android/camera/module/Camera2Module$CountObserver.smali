.class Lcom/android/camera/module/Camera2Module$CountObserver;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mMode:I

.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/Camera2Module$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$CountObserver;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/module/Camera2Module$CountObserver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$CountObserver;->setCount(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/module/Camera2Module$CountObserver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Camera2Module$CountObserver;->setMode(I)V

    return-void
.end method

.method static synthetic lambda$onSubscribe$0(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    return-void
.end method

.method private setCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mCount:I

    return-void
.end method

.method private setMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mMode:I

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onError - module is null, returning."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/Camera2Module;->access$3902(Lcom/android/camera/module/Camera2Module;Z)Z

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->tryRemoveCountDownMessage()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xd4

    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    iget v5, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v5}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget p0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mMode:I

    const/16 v5, 0x78

    if-eq p0, v5, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerRunningData()V

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    invoke-interface {v2, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    iget p0, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa7

    if-ne p0, v2, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v2, 0xb5

    invoke-virtual {p0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    :cond_1
    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$4000(Lcom/android/camera/module/Camera2Module;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onError - module is null, returning."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/module/Camera2Module;->access$3902(Lcom/android/camera/module/Camera2Module;Z)Z

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onNext - module is null, returning."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a8

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    iget p0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mCount:I

    if-ne p1, p0, :cond_1

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_4

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideDelayNumber()V

    iget p0, v0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->shouldCheckSatFallbackState()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "capture check in startCount: sat fallback"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/camera/module/BaseModule;->mWaitingSnapshot:Z

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/module/Camera2Module;->access$3800(Lcom/android/camera/module/Camera2Module;I)V

    iget p0, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 p1, 0xa7

    if-ne p0, p1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateTimerBurstAnimator()V

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->stopAutoHibernationCaptureDelayNumber()V

    goto :goto_1

    :cond_4
    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    iget-object p0, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->startAutoHibernationCaptureDelayNumber()V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module$CountObserver;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 4

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$CountObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onSubscribe - module is null, returning."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance v0, Lcom/android/camera/module/-$$Lambda$Camera2Module$CountObserver$2FuMP3sD5z2M3IlbgK8WSL5dSjc;

    invoke-direct {v0, p0}, Lcom/android/camera/module/-$$Lambda$Camera2Module$CountObserver$2FuMP3sD5z2M3IlbgK8WSL5dSjc;-><init>(Lcom/android/camera/module/Camera2Module;)V

    const-wide/16 v1, 0x78

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_2

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_2
    return-void
.end method
