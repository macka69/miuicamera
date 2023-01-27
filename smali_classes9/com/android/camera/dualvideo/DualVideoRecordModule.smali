.class public Lcom/android/camera/dualvideo/DualVideoRecordModule;
.super Lcom/android/camera/dualvideo/DualVideoModuleBase;
.source "DualVideoRecordModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;
    }
.end annotation


# instance fields
.field private mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

.field private mIsStopKaraoke:Z

.field private mPauseClickTime:J

.field private final mRecorderListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

.field private mRecorderPausedTimes:I

.field private mRecorderResumeTimes:I

.field private mRenderCaptureTimes:I

.field private mVideoRecordTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mPauseClickTime:J

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$8HUjPnxAfaQnnjJYr1_IN49_8cI;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$8HUjPnxAfaQnnjJYr1_IN49_8cI;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRecorderListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mIsStopKaraoke:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/dualvideo/DualVideoRecordModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/dualvideo/DualVideoRecordModule;)Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getRecorderMaxFileSize(I)J
    .locals 4

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/32 v2, 0xc800000

    sub-long/2addr v0, v2

    if-lez p1, :cond_0

    int-to-long v2, p1

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide v2, 0xdac00000L

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSplitVideoSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v2, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    :goto_0
    move-wide v0, v2

    :cond_2
    iget-wide p0, p0, Lcom/android/camera/module/VideoBase;->mIntentRequestSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_3

    cmp-long v2, p0, v0

    if-gez v2, :cond_3

    move-wide v0, p0

    :cond_3
    return-wide v0
.end method

.method private getRecorderOrientationHint()I
    .locals 1

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private getZoomGroupForTrack()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$Cu_DaG3zgf_9Ql8LgN7qI8MgwAg;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$Cu_DaG3zgf_9Ql8LgN7qI8MgwAg;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigDescription(Lcom/android/camera/dualvideo/render/LayoutType;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$ohSJPO9lHv9p4UTQCQ-QEPM9yCg;

    invoke-direct {v2, v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$ohSJPO9lHv9p4UTQCQ-QEPM9yCg;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideHint()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getTopAlert()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$LOCuKMkCpamVtmwvgIN2t8cbDys;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$LOCuKMkCpamVtmwvgIN2t8cbDys;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$getZoomGroupForTrack$5(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/UserSelectData;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getZoomGroupForTrack$6(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$hideHint$11(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->getTopTipRes()I

    move-result v0

    const/16 v1, 0x8

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertDualVideoHint(II)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    return-void
.end method

.method static synthetic lambda$notifyRemoteDeviceLayoutType$1(Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmRecordLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$releaseRemote$2(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
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

.method private synthetic lambda$releaseRemote$3(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "releaseRemote: isAnimating, waiting!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->releaseRemote()V

    return-void
.end method

.method static synthetic lambda$releaseRemote$4(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_recording"

    const-string v1, "abort"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$startVideoRecording$9(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->getRecorderSurface()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->startRecording(Landroid/opengl/EGLContext;Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$stopRecorder$14(Lio/reactivex/SingleEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->stopRecorder(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method private synthetic lambda$stopRecorder$15(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->onMediaRecorderReleased()V

    return-void
.end method

.method static synthetic lambda$stopVideoRecording$12(Lcom/android/camera/dualvideo/render/RenderManager;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$stopVideoRecording$13(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_recording"

    const-string/jumbo v1, "stop"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$switchToGridWindow$7(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->enableDrawBlur(Z)V

    return-void
.end method

.method static synthetic lambda$switchToGridWindow$8(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->updateTextureId()V

    return-void
.end method

.method private synthetic lambda$trackOnVideoStart$10(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_recording"

    const-string/jumbo v1, "start"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object p0

    const-string v0, "attr_device_type"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private notifyRemoteDeviceLayoutType()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$ByxANkAy279j5edzRCynv6WWw5w;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$ByxANkAy279j5edzRCynv6WWw5w;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    :goto_0
    return-void
.end method

.method private onMediaRecorderReleased()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.stop_video_recording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->doLaterReleaseIfNeed()V

    return-void
.end method

.method private onStartRecorderSucceed()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.start_video_recording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateRecordingTime()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepPowerSave()V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->hideHint()V

    return-void
.end method

.method private pauseVideoRecording()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->pauseVideoRecording2()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateReselectButton()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyRecordingStateToRemoteDevice(I)V

    return-void
.end method

.method private pauseVideoRecording2()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->pauseRecorder()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "failed to pause media recorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateRecordingTime()V

    :cond_0
    return-void
.end method

.method private resumeVideoRecording(Lcom/android/camera/protocol/ModeProtocol$RecordState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->resumeVideoRecording2(Lcom/android/camera/protocol/ModeProtocol$RecordState;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateReselectButton()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyRecordingStateToRemoteDevice(I)V

    return-void
.end method

.method private resumeVideoRecording2(Lcom/android/camera/protocol/ModeProtocol$RecordState;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->resume()V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->updateRecordingTime()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "failed to resume media recorder"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->release()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/camera/statistic/CameraStatUtils;->mZoomPair:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object p1

    const-string v1, "attr_device_type"

    invoke-static {v1, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/camera/statistic/CameraStatUtils;->mZoomPair:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->forceTrackLayoutType(Z)V

    return-void
.end method

.method private startRecordingRelate()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->silenceOuterAudio()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v2

    sget-object v4, Lcom/android/camera/dualvideo/recorder/RecordType;->STANDALONE:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    new-array v1, v2, [I

    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v2

    aput v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    :cond_0
    new-array v1, v2, [I

    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v2

    aput v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result v2

    aput v2, v1, v0

    :cond_1
    :goto_0
    move-object v5, v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/SoundSetting;->isSupportKaraoke(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {v1}, Lcom/android/camera/AudioMonitorPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/SoundSetting;->openKaraokeEquipment(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundSetting.isStartKaraoke121"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isStartKaraoke"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mIsStopKaraoke:Z

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/AudioMonitorPlayer;->startPlay()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/SoundSetting;->openKaraokeState(Landroid/content/Context;I)V

    :cond_4
    iget-object v4, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getLocation()Landroid/location/Location;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    iget-object v8, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRecorderListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    invoke-direct {p0, v3}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getRecorderMaxFileSize(I)J

    move-result-wide v9

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getRecorderOrientationHint()I

    move-result v11

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->startRecorder([ILandroid/location/Location;Lcom/android/camera/CameraSize;Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;JI)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    return-void

    :cond_5
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->onStartRecorderSucceed()V

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    iput-boolean v3, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->trackOnVideoStart()V

    return-void
.end method

.method private stopRecorder()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$eoj69VUUgJq-_xEh3Au--rZG8HM;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$eoj69VUUgJq-_xEh3Au--rZG8HM;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$h0pKR6RTZX6Y7dmu4KeSr9Si-xQ;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$h0pKR6RTZX6Y7dmu4KeSr9Si-xQ;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private switchToGridWindow(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRenderAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderManager;->isDrawBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchThumbnailFunction(Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$FgZwKBEe3Ym563IFlhrg0B92cGc;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$FgZwKBEe3Ym563IFlhrg0B92cGc;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/android/camera/dualvideo/-$$Lambda$Dum3EkKtcMQYEEvsjIsrlSegnt0;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$Dum3EkKtcMQYEEvsjIsrlSegnt0;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$25yQ0YvfXeeGvzd-Wgdsa2z7-8Q;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$25yQ0YvfXeeGvzd-Wgdsa2z7-8Q;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZZI)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v2, p1}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private trackDualVideo()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDualVideoCameraChoose()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mVideoRecordTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v1

    sget-object v2, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "value_record_merged"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "value_record_standalone"

    :goto_0
    iget v2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRecorderPausedTimes:I

    iget v3, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRecorderResumeTimes:I

    iget p0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRenderCaptureTimes:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMultiCameraDualVideo(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mVideoRecordTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "attr_video_duration"

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private trackOnVideoStart()V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_device_type"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->getZoomGroupForTrack()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->mZoomPair:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->forceTrackLayoutType(Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "attr_3A_Locked"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->hasRemoteCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$XNzL4RycfYAMQhmZH7CDOOvKQPg;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$XNzL4RycfYAMQhmZH7CDOOvKQPg;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$DualVideoRecordModule()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$releaseRemote$3$DualVideoRecordModule(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$releaseRemote$3(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic lambda$startVideoRecording$9$DualVideoRecordModule(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$startVideoRecording$9(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method

.method public synthetic lambda$stopRecorder$14$DualVideoRecordModule(Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$stopRecorder$14(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public synthetic lambda$stopRecorder$15$DualVideoRecordModule(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$stopRecorder$15(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$trackOnVideoStart$10$DualVideoRecordModule(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$trackOnVideoStart$10(Ljava/util/Map;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xbb8

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    iput-wide v3, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v0, 0x7f11081d

    invoke-static {p0, v0, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    :goto_0
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "value_back_select"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchToGridWindow(I)V

    return v2

    :cond_4
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onBackPressed()Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    return v2
.end method

.method public onCameraPickerClicked(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->handleBackStack()Z

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onCameraPickerClicked: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->switchTopBottom()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->getInstance(Landroid/content/Context;)Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/lib/compatibility/related/vibrator/ViberatorContext;->performSwitchCamera()V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f110051

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->announceForAccessibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "value_pause_switch"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "value_idle_switch"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz p0, :cond_3

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetTouchFocus(I)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public onPauseButtonClick()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->handleBackStack()Z

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPauseButtonClick: isRecordingPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mPauseClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    iput-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mPauseClickTime:J

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->resumeVideoRecording(Lcom/android/camera/protocol/ModeProtocol$RecordState;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->pauseVideoRecording()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    :goto_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onPauseButtonClick"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showModeSwitchLayout(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->notifyRemoteDeviceLayoutType()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "value_back_select"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchToGridWindow(I)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onReviewCancelClicked()V

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 1

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->startVideoRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected releaseRemote()V
    .locals 4

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$vvDsfv2uE1JwBd8RSAfXT7Sy2tI;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$vvDsfv2uE1JwBd8RSAfXT7Sy2tI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/RenderManager;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v0, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$d_w9N6sWrT6BNLNfHlr-nLnx3rc;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$d_w9N6sWrT6BNLNfHlr-nLnx3rc;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$1y0oQgCZ8takrVkZIvHnryBynwU;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$1y0oQgCZ8takrVkZIvHnryBynwU;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchRenderRemoteItem()V

    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchRenderRemoteItem()V

    :cond_4
    :goto_0
    return-void
.end method

.method public reselectCamera()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mKeepRecorderWhenSwitching:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showOrHideBottom(Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showModeSwitchLayout(Z)V

    const-string/jumbo v0, "value_reselect"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchToGridWindow(I)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopVideoRecording(Z)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->shouldReleaseLater()Z

    move-result p0

    return p0
.end method

.method protected startVideoRecording()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->startRecordingRelate()V

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyRecordingStateToRemoteDevice(I)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$91nPEK1yJVcd4qAu_R1VUqGWwwU;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$91nPEK1yJVcd4qAu_R1VUqGWwwU;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stopVideoRecording(Z)V
    .locals 6

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopVideoRecording: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    sget-object v2, Lcom/android/camera/dualvideo/-$$Lambda$ejx2ayxEYjBV0lQ3P3bxXj5TOZ4;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$ejx2ayxEYjBV0lQ3P3bxXj5TOZ4;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchThumbnailFunction(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    sget-object v2, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$dgwtEnwW7bXPIqQu-x42BxZcPDM;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$dgwtEnwW7bXPIqQu-x42BxZcPDM;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRenderCaptureTimes:I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    sget-object v2, Lcom/android/camera/dualvideo/-$$Lambda$sTglCBRcLEjlrZfw0EB0RZuU49Q;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$sTglCBRcLEjlrZfw0EB0RZuU49Q;

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {p1, v2, v1}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera/SoundSetting;->closeKaraokeState(Landroid/content/Context;I)V

    iget-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mIsStopKaraoke:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mIsStopKaraoke:Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/AudioMonitorPlayer;->stopPlay()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/camera/SoundSetting;->closeKaraokeEquipment(Landroid/content/Context;I)V

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoRecording>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyRecordingStateToRemoteDevice(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->processingFinish()V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    iget v0, p1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatPausedTimes:I

    iput v0, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRecorderPausedTimes:I

    iget p1, p1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatResumeTimes:I

    iput p1, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mRecorderResumeTimes:I

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->trackDualVideo()V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mVideoRecordTime:J

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->hasRemoteCamera()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$hMCRIDvVdKlAUCCFmd-mdwbhSEw;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$hMCRIDvVdKlAUCCFmd-mdwbhSEw;

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->stopRecorder()V

    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    :cond_7
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopVideoRecording<<time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchToGridWindow(I)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    return-void
.end method

.method protected switchRenderRemoteItem()V
    .locals 4

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchRemoteCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->refreshSelectData()V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$_Bz_VBaDQ_X5-UGYTkNX2LdrSHg;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/-$$Lambda$BmTqcNyRTUsDHRj0fN9X4xGI3Ho;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$BmTqcNyRTUsDHRj0fN9X4xGI3Ho;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isRemoteOnlineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x200

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDualVideoCameraChoose()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->reStartCurrentModule()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->switchToGridWindow(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public takeVideoSnapShot()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "takeVideoSnapShot"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/RenderManager;

    new-instance v2, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;-><init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/camera/dualvideo/render/RenderManager;->captureVideoSnapshot(Lcom/android/camera/dualvideo/DualVideoRecordModule$JpegPictureCallback;ILandroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void
.end method

.method protected updateRecordingTime()V
    .locals 7

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;->mVideoRecordTime:J

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v5, :cond_1

    invoke-interface {v5, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v4, 0x1f4

    iget-object v6, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v6}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v6

    if-nez v6, :cond_2

    rem-long/2addr v0, v2

    sub-long v4, v2, v0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2a

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected updateReselectButton()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "topAlert is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x201

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method
