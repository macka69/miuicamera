.class public Lcom/android/camera2/MiCamera2;
.super Lcom/android/camera2/Camera2Proxy;
.source "MiCamera2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/MiCamera2$PictureCaptureCallback;,
        Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;,
        Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;
    }
.end annotation


# static fields
.field private static final DEF_QUICK_SHOT_THRESHOLD_INTERVAL_TIME:I = 0x32

.field private static final DEF_QUICK_SHOT_THRESHOLD_SHOT_CACHE_TIME_OUT:I = 0x2710

.field private static final FLASH_LOCK_DEBUG:Z

.field private static final FORCE_STOP_WATCHDOG:Z

.field private static final MSG_CHECK_CAMERA_ALIVE:I = 0x3

.field private static final MSG_WAITING_AF_LOCK_TIMEOUT:I = 0x1

.field private static final MSG_WAITING_LOCAL_PARALLEL_SERVICE_READY:I = 0x2

.field public static final PARALLEL_SURFACE_INDEX_UNSET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MiCamera2"

.field private static final TIME_WAITING_LOCK_AF_FLASH:J = 0xfa0L

.field private static final TIME_WAITING_LOCK_AF_TORCH:J = 0xbb8L

.field static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field private final AE_STATE_NULL:I

.field private final DEF_QUICK_SHOT_THRESHOLD_SHOT_CACHE_COUNT:I

.field private final MAX_PARALLEL_REQUEST_NUMBER:I

.field private final WAITING_AE_STATE_STRICT:Z

.field private mCameraCloseCallback:Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraPreviewHandler:Landroid/os/Handler;

.field private final mCameraPreviewMetadata:Lcom/android/camera/PreviewMetadata;

.field private final mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

.field private mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

.field private mCaptureTime:J

.field private mConfigs:Lcom/android/camera2/CameraConfigs;

.field private mCurrentFrameNum:J

.field private mDeferOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferPreviewSurface:Landroid/view/Surface;

.field private mDepthReader:Landroid/media/ImageReader;

.field private mDisplayOrientation:I

.field private mEnableParallelSession:Z

.field private mEnableParallelSnapshot:Z

.field private mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

.field private mFakeSatTeleSurfaceIndex:I

.field private mFakeSatUltraTeleSurfaceIndex:I

.field private mFakeSatUltraWideSurfaceIndex:I

.field private mFakeSatWideSurfaceIndex:I

.field private mFocusLockRequestHashCode:I

.field private mFrameCount:J

.field private mFrameCountingStart:J

.field private mHelperHandler:Landroid/os/Handler;

.field private mHighSpeedFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsCameraClosed:Z

.field private volatile mIsCaptureSessionClosed:Z

.field private mIsPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsPreviewCallbackStarted:Z

.field private mLastFlashTimeMillis:J

.field private mLastFrameNum:J

.field private mLastSatCameraId:I

.field private mMacroParallelSurfaceIndex:I

.field private mMaxImageBufferSize:I

.field private mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

.field private mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/android/camera2/MiCamera2Shot;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedFlashForAuto:Z

.field private mParallelCaptureSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPendingNotifyVideoEnd:Z

.field private mPhotoImageReader:Landroid/media/ImageReader;

.field private mPortraitRawImageReader:Landroid/media/ImageReader;

.field private mPreCaptureRequestHashCode:I

.field private mPreviewCallbackType:I

.field private mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

.field private mPreviewImageReader:Landroid/media/ImageReader;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mQcfaParallelSurfaceIndex:I

.field private mRawCallbackType:I

.field private mRawImageReader:Landroid/media/ImageReader;

.field private mRawImageWriter:Landroid/media/ImageWriter;

.field private mRawMacroSurfaceIndex:I

.field private mRawSurfaceIndexForTuningBuffer:I

.field private mRawTeleSurfaceIndex:I

.field private mRawUltraTeleSurfaceIndex:I

.field private mRawUltraWideSurfaceIndex:I

.field private mRawWideSurfaceIndex:I

.field private mRecordSurface:Landroid/view/Surface;

.field private mRemoteImageReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mSATRemosaicParallelSurfaceIndex:I

.field private mScreenLightColorTemperature:I

.field private mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

.field private mSessionId:I

.field private final mSessionLock:Ljava/lang/Object;

.field private mSetRepeatingEarly:Z

.field private mSharedRawSurfaceIndex:I

.field private mShotBoostParams:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mShotQueueLock:Ljava/lang/Object;

.field private mSubParallelSurfaceIndex:I

.field private mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

.field private final mSupportFlashTimeLock:Z

.field private mTeleParallelSurfaceIndex:I

.field private mToTele:Z

.field private mTuningBufferSurfaceIndex:I

.field private mUltraTeleParallelSurfaceIndex:I

.field private mUltraWideParallelSurfaceIndex:I

.field private mVideoSessionId:I

.field private mVideoSnapshotImageReader:Landroid/media/ImageReader;

.field private final mWaitingFirstFrameRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWideParallelSurfaceIndex:I

.field private mZoomMapSurface:Landroid/view/Surface;

.field private mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v7, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    sput-object v0, Lcom/android/camera2/MiCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    const-string v0, "flash_time_lock"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    const-string v0, "force_stop_watchdog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera2/MiCamera2;->FORCE_STOP_WATCHDOG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/CameraDevice;Lcom/android/camera2/CameraCapabilities;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/camera2/Camera2Proxy;-><init>(I)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/camera2/MiCamera2;->MAX_PARALLEL_REQUEST_NUMBER:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera2/MiCamera2;->AE_STATE_NULL:I

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->WAITING_AE_STATE_STRICT:Z

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mUltraWideParallelSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mWideParallelSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mTeleParallelSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mUltraTeleParallelSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mMacroParallelSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mSATRemosaicParallelSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mQcfaParallelSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mSubParallelSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mFakeSatUltraWideSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mFakeSatWideSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mFakeSatTeleSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mFakeSatUltraTeleSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mSharedRawSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mRawUltraWideSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mRawWideSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mRawTeleSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mRawUltraTeleSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mRawMacroSurfaceIndex:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mRawSurfaceIndexForTuningBuffer:I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mTuningBufferSurfaceIndex:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mRemoteImageReaderList:Ljava/util/List;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSetEarlyRepeating()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mIsPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    iput-object p2, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object p3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    new-instance p1, Lcom/android/camera2/CameraConfigs;

    invoke-direct {p1}, Lcom/android/camera2/CameraConfigs;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    new-instance p1, Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-direct {p1, p3}, Lcom/android/camera2/CaptureSessionConfigurations;-><init>(Lcom/android/camera2/CameraCapabilities;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    iput-object p4, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewHandler:Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initHelperHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-direct {p1, p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->supportFlashTimeLock()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    new-instance p1, Lcom/android/camera/PreviewMetadata;

    invoke-direct {p1}, Lcom/android/camera/PreviewMetadata;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewMetadata:Lcom/android/camera/PreviewMetadata;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->getQuickShotThresholdShotCacheCount()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2;->DEF_QUICK_SHOT_THRESHOLD_SHOT_CACHE_COUNT:I

    return-void
.end method

.method private abortCaptures()V
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAbortCaptures()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "abortCaptures E"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "abortCaptures X"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "abortCaptures, IllegalState"

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "abortCaptures(): failed"

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runCaptureSequence()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Shot;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera2/MiCamera2;Lcom/android/camera/CameraSize;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->prepareRawImageWriter(Lcom/android/camera/CameraSize;Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/camera2/MiCamera2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/camera2/MiCamera2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mVideoSessionId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/camera2/MiCamera2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera2/MiCamera2;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/camera2/MiCamera2;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mDeferPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraCapabilities;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera2/MiCamera2;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/camera2/MiCamera2;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->triggerDeviceChecking(ZZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    return p0
.end method

.method static synthetic access$2802(Lcom/android/camera2/MiCamera2;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/camera2/MiCamera2;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Preview;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->WAITING_AE_STATE_STRICT:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->lockFocus()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mPreCaptureRequestHashCode:I

    return p0
.end method

.method static synthetic access$3500(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mToTele:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera2/MiCamera2;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/android/camera2/MiCamera2;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraConfigs;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/camera2/MiCamera2;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/camera2/MiCamera2;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide p1
.end method

.method static synthetic access$4004(Lcom/android/camera2/MiCamera2;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isDeviceAlive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera2/MiCamera2;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera2/MiCamera2;Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->replaceCorrectShot(Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera2/MiCamera2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    return-void
.end method

.method private applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAWBLocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyEyeLight(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyThermal(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperNightScene(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p2, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceScore(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isAiPortraitDeblurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiPortraitDeblur(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForPortrait()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceScore(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isMFNRBokehSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHdrBokeh()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForNormalCapture()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiShutterExistMotion(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAnchorTimeStamp(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyFlashMode: request = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", applyType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isHighPrioritySuperNightPreferred()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isFlashAutoDetectionEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v2, v5, :cond_1

    move v3, v6

    :cond_1
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v7, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v1, v4, v7}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    const/4 v4, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq v2, v9, :cond_5

    if-eq v2, v7, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/camera2/CameraCapabilities;->isSupportCustomFlashCurrent()Z

    move-result v10

    if-eqz v10, :cond_8

    if-ne v3, v9, :cond_8

    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v11, v0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v10, v11, v6}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v10, v6}, Lcom/android/camera2/CameraConfigs;->setFlashCurrent(I)V

    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v11, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v12, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v10, v11, v12}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    goto :goto_3

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_0
    move v11, v5

    goto :goto_1

    :cond_4
    move v11, v6

    :goto_1
    move v10, v8

    goto :goto_4

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getExposureTime()J

    move-result-wide v10

    sget-wide v12, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    :goto_2
    move v10, v6

    move v11, v10

    goto :goto_4

    :cond_6
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_7
    if-ne v3, v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    move v10, v3

    move v11, v6

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/Camera2Proxy;->getScreenLightCallback()Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    move-result-object v12

    sget-object v13, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyFlashMode: flashMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", mScreenLightCallback = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/16 v14, 0x65

    if-ne v10, v14, :cond_9

    move v15, v5

    goto :goto_5

    :cond_9
    move v15, v6

    :goto_5
    invoke-static {v13, v1, v15}, Lcom/android/camera2/CaptureRequestBuilder;->applyScreenLightHint(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/16 v13, 0xc8

    const/4 v15, 0x5

    if-eq v10, v13, :cond_e

    if-eqz v10, :cond_e

    sget-boolean v16, Lcom/mi/config/Device;->IS_F4:Z

    if-eqz v16, :cond_c

    if-ne v3, v15, :cond_a

    :goto_6
    move v3, v5

    goto :goto_7

    :cond_a
    if-ne v3, v9, :cond_b

    goto :goto_6

    :cond_b
    move v3, v6

    :goto_7
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v4, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_9

    :cond_c
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-ne v10, v15, :cond_d

    move v4, v5

    goto :goto_8

    :cond_d
    move v4, v6

    :goto_8
    invoke-static {v3, v1, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_e
    :goto_9
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result v3

    if-gtz v3, :cond_f

    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    if-lez v3, :cond_10

    :cond_f
    move v3, v5

    goto :goto_a

    :cond_10
    move v3, v6

    :goto_a
    if-eqz v10, :cond_21

    if-eq v10, v5, :cond_20

    if-eq v10, v8, :cond_1d

    if-eq v10, v9, :cond_1b

    const/4 v3, 0x4

    if-eq v10, v3, :cond_1a

    if-eq v10, v15, :cond_19

    if-eq v10, v14, :cond_14

    const/16 v0, 0x67

    if-eq v10, v0, :cond_13

    if-eq v10, v13, :cond_11

    goto/16 :goto_f

    :cond_11
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_b

    :cond_12
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_b
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_13
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyFlashMode: FLASH_MODE_SCREEN_LIGHT_AUTO applyType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_23

    invoke-interface {v12}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->stopScreenLight()V

    goto/16 :goto_f

    :cond_14
    if-eqz v12, :cond_23

    if-ne v2, v7, :cond_15

    iget-object v1, v0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentColorTemperature()I

    move-result v1

    iput v1, v0, Lcom/android/camera2/MiCamera2;->mScreenLightColorTemperature:I

    :cond_15
    iget v1, v0, Lcom/android/camera2/MiCamera2;->mScreenLightColorTemperature:I

    const-string v3, "camera_screen_light_wb"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getScreenLightColor(I)I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v3

    const-string v4, "camera_screen_light_delay"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyFlashMode: FLASH_MODE_SCREEN_LIGHT_ON color = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", brightness = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", delay = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mCameraHandler = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v7, :cond_18

    if-ne v2, v9, :cond_16

    goto :goto_c

    :cond_16
    const/4 v5, 0x7

    if-ne v2, v5, :cond_23

    if-nez v4, :cond_17

    invoke-interface {v12}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->stopScreenLight()V

    goto/16 :goto_f

    :cond_17
    iget-object v0, v0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera2/-$$Lambda$MiCamera2$Lq6SUrqDkCzFiTu4kx-wLlVIlY4;

    invoke-direct {v1, v12}, Lcom/android/camera2/-$$Lambda$MiCamera2$Lq6SUrqDkCzFiTu4kx-wLlVIlY4;-><init>(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V

    int-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f

    :cond_18
    :goto_c
    invoke-interface {v12, v1, v3}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->startScreenLight(II)V

    goto/16 :goto_f

    :cond_19
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1a
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1b
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1c
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1d
    iget-object v0, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportSnapShotTorch()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {v1, v11}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1e
    if-eqz v3, :cond_1f

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_d

    :cond_1f
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_d
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_f

    :cond_20
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_f

    :cond_21
    if-eqz v3, :cond_22

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_e

    :cond_22
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_e
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_23
    :goto_f
    return-void
.end method

.method private applySettingsForFocusCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x6

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_2
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    return-void
.end method

.method private applySettingsForPreCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    return-void
.end method

.method private applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySettingsForPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAWBLocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSatFallbackDisable()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHFRDeflicker(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    return-void
.end method

.method private applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method private applyVideoHdrModeIfNeed()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoHdr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isVideoHdrEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "turns video.hdr.mode on"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_KEY_DETECTION_MODE:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-static {p0, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->QCOM_VIDEO_HDR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "capture: null session"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v1, v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    if-eqz p4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p4, v1}, Lcom/android/camera/module/loader/camera2/FocusTask;->setRequest(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture burst for camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture for camera "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private captureStillPicture()V
    .locals 5

    const-string v0, "capture"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected shot type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotBurst;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isNeedPausePreview()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera2/MiCamera2ShotBurst;-><init>(Lcom/android/camera2/MiCamera2;IZ)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SNReprocessThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->getSuperNightRawFormat()I

    move-result v2

    invoke-direct {v1, v0, p0, v2}, Lcom/android/camera2/SuperNightReprocessHandler;-><init>(Landroid/os/Looper;Lcom/android/camera2/MiCamera2;I)V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    :cond_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuperNightReprocessHandler@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/MiCamera2ShotRawBurst;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera2/SuperNightReprocessHandler;)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/android/camera2/MiCamera2;->useParallelVTCameraSnapshot(Z)Z

    move-result v2

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getRawCallbackType()I

    move-result v4

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZI)V

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setMagneticDetectedCallback(Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->supportRawDataReprocess()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->shouldApply()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->useParallelVTCameraSnapshot(Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getDoRemosaic()Z

    move-result v4

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/camera2/MiCamera2ShotParallelStill;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZZ)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setMagneticDetectedCallback(Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/camera2/MiCamera2ShotPreview;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/MiCamera2ShotPreview;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/camera2/MiCamera2ShotStill;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotStill;-><init>(Lcom/android/camera2/MiCamera2;)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->useParallelVTCameraSnapshot(Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getDoRemosaic()Z

    move-result v4

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/camera2/MiCamera2ShotParallelStill;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZZ)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setMagneticDetectedCallback(Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotSimplePreview;-><init>(Lcom/android/camera2/MiCamera2;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v1

    const/4 v2, -0x8

    if-ne v1, v2, :cond_4

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture: mMiCamera2ShotQueue.offer, size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture: mMiCamera2ShotQueue.offer failure, size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->disableSat()V

    :cond_6
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startShot holder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    invoke-direct {p0, v3, v3}, Lcom/android/camera2/MiCamera2;->triggerDeviceChecking(ZZ)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private checkCameraDevice(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is closed when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_3
    throw p0
.end method

.method private checkCaptureSession(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session for camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is closed when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    throw p0

    :cond_2
    :goto_0
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return v1

    :cond_3
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private closeDepthImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closePhotoImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closePortraitRawImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closePreviewImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closeRawImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closeVideoSnapshotImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private configMaxParallelRequestNumber()V
    .locals 6

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-boolean v1, Lcom/mi/config/Device;->IS_F3B:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getParallelRequestRestrictNum()I

    move-result v1

    goto :goto_0

    :cond_1
    sget-wide v1, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v3, 0x6

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getLowMemoryDeviceParallelRequestRestrictNum()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getParallelRequestRestrictNum()I

    move-result v1

    :goto_0
    sget-wide v2, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    sget-boolean v2, Lcom/mi/config/Device;->IS_J19S_OR_J19C:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/mi/config/Device;->IS_K7A:Z

    if-nez v2, :cond_3

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "current total memory is 4G or lower "

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configMaxParallelRequestNumber: prNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configMaxParallelRequestNumber(I)V

    :cond_5
    return-void
.end method

.method private createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createHighSpeedRequestList() fpsRange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x1e

    invoke-static {}, Lcom/mi/config/Device;->isQcomPlatform()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    const/16 v3, 0x78

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, v3, :cond_1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, v3, :cond_1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getHighSpeedVideoConfigs()[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    array-length v3, p0

    move v7, v5

    :goto_0
    if-ge v7, v3, :cond_1

    aget-object v8, p0, v7

    invoke-virtual {v8}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMax()I

    move-result v9

    if-ne v1, v9, :cond_0

    invoke-virtual {v8}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMin()I

    move-result v9

    if-ne v1, v9, :cond_0

    invoke-virtual {v8}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getBatchSizeMax()I

    move-result v8

    if-ne v8, v6, :cond_0

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Qualcomm platform enable super buffer mode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, p0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    move v2, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/4 v3, -0x1

    invoke-static {v1, v5, v3, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->constructCaptureRequestBuilder(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v9

    if-ne v9, v6, :cond_2

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    const/4 v9, 0x0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_4

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-static {v0, v5, v3, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->constructCaptureRequestBuilder(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v9

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v9, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v9, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->setPartOfCHSRequestList(Z)V

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v8, p1

    :cond_3
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :goto_3
    if-ge v5, v2, :cond_6

    if-nez v5, :cond_5

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input capture request must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private disableSat()V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "disableSat: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "disableSat: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private genSessionId()I
    .locals 3

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateSessionId: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    return p0
.end method

.method private getCaptureInterval()J
    .locals 7

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getShotBoostMinDelayedTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v2

    const-wide/16 v3, 0x320

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDRCheckerEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-long/2addr v0, v3

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelFront32MPOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v5, 0x258

    add-long/2addr v0, v5

    :cond_2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSingleBokehEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    add-long/2addr v0, v3

    :cond_3
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCaptureInterval: return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method private getExposureTime()J
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getMaxImageBufferSize()I
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getMaxRemoteBufferSize()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getHDMxaRemoteBufferSize()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    return p0
.end method

.method private getRemoteSurface(I)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mParallelCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    return-object p0
.end method

.method private initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa6

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFocusRequestBuilder: error caller for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isHighSpeedRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Module index is error!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initHelperHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/android/camera2/MiCamera2$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera2/MiCamera2$1;-><init>(Lcom/android/camera2/MiCamera2;Landroid/os/Looper;)V

    return-object v0
.end method

.method private initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xac

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isDeviceAlive()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera device maybe dead, current framenum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    const/4 p0, 0x1

    return p0
.end method

.method private isHighSpeedRecording()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v0, v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SMVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->get(Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    return v1
.end method

.method private isLocalParallelServiceReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$applyFlashMode$2(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->stopScreenLight()V

    return-void
.end method

.method static synthetic lambda$getSATSubCameraIds$0(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$preparePreviewImageReader$1(Landroid/media/ImageReader;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v0

    invoke-interface {v1, p1, p0, v0}, Lcom/android/camera2/Camera2Proxy$PreviewCallback;->onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getAnchorCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v1

    invoke-interface {v0, p1, p0, v1}, Lcom/android/camera2/Camera2Proxy$PreviewCallback;->onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "oooh, someone close the image before anchor"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private lockFocus()V
    .locals 5

    const-string v0, "lockFocus"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getFocusTask()Lcom/android/camera/module/loader/camera2/FocusTask;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v3, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0, v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void

    :cond_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3, v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->showAutoFocusStart()V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0xfa0

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0xbb8

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private lockFocusInCAF(Z)Z
    .locals 5

    const-string v0, "lockFocusInCAF"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->access$1100(Lcom/android/camera2/MiCamera2$PictureCaptureCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "lockFocusInCAF lock!"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "lockFocusInCAF unlock!"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p1, 0x6

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "should call this in CAF!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private needOptimizedFlash()Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getExposureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private needScreenLight()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p0

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needUnlockFocusAfterCapture()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyCaptureBusyCallback(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->enableSat()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;->onCaptureCompleted(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private prepareDepthImageReader(Lcom/android/camera/CameraSize;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeDepthImageReader()V

    new-instance v0, Lcom/android/camera2/MiCamera2$6;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2$6;-><init>(Lcom/android/camera2/MiCamera2;)V

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    div-int/2addr p1, v2

    const v3, 0x20363159

    invoke-static {v1, p1, v3, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private preparePhotoImageReader()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getPhotoMaxImages()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader(Lcom/android/camera/CameraSize;II)V

    return-void
.end method

.method private preparePhotoImageReader(Lcom/android/camera/CameraSize;II)V
    .locals 1
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePhotoImageReader()V

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-static {v0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/android/camera2/MiCamera2$2;

    invoke-direct {p2, p0}, Lcom/android/camera2/MiCamera2$2;-><init>(Lcom/android/camera2/MiCamera2;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private preparePortraitRawImageReader(Lcom/android/camera/CameraSize;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePortraitRawImageReader()V

    new-instance v0, Lcom/android/camera2/MiCamera2$7;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2$7;-><init>(Lcom/android/camera2/MiCamera2;)V

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v2, 0x100

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private preparePreviewImageReader()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera2/MiCamera2;->preparePreviewImageReader(Lcom/android/camera/CameraSize;II)V

    return-void
.end method

.method private preparePreviewImageReader(Lcom/android/camera/CameraSize;II)V
    .locals 1
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePreviewImageReader()V

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-static {v0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/android/camera2/-$$Lambda$MiCamera2$XXCOwyN78ECBks0m2mDMOhGZYoU;

    invoke-direct {p2, p0}, Lcom/android/camera2/-$$Lambda$MiCamera2$XXCOwyN78ECBks0m2mDMOhGZYoU;-><init>(Lcom/android/camera2/MiCamera2;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareRawImageReader(Lcom/android/camera/CameraSize;I)V
    .locals 3
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeRawImageReader()V

    :cond_1
    new-instance v0, Lcom/android/camera2/MiCamera2$3;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2$3;-><init>(Lcom/android/camera2/MiCamera2;)V

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v2, 0x20

    invoke-static {v1, p1, v2, p2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareRawImageWriter(Lcom/android/camera/CameraSize;Landroid/view/Surface;)V
    .locals 1
    .param p1    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mRawImageWriter:Landroid/media/ImageWriter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageWriter;->close()V

    :cond_0
    new-instance p1, Lcom/android/camera2/MiCamera2$4;

    invoke-direct {p1, p0}, Lcom/android/camera2/MiCamera2$4;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera2/MiCamera2;->mRawImageWriter:Landroid/media/ImageWriter;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareRemoteImageReader(Ljava/util/List;)Ljava/util/List;
    .locals 25
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given \"params\" should be null or an empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object/from16 v1, p1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSATSubCameraIds()[I

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget-object v6, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isSupportParallelCameraDevice()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SAT]prepareRemoteImageReader: isUseParallelVtCam = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v9, v7, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/config/DataItemFeature;->supportRawDataReprocess()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/config/DataItemFeature;->isMTKSatSupportRawSuperNightSE()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v7, 0x1

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getMaxImageBufferSize()I

    move-result v8

    iput v8, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    if-eqz v5, :cond_25

    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SAT]prepareRemoteImageReader: camera list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v5, v10}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_7

    iget-object v5, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->isMiviSatSuperNightSupported()Z

    move-result v5

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    array-length v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7
    if-ge v11, v10, :cond_24

    aget v15, v2, v11

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v8

    if-ne v15, v8, :cond_e

    iget-object v8, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->getUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v8

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SAT]prepareRemoteImageReader: uwSize = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    invoke-static {v9, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v8}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v18

    invoke-virtual {v8}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v19

    const/16 v20, 0x23

    iget v4, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v22, 0x0

    const/16 v23, 0x4

    move-object/from16 v17, v3

    move/from16 v21, v4

    invoke-direct/range {v17 .. v23}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mUltraWideParallelSurfaceIndex:I

    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    sget-object v9, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const-string v2, "[SAT]prepareRemoteImageReader: fakeSatUltraWideSize = "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x3

    invoke-static {v13, v9, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v4, v8}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v4, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v18, v2

    move/from16 v22, v4

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v2, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    iput v3, v0, Lcom/android/camera2/MiCamera2;->mFakeSatUltraWideSurfaceIndex:I

    move v13, v2

    goto :goto_8

    :cond_8
    iget v2, v0, Lcom/android/camera2/MiCamera2;->mUltraWideParallelSurfaceIndex:I

    iput v2, v0, Lcom/android/camera2/MiCamera2;->mFakeSatUltraWideSurfaceIndex:I

    :cond_9
    move v13, v3

    :goto_8
    if-eqz v6, :cond_b

    new-instance v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v8}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v8}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v3, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v18, v2

    move/from16 v22, v3

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    invoke-virtual {v2, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v3, v14}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setSurfaceIndex(II)V

    move v14, v4

    goto :goto_9

    :cond_a
    move-object/from16 v17, v2

    :cond_b
    :goto_9
    if-eqz v7, :cond_d

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraWide()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v12, :cond_c

    invoke-virtual {v12, v2}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result v3

    if-gez v3, :cond_23

    :cond_c
    :goto_a
    move-object v12, v2

    goto/16 :goto_11

    :cond_d
    if-eqz v5, :cond_23

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraWide()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: rawUwSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x20

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v18, v3

    move/from16 v22, v2

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mRawUltraWideSurfaceIndex:I

    goto/16 :goto_10

    :cond_e
    move-object/from16 v17, v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    if-ne v15, v2, :cond_14

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: wideSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v4, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x3

    move-object/from16 v18, v3

    move/from16 v22, v4

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mWideParallelSurfaceIndex:I

    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getFakeSatWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    sget-object v8, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[SAT]prepareRemoteImageReader: fakeSatWideSize = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x3

    invoke-static {v13, v8, v9}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    new-instance v8, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v4, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x3

    move-object/from16 v18, v8

    move/from16 v22, v4

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v8, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v3, 0x1

    iput v3, v0, Lcom/android/camera2/MiCamera2;->mFakeSatWideSurfaceIndex:I

    move v13, v4

    goto :goto_b

    :cond_f
    iget v4, v0, Lcom/android/camera2/MiCamera2;->mWideParallelSurfaceIndex:I

    iput v4, v0, Lcom/android/camera2/MiCamera2;->mFakeSatWideSurfaceIndex:I

    :cond_10
    move v13, v3

    :goto_b
    if-eqz v6, :cond_11

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x3

    move-object/from16 v18, v3

    move/from16 v22, v2

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    const/4 v3, 0x2

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v3, v14}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setSurfaceIndex(II)V

    move v14, v4

    :cond_11
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportSATRemosaic()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getSATRemosaicPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: satRemosaicSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x3

    move-object/from16 v18, v3

    move/from16 v22, v2

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mSATRemosaicParallelSurfaceIndex:I

    move v13, v2

    :cond_12
    if-eqz v7, :cond_13

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfWide()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v12, :cond_c

    invoke-virtual {v12, v2}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result v3

    if-gez v3, :cond_23

    goto/16 :goto_a

    :cond_13
    if-eqz v5, :cond_23

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfWide()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: rawWideSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x20

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x3

    move-object/from16 v18, v3

    move/from16 v22, v2

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mRawWideSurfaceIndex:I

    goto/16 :goto_10

    :cond_14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    if-ne v15, v2, :cond_1a

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: teleSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v4, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x5

    move-object/from16 v18, v3

    move/from16 v22, v4

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mTeleParallelSurfaceIndex:I

    if-eqz v6, :cond_15

    new-instance v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v8, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x5

    move-object/from16 v18, v4

    move/from16 v22, v8

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    add-int/lit8 v13, v3, 0x1

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    invoke-virtual {v4, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    add-int/lit8 v4, v14, 0x1

    const/4 v8, 0x3

    invoke-virtual {v3, v8, v14}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setSurfaceIndex(II)V

    move v14, v4

    goto :goto_c

    :cond_15
    move v13, v3

    :cond_16
    :goto_c
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getFakeSatTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SAT]prepareRemoteImageReader: fakeSatTeleSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v9, v4, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v3, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x5

    move-object/from16 v18, v2

    move/from16 v22, v3

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v2, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mFakeSatTeleSurfaceIndex:I

    move v13, v2

    goto :goto_d

    :cond_17
    iget v2, v0, Lcom/android/camera2/MiCamera2;->mTeleParallelSurfaceIndex:I

    iput v2, v0, Lcom/android/camera2/MiCamera2;->mFakeSatTeleSurfaceIndex:I

    :cond_18
    :goto_d
    if-eqz v7, :cond_19

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfTele()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v12, :cond_c

    invoke-virtual {v12, v2}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result v3

    if-gez v3, :cond_23

    goto/16 :goto_a

    :cond_19
    if-eqz v5, :cond_23

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfTele()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: rawTeleSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x20

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x5

    move-object/from16 v18, v3

    move/from16 v22, v2

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mRawTeleSurfaceIndex:I

    goto/16 :goto_10

    :cond_1a
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    if-ne v15, v2, :cond_20

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getStandalonePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: ultraTeleSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v4, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-object/from16 v18, v3

    move/from16 v22, v4

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mUltraTeleParallelSurfaceIndex:I

    if-eqz v6, :cond_1b

    new-instance v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v8, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-object/from16 v18, v4

    move/from16 v22, v8

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    add-int/lit8 v13, v3, 0x1

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    invoke-virtual {v4, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    const/4 v4, 0x4

    add-int/lit8 v8, v14, 0x1

    invoke-virtual {v3, v4, v14}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setSurfaceIndex(II)V

    move v14, v8

    goto :goto_e

    :cond_1b
    move v13, v3

    :cond_1c
    :goto_e
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SAT]prepareRemoteImageReader: fakeSatUltraTeleSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v9, v4, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v3, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-object/from16 v18, v2

    move/from16 v22, v3

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v2, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mFakeSatUltraTeleSurfaceIndex:I

    move v13, v2

    goto :goto_f

    :cond_1d
    iget v2, v0, Lcom/android/camera2/MiCamera2;->mUltraTeleParallelSurfaceIndex:I

    iput v2, v0, Lcom/android/camera2/MiCamera2;->mFakeSatUltraTeleSurfaceIndex:I

    :cond_1e
    :goto_f
    if-eqz v7, :cond_1f

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraTele()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v12, :cond_c

    invoke-virtual {v12, v2}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result v3

    if-gez v3, :cond_23

    goto/16 :goto_a

    :cond_1f
    if-eqz v5, :cond_23

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraTele()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: rawUtSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x20

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-object/from16 v18, v3

    move/from16 v22, v2

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mRawUltraTeleSurfaceIndex:I

    goto/16 :goto_10

    :cond_20
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v2

    if-ne v15, v2, :cond_23

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getMacroPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: macroSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x23

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v18, v3

    move/from16 v22, v2

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mMacroParallelSurfaceIndex:I

    move v13, v2

    :cond_21
    if-eqz v7, :cond_22

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfMacro()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v12, :cond_c

    invoke-virtual {v12, v2}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result v3

    if-gez v3, :cond_23

    goto/16 :goto_a

    :cond_22
    if-eqz v5, :cond_23

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfMacro()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: rawMacroSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getMacroPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v20

    const/16 v21, 0x20

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v18, v3

    move/from16 v22, v2

    invoke-direct/range {v18 .. v24}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-virtual {v3, v15}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setPhysicCameraId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mRawMacroSurfaceIndex:I

    :goto_10
    move v13, v2

    :cond_23
    :goto_11
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v17

    const/4 v9, 0x3

    goto/16 :goto_7

    :cond_24
    if-eqz v7, :cond_2c

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SAT]prepareRemoteImageReader: rawSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_25
    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isQcfaMode()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isQcfaOnlyBinningSize()Z

    move-result v2

    if-nez v2, :cond_29

    :cond_26
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRAndMfnrPixelOn()Z

    move-result v2

    if-nez v2, :cond_29

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_29

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareRemoteImageReader: mainSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v10

    const/16 v11, 0x23

    iget v12, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/camera2/MiCamera2;->mWideParallelSurfaceIndex:I

    const/4 v13, 0x1

    goto :goto_12

    :cond_27
    const/4 v13, 0x0

    :goto_12
    if-eqz v7, :cond_28

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    if-nez v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareRemoteImageReader: rawSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    move-object v12, v2

    goto :goto_15

    :cond_28
    const/4 v12, 0x0

    goto :goto_15

    :cond_29
    iget v2, v0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/lit8 v3, v2, 0x28

    if-nez v3, :cond_2b

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2a

    goto :goto_13

    :cond_2a
    const/4 v12, 0x0

    goto :goto_14

    :cond_2b
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v12

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRemoteImageReader: supernight rawSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_14
    const/4 v13, 0x0

    :cond_2c
    :goto_15
    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getSubPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareRemoteImageReader: subSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    const/16 v7, 0x23

    iget v8, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mSubParallelSurfaceIndex:I

    move v13, v2

    :cond_2d
    const/4 v2, 0x0

    goto :goto_16

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->alwaysUseRemosaicSize()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getBinningPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareRemoteImageReader: binningSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    const/16 v7, 0x23

    iget v8, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->setShouldHoldImages(Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mQcfaParallelSurfaceIndex:I

    move v13, v3

    :goto_16
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->supportMtkIspHidl()Z

    move-result v3

    const-string v4, "prepareRemoteImageReader: rawBufferSize = "

    if-eqz v3, :cond_34

    if-eqz v12, :cond_2f

    invoke-virtual {v12}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2f
    iget v3, v0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/lit8 v3, v3, 0x28

    if-eqz v3, :cond_32

    :cond_30
    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v12}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    invoke-virtual {v12}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v7

    const/16 v8, 0x20

    iget v9, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v13, 0x1

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mSharedRawSurfaceIndex:I

    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-static {v6, v5, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfTuningBuffer()Lcom/android/camera/CameraSize;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_31

    new-instance v5, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v8

    const v9, 0x32315659

    iget v10, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v3, 0x1

    iput v3, v0, Lcom/android/camera2/MiCamera2;->mRawSurfaceIndexForTuningBuffer:I

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareRemoteImageReader: rawTuningSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_31
    move v13, v3

    :cond_32
    :goto_17
    iget v3, v0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_33

    const/4 v3, 0x1

    goto :goto_18

    :cond_33
    move v3, v2

    :goto_18
    if-eqz v3, :cond_35

    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getTuningBufferSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    new-instance v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    const v7, 0x32315659

    iget v8, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mTuningBufferSurfaceIndex:I

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareRemoteImageReader: yuvTuningSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_34
    if-eqz v12, :cond_35

    invoke-virtual {v12}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    iget v2, v0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_35

    new-instance v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v12}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    invoke-virtual {v12}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v7

    const/16 v8, 0x20

    iget v9, v0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/xiaomi/protocol/IImageReaderParameterSets;-><init>(IIIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v13, v0, Lcom/android/camera2/MiCamera2;->mSharedRawSurfaceIndex:I

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_19
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v2

    if-nez v2, :cond_37

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "prepareRemoteImageReader: ParallelService is not ready"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget v4, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v5, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v6, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v3, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v4, v5, v6, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mRemoteImageReaderList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_36
    return-object v2

    :cond_37
    :try_start_0
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareRemoteImageReader: configurations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getActivityHashCode()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureOutputBuffer(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_38

    return-object v0

    :cond_38
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Config capture output buffer failed!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private prepareVideoSnapshotImageReader(Lcom/android/camera/CameraSize;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeVideoSnapshotImageReader()V

    new-instance v0, Lcom/android/camera2/MiCamera2$5;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2$5;-><init>(Lcom/android/camera2/MiCamera2;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v2, 0x100

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private replaceCorrectShot(Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;
    .locals 6

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    instance-of v2, v1, Lcom/android/camera2/MiCamera2ShotStill;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/camera2/MiCamera2ShotStill;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2ShotStill;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/MiCamera2Shot;

    return-object p0
.end method

.method private reset()V
    .locals 2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: reset"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mDeferPreviewSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2;->releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    const-string v0, "reset"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/MemoryHelper;->clear()V

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: reset"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private resetShotQueue(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetShotQueue !!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->makeClobber()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private runCaptureSequence()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mIsPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->showAutoFocusFinish(Z)V

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getExposureTime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->waitFlashClosed()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "ignore runCaptureSequence"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runPreCaptureSequence()V
    .locals 5

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "runPreCaptureSequence"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/android/camera2/MiCamera2;->mPreCaptureRequestHashCode:I

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method private setAFModeToPreview(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAFModeToPreview: focusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method private setVideoRecordControl(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoRecordControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unknown control value for video control"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    return-void
.end method

.method private startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string/jumbo v9, "startPreviewSession"

    invoke-direct {v1, v9}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    sget-object v9, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v12, v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v12, v15

    const-string/jumbo v13, "startPreviewSession: operatingMode=0x%x previewCallback=%d rawCallbackType=%d"

    invoke-static {v10, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v9, v10}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, v1, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    move/from16 v9, p7

    iput-boolean v9, v1, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    move-object/from16 v9, p1

    iput-object v9, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    iput-object v4, v1, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    iput v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    iput v3, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v9

    iput v9, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_4

    :try_start_1
    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader()V

    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v12, "startPreviewSession: add PhotoImageReader configuration: format=0x%x size=%dx%d"

    new-array v13, v11, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v14

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x1

    aput-object v11, v13, v16

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v15

    invoke-static {v10, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v11, v6, v10}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v6

    if-eq v6, v15, :cond_3

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v6

    const/4 v10, -0x3

    if-ne v6, v10, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v20, v8

    goto/16 :goto_6

    :cond_3
    :goto_1
    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/camera2/MiCamera2;->prepareDepthImageReader(Lcom/android/camera/CameraSize;)V

    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v11, "startPreviewSession: add DepthReader configuration: format=0x%x size=%dx%d"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v12}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v14

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v12}, Landroid/media/ImageReader;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v13, v16

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v12}, Landroid/media/ImageReader;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v15

    invoke-static {v10, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v11, v6, v10}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/camera2/MiCamera2;->preparePortraitRawImageReader(Lcom/android/camera/CameraSize;)V

    new-instance v6, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v11, "startPreviewSession: add PortraitRawImageReader configuration: format=0x%x size=%dx%d"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v12}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v14

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v12}, Landroid/media/ImageReader;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v13, v16

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v12}, Landroid/media/ImageReader;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v15

    invoke-static {v10, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v11, v6, v10}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v6}, Lcom/android/camera2/MiCamera2;->prepareRemoteImageReader(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/android/camera2/MiCamera2;->mParallelCaptureSurfaceList:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->configMaxParallelRequestNumber()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isLocalParallelServiceReady()Z

    move-result v10

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mParallelCaptureSurfaceList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move v12, v14

    :goto_2
    if-ge v12, v11, :cond_2

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget-boolean v13, v13, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-eqz v13, :cond_5

    move-object/from16 p6, v6

    move/from16 v20, v8

    move/from16 v19, v10

    move/from16 v18, v11

    goto/16 :goto_5

    :cond_5
    iget-object v13, v1, Lcom/android/camera2/MiCamera2;->mParallelCaptureSurfaceList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Surface;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    new-instance v15, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v15, v13}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v18

    move-object/from16 p6, v6

    if-eqz v18, :cond_6

    const/16 v6, 0x1c

    if-lt v8, v6, :cond_6

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v6

    move/from16 v18, v11

    const/4 v11, 0x1

    if-ne v6, v11, :cond_7

    const/4 v6, 0x2

    if-ge v12, v6, :cond_7

    invoke-virtual {v1, v14, v15, v11}, Lcom/android/camera2/MiCamera2;->setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V

    goto :goto_3

    :cond_6
    move/from16 v18, v11

    :cond_7
    const/16 v6, 0x1e

    if-lt v8, v6, :cond_8

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->supportPhysicCameraId()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_8

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v15, v6}, Lcom/android/camera2/MiCamera2;->setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V

    :cond_8
    :goto_3
    invoke-virtual {v14}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_9

    const/16 v6, 0x1e

    if-lt v8, v6, :cond_9

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->supportPhysicCameraId()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v14}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    :cond_9
    if-nez v10, :cond_a

    invoke-virtual {v15}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v11, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    move/from16 v19, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v8

    const-string v8, "add surface to deferredOutputConfig: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    :cond_a
    move/from16 v20, v8

    move/from16 v19, v10

    :goto_4
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v10, "startPreviewSession: add RemoteImageReader configuration: getPhysicCameraId=%d format=0x%x size=%s"

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v15, v14

    invoke-static {v13}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v15, v14

    invoke-static {v13}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v15, v13

    invoke-static {v8, v10, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    invoke-static {v10, v6, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p6

    move/from16 v11, v18

    move/from16 v10, v19

    move/from16 v8, v20

    const/4 v14, 0x0

    const/4 v15, 0x2

    goto/16 :goto_2

    :goto_6
    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move/from16 v8, p9

    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    iput-object v6, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {v1, v6}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v8, 0x0

    :try_start_4
    iput-object v8, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-lez v2, :cond_b

    :try_start_5
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v6

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v10}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result v10

    invoke-direct {v1, v2, v6, v10}, Lcom/android/camera2/MiCamera2;->preparePreviewImageReader(Lcom/android/camera/CameraSize;II)V

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v10, "startPreviewSession: add PreviewImageReader configuration: format=0x%x size=%dx%d"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v12, v13

    invoke-static {v6, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    invoke-static {v10, v2, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    const/4 v6, 0x1

    and-int/2addr v2, v6

    const/16 v6, 0x20

    if-nez v2, :cond_c

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    const/4 v10, 0x2

    and-int/2addr v2, v10

    if-eqz v2, :cond_e

    :cond_c
    const/4 v2, 0x1

    if-ne v3, v2, :cond_d

    const/4 v2, 0x2

    goto :goto_7

    :cond_d
    const/16 v2, 0xa

    :goto_7
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/camera2/MiCamera2;->prepareRawImageReader(Lcom/android/camera/CameraSize;I)V

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v10, "startPreviewSession: add RawImageReader configuration: format=0x%x size=%dx%d"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v12, v13

    invoke-static {v3, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x3

    invoke-static {v10, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/2addr v2, v13

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraSize;->width:I

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    new-instance v8, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-direct {v8, v2, v3, v6}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    sget-object v10, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v12, "startPreviewSession: setup input configuration: format=0x%x size=%dx%d"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v13, 0x1

    aput-object v2, v14, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v14, v3

    invoke-static {v11, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v10, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v4, :cond_f

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v10, "startPreviewSession: add zoomMapSurface configuration: format=0x%x size=%s"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-static/range {p4 .. p4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v12, v11

    invoke-static {v3, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_f
    iput-object v7, v1, Lcom/android/camera2/MiCamera2;->mCameraCloseCallback:Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    new-instance v2, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v3, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v2, v1, v3, v7}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iput-object v2, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    new-instance v3, Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v3, v1, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    iget-boolean v4, v1, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    if-eqz v4, :cond_10

    iget v4, v2, Lcom/android/camera/CameraSize;->width:I

    iget v7, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v3, v4, v7}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v3, Landroid/view/Surface;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v4, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v7, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_8

    :cond_10
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v3, Landroid/util/Size;

    iget v7, v2, Lcom/android/camera/CameraSize;->width:I

    iget v10, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v3, v7, v10}, Landroid/util/Size;-><init>(II)V

    const-class v7, Landroid/view/SurfaceHolder;

    invoke-direct {v4, v3, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    :goto_8
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v7, v10, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v9, v10, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startPreviewSession: first add PreviewSurface configuration: size="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v11, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    :cond_11
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    const/4 v3, 0x0

    invoke-interface {v9, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "startPreviewSession: add PreviewSurface configuration: format=0x%x size=%s"

    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v10, v11

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v10, v12

    invoke-static {v3, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyAiShutterIfNeed()V

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPreviewSession: setup output configuration number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    if-eqz v2, :cond_12

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_13

    :cond_12
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isZslEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_a

    :cond_13
    move v2, v11

    :goto_a
    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "turns capture.zsl.mode on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ZSL_CAPTURE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyZsd(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_14
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "turns PQ feature on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_15
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "turns SAT crop region feature on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v2

    goto :goto_b

    :cond_16
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_b
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/HybridZoomingSystem;->toMTKCropRegion(FLandroid/graphics/Rect;)[I

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_MULTI_CAM_CONFIG_SCALER_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyCropFeature(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyMtkQuickPreview()V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportMTKPortraitMultiFeatureMode()Z

    move-result v2

    if-eqz v2, :cond_18

    const v2, 0x8002

    if-eq v5, v2, :cond_17

    const v2, 0x9000

    if-ne v5, v2, :cond_18

    :cond_17
    const/4 v2, -0x1

    const/4 v14, 0x1

    goto :goto_d

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_c

    :cond_19
    const/4 v2, -0x1

    const/4 v14, -0x1

    goto :goto_d

    :cond_1a
    :goto_c
    move v14, v11

    const/4 v2, -0x1

    :goto_d
    if-eq v14, v2, :cond_1b

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFeatureMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_MULTI_CAM_FEATURE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v14}, Lcom/android/camera2/compat/MiCameraCompat;->applyFeatureMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1b
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportMtkIspHidl()Z

    move-result v2

    if-eqz v2, :cond_1c

    const v2, 0x8008

    if-eq v5, v2, :cond_1c

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "turns tuning buffer on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_CAPTURE_ISP_META_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1c
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v3, p5

    move-object v4, v8

    move-object v5, v9

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_f

    :cond_1d
    move/from16 v2, v20

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_21

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->supportPhysicCameraId()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    const-string v3, "android.control.extendedSceneMode"

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getExtendSceneMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1e
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->isCinematicVideoSupported()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v14, 0x1

    goto :goto_e

    :cond_1f
    move v14, v11

    :goto_e
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->getExtendedMaxZoomCaps()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_21

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->EXTENDED_MAX_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendedMaxZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    :cond_21
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v3, p5

    move-object v4, v8

    move-object v5, v9

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2
    :try_end_b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: IAE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v2, v0

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: ISE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_f

    :catch_2
    move-exception v0

    move-object v2, v0

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: CAE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_f
    sget-boolean v2, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelTagOpen:Z

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    iget-object v1, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-virtual {v2, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setParallelSessionConfig(Lcom/android/camera2/CaptureSessionConfigurations;)V

    :cond_22
    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v1
.end method

.method private triggerCapture()V
    .locals 5

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedFlashOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "trigger capture need flash"

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportSnapShotTorch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportCustomFlashCurrent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isFaceExist()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    const-string v3, "flash_auto_face"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_1
    const/16 v0, 0x78

    const-string v3, "flash_auto_no_face"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    :goto_0
    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v3, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigs;->setFlashCurrent(I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setFlashFireRequestId(I)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMFAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->lockFocusInCAF(Z)Z

    invoke-virtual {p0, v2}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    invoke-virtual {p0, v2, v2}, Lcom/android/camera2/MiCamera2;->lockExposure(ZZ)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportHDRCaptureWaitForAEAWBLock()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportXiaomiAmbilight()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isProAmbilightOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    :goto_1
    return-void
.end method

.method private triggerDeviceChecking(ZZ)V
    .locals 3

    sget-boolean v0, Lcom/mi/config/Device;->IS_STABLE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDeviceWatchDog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera2/MiCamera2;->FORCE_STOP_WATCHDOG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerDeviceChecking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private triggerFlashStateTimeLock()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private triggerPrecapture()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->needTriggerAE()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->needWaitAEConverged()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->lockFocus()V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runCaptureSequence()V

    :goto_2
    return-void
.end method

.method private unlockAfAeForMultiFrame()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMFAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setMFAfAeLock(Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->unlockExposure()V

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->lockFocusInCAF(Z)Z

    :cond_0
    return-void
.end method

.method private unlockFocusForCapture()V
    .locals 5

    const-string/jumbo v0, "unlockFocusForCapture"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unlock focus, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockFocusForCapture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method private useParallelVTCameraSnapshot(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportParallelCameraDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isParallelSupportedCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result p0

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method private waitFlashClosed()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void
.end method


# virtual methods
.method public alwaysUseRemosaicSize()Z
    .locals 0

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result p0

    return p0
.end method

.method public applyAiShutterEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiShutterEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiShutterEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public applyAiShutterIfNeed()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportAiShutter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAiShutterEnable()Z

    move-result v0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turns ai shutter on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_AISHUTTER_FEATURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_AISHUTTER_FEATURE_ENABLED_QCOM:Lcom/android/camera2/vendortag/VendorTag;

    int-to-byte v3, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiShutterEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public applyHighQualityPreferred(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHighQualityPreferred()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyHighQualityPreferred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHighQualityPreferred(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public applyMtkQuickPreview()V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "turns quick preview on"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_QUICK_PREVIEW:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_QUICK_PREVIEW_ON:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    invoke-static {v0, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackwardCaptureHint(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    iget v4, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-eq v4, v0, :cond_4

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v4, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/MemoryHelper;->resetCapturedNumber(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/MemoryHelper;->shouldTrimMemory(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v4, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/MemoryHelper;->resetCapturedNumber(I)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v4, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    :goto_2
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isAlgoUpUltraPixelMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    :cond_7
    :goto_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportMtkIspHidl()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isParallelShotType()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->isSquare()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    move v3, v1

    :goto_4
    if-ne p2, v0, :cond_b

    if-eqz v3, :cond_b

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrameRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    :cond_b
    return-void
.end method

.method public applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getThumbnailSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v2, Landroid/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getJpegQuality()I

    move-result p0

    int-to-byte p0, p0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method applySettingsForVideoShot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public applyVideoHdrMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoHdrEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public cancelContinuousShot()V
    .locals 0

    return-void
.end method

.method public cancelFocus(I)V
    .locals 4

    const-string v0, "cancelFocus"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "cancelFocus afBuilder == null, return"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v2}, Lcom/android/camera2/CameraConfigs;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v2}, Lcom/android/camera2/CameraConfigs;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "Failed to cancel focus, IllegalState"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x6

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method public cancelSession()V
    .locals 4

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSession: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v1, v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v1, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->replaceSessionClose()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V

    :goto_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSession: reset session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resetConfigs()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "Failed to stop repeating, IllegalState"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "Failed to stop repeating session"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public captureAbortBurst()V
    .locals 7

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureAbortBurst: shot queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to abort burst, IllegalState"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "captureAbortBurst: session is null %s, cameraDevice is close %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V
    .locals 3
    .param p2    # Lcom/android/camera2/Camera2Proxy$PictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/camera/core/ParallelCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->disableSat()V

    :cond_0
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;-><init>(Lcom/android/camera2/MiCamera2;ILandroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v0, p2}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/camera2/MiCamera2ShotBurst;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isNeedPausePreview()Z

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera2/MiCamera2ShotBurst;-><init>(Lcom/android/camera2/MiCamera2;IZ)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v0, p2}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    :goto_1
    return-void
.end method

.method public captureGroupShotPictures(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;ILandroid/content/Context;)V
    .locals 2
    .param p1    # Lcom/android/camera2/Camera2Proxy$PictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/camera/core/ParallelCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/android/camera2/MiCamera2ShotGroup;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {v0, p0, p3, p4, v1}, Lcom/android/camera2/MiCamera2ShotGroup;-><init>(Lcom/android/camera2/MiCamera2;ILandroid/content/Context;Landroid/hardware/camera2/CaptureResult;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    return-void
.end method

.method public captureVideoSnapshot(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V
    .locals 1

    new-instance v0, Lcom/android/camera2/MiCamera2ShotVideo;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotVideo;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    return-void
.end method

.method public close(I)Z
    .locals 6

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "E: close: cameraId = %d, reason = %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/SuperNightReprocessHandler;->cancel()V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    :cond_0
    iput-boolean v5, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-nez p1, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportFlush()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportAbortCaptures()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    check-cast p1, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x6

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    move v4, v5

    :cond_4
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCameraClosed()V

    :cond_5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePhotoImageReader()V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePreviewImageReader()V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeRawImageReader()V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeVideoSnapshotImageReader()V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeDepthImageReader()V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePortraitRawImageReader()V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->unregisterPreviewMetadata()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->makeClobber()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    :cond_6
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->reset()V

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: close: cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public enableSat()V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "enableSat: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "enableSat: X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceTurnFlashONAndPausePreview()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setFlashFireRequestId(I)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    return-void
.end method

.method public forceTurnFlashOffAndPausePreview()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void
.end method

.method protected getActiveRawSize(I)Lcom/android/camera/CameraSize;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveRawSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveRawSize: invalid satMasterCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfWide()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraTele()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfTele()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfWide()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraWide()Lcom/android/camera/CameraSize;

    move-result-object p0

    :goto_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveRawSize: cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p0
.end method

.method public getActivityHashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getActivityHashCode()I

    move-result p0

    return p0
.end method

.method public getAlgorithmPreviewFormat()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result p0

    return p0
.end method

.method public getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public getBinningPictureSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getBinningPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public getBokehAuxCameraId()I
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getBokehDepthSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/Camera2Proxy;->mCacheImageDecoder:Lcom/android/zxing/CacheImageDecoder;

    return-object p0
.end method

.method public getCameraConfigs()Lcom/android/camera2/CameraConfigs;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-object p0
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method protected getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public getCurrentAEState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected getDepthImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getExposureCompensation()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result p0

    return p0
.end method

.method public getExtendSceneMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getExtendSceneMode()I

    move-result p0

    return p0
.end method

.method protected getFakeSatMainCaptureSurface(I)Landroid/view/Surface;
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "getFakeSatMainCaptureSurface: unavailable for non-SAT mode"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeSatMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFakeSatMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getFakeSatOutputSize()Landroid/util/Size;
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p0, v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFakeSatOutputSize: satMasterCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeSatOutputSize: invalid satMasterCameraId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method protected getFakeSatTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mFakeSatTeleSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getFakeSatUltraTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mFakeSatUltraTeleSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getFakeSatUltraWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mFakeSatUltraWideSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getFakeSatWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mFakeSatWideSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getFlashMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result p0

    return p0
.end method

.method public getFocusMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result p0

    return p0
.end method

.method public getHDRMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getHDRMode()I

    move-result p0

    return p0
.end method

.method protected getMacroParallelSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mMacroParallelSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getMainCaptureSurface(I)Landroid/view/Surface;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "getMainCaptureSurface: non-SAT mode"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getParallelShotSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPhotoImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getPhysicalBokehMainId()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokehId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOptimalMasterBokehId()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPhysicalBokehSubId()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getOptimalSlaveBokehId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOptimalSlaveBokehId()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/config/Device;->isSupportCameraRole()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getBokehAuxCameraId()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPictureFormat()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result p0

    return p0
.end method

.method public getPictureMaxImages()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getPhotoMaxImages()I

    move-result p0

    return p0
.end method

.method public getPictureSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method protected getPortraitRawImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getPreviewCallbackEnabled()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    return p0
.end method

.method public getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getPreviewMaxImages()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result p0

    return p0
.end method

.method protected getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public getPreviewSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method protected getPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method protected getQcfaRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mQcfaParallelSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRawCallbackType()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    return p0
.end method

.method protected getRawImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method protected getRawImageWriter()Landroid/media/ImageWriter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mRawImageWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method public getRawMacroSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawMacroSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getRawSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getRawSurfaceForTuningBuffer()Landroid/view/Surface;
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawSurfaceIndexForTuningBuffer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRawTeleSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawTeleSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getRawUltraTeleSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawUltraTeleSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getRawUltraWideSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawUltraWideSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getRawWideSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawWideSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getRecordSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    return-object p0
.end method

.method protected getRemoteSurfaceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mParallelCaptureSurfaceList:Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method protected getSATRemosaicRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mSATRemosaicParallelSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getSATSubCameraIds()[I
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera2/CameraCapabilities;->getViewAngle(Z)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/camera2/-$$Lambda$MiCamera2$ZR6_xcFcODN7zPElZlKtti9-NKU;

    invoke-direct {v2, v0}, Lcom/android/camera2/-$$Lambda$MiCamera2$ZR6_xcFcODN7zPElZlKtti9-NKU;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportUltraTele()Z

    move-result p0

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    new-array p0, p0, [I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v4

    aput v4, p0, v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    aput v1, p0, v3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    aput v1, p0, v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    aput v1, p0, v0

    move-object v0, p0

    goto :goto_2

    :cond_2
    sget-boolean p0, Lcom/mi/config/Device;->IS_J20S:Z

    if-nez p0, :cond_3

    new-array v0, v0, [I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p0

    aput p0, v0, v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    aput p0, v0, v3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p0

    aput p0, v0, v2

    goto :goto_2

    :cond_3
    new-array v0, v2, [I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p0

    aput p0, v0, v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    aput p0, v0, v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mapSatCameraIdToFrameworkCameraId(I)I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public getSatMasterCameraId()I
    .locals 9

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    sget-boolean v1, Lcom/mi/config/Device;->IS_F1:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const-string v4, " zoomRatio = "

    const-string v5, "getSatMasterCameraId: error satCameraId = "

    const/4 v6, 0x1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/mi/config/Device;->IS_F10:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/mi/config/Device;->IS_F11:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v1

    cmpg-float v7, v1, v2

    if-gez v7, :cond_1

    if-eq v0, v6, :cond_1

    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v7

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_2

    if-ne v0, v6, :cond_2

    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/mi/config/Device;->IS_J20S:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result p0

    cmpl-float v1, p0, v2

    if-ltz v1, :cond_3

    if-ne v0, v6, :cond_3

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    return v3
.end method

.method public getSatPhysicalCameraId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mapSatCameraIdToFrameworkCameraId(I)I

    move-result p0

    return p0
.end method

.method protected getSatRawSurface(I)Landroid/view/Surface;
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatRawSurface: satMasterCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatRawSurface: invalid satMasterCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawWideSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawUltraTeleSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawTeleSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawWideSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawUltraWideSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getSceneMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getSceneMode()I

    move-result p0

    return p0
.end method

.method public getSensorRawImageSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public getSessionConfigs()Lcom/android/camera2/CaptureSessionConfigurations;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    return-object p0
.end method

.method protected getSharedRawSurface()Landroid/view/Surface;
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mSharedRawSurfaceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShotBoostParams()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mShotBoostParams:Ljava/util/function/Consumer;

    return-object p0
.end method

.method protected getSubRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mSubParallelSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getSuperNight()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p0

    return p0
.end method

.method protected getTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mTeleParallelSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getTeleRemoteSurfaceIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mTeleParallelSurfaceIndex:I

    return p0
.end method

.method protected getTuningRemoteSurface()Landroid/view/Surface;
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mTuningBufferSurfaceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getUltraTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mUltraTeleParallelSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getUltraTeleRemoteSurfaceIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mUltraTeleParallelSurfaceIndex:I

    return p0
.end method

.method protected getUltraWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mUltraWideParallelSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getUltraWideRemoteSurfaceIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mUltraWideParallelSurfaceIndex:I

    return p0
.end method

.method protected getVideoSnapshotImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method protected getWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mWideParallelSurfaceIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected getWideRemoteSurfaceIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2;->mWideParallelSurfaceIndex:I

    return p0
.end method

.method public getZoomRatio()F
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result p0

    return p0
.end method

.method protected isAlgoUpUltraPixelMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result p0

    const v0, 0x9004

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isBeautyOn()Z
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "Assume front beauty is off in case beautyValues is unavailable."

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isCaptureBusy(Z)Z
    .locals 7

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->hasPendingCallable(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isCaptureBusy: shotboost going on"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCaptureBusy: timeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isCaptureBusy: simple return true"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v5, 0x320

    if-lt v0, v5, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSensorHdrSupported()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SENSOR_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-lez v0, :cond_6

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCaptureBusy: sensorHdr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    :goto_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCaptureBusy: iso:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    const-wide/16 v5, 0x32

    cmp-long p1, v3, v5

    if-gez p1, :cond_7

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCaptureBusy: time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p1

    iget p0, p0, Lcom/android/camera2/MiCamera2;->DEF_QUICK_SHOT_THRESHOLD_SHOT_CACHE_COUNT:I

    if-lt p1, p0, :cond_8

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCaptureBusy: size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    return v1
.end method

.method public isDepthFocus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, p0}, Lcom/android/camera2/CaptureResultParser;->isDepthFocus(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public isDisconnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    return p0
.end method

.method public isFacingFront()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isIn3OrMoreSatMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result p0

    const v0, 0x9002

    if-ne v0, p0, :cond_0

    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMultiSurfaceSatMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result v0

    const v1, 0x9002

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isSupportCameraRole()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInTimerBurstShotting()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isInTimerBurstShotting()Z

    move-result p0

    return p0
.end method

.method public isMacroMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isMacroMode()Z

    move-result p0

    return p0
.end method

.method public isModuleAnchorFrame()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isModuleAnchorFrame()Z

    move-result p0

    return p0
.end method

.method protected isMultiSnapStopRequest()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isMultiSnapStopRequest()Z

    move-result p0

    return p0
.end method

.method public isNeedFlashForAuto(Ljava/lang/Integer;I)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    if-gez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFlashMode()I

    move-result p2

    :cond_1
    sget-boolean v0, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flashMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",currentAEState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-static {}, Lcom/mi/config/Device;->isSupportedAsdFlash()Z

    move-result p1

    if-nez p1, :cond_5

    move v0, v1

    :cond_5
    const/4 p1, 0x3

    if-eq p1, p2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerFlashStateTimeLock()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-boolean p1, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "trigger flash state time lock!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    :cond_8
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    sget-boolean p1, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz p1, :cond_9

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNeedFlashForAuto: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    return p0
.end method

.method public isNeedFlashOn()Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/16 p0, 0x65

    if-eq v0, p0, :cond_7

    return v3

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedFlashOn: auto mode state:  ae:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", flash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentFlashState()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentFlashState()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_6

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->isHighPrioritySuperNightPreferred()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isFlashAutoDetectionEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    return v3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    return v3

    :cond_4
    return v1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_6

    return v1

    :cond_6
    :goto_0
    return v3

    :cond_7
    return v1
.end method

.method public isNeedPreviewThumbnail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSwMfnrEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isParallelBusy(Z)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelSessionReady()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isParallelBusy: Session is null or pending surface list is not null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MCC_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MCC_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setParallelMasterCameraId(Ljava/lang/Integer;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isParallelBusy: timeout:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->resetParallelTaskQueue()V

    :cond_4
    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isShutterReturned()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isParallelBusy: shutter is not return"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    if-eqz p1, :cond_8

    return v2

    :cond_8
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getFrontProcessingCount()I

    move-result p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getMaxQueueSize()I

    move-result p1

    if-lt p0, p1, :cond_9

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "isParallelBusy: FrontProcessingCount is full"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    return v2

    :cond_a
    return v0
.end method

.method public isPreviewReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQcfaEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isQcfaEnable()Z

    move-result p0

    return p0
.end method

.method public isSessionReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isShotQueueMultitasking()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleBokehEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isSingleBokehEnabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$preparePreviewImageReader$1$MiCamera2(Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->lambda$preparePreviewImageReader$1(Landroid/media/ImageReader;)V

    return-void
.end method

.method public lockExposure(Z)V
    .locals 2

    const-string v0, "lockExposure"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->setAELock(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public lockExposure(ZZ)V
    .locals 1

    const-string v0, "lockExposure"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    :cond_1
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/camera2/MiCamera2;->setAELock(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public notifyVideoStreamEnd()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->getEndOfStreamType()I

    move-result v2

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoStreamState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    move-result v1

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVideoStreamEnd: requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_3

    :cond_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v5, "notifyVideoStreamEnd: nullSession = %b, nullDevice = %b, nullSurface = %b"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-nez v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "notifyVideoStreamEnd: "

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_3
    return-void
.end method

.method public onCameraDisconnected()V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: onCameraDisconnected"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraCloseCallback:Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;->onPreviewRelease(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraCloseCallback:Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    :cond_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: onCameraDisconnected"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCameraError()V
    .locals 2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: onCameraError"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraCloseCallback:Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;->onPreviewRelease(II)V

    :cond_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: onCameraError"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    :cond_0
    return-void
.end method

.method protected onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3, v2}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needUnlockFocusAfterCapture()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->unlockFocusForCapture()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->unlockAfAeForMultiFrame()V

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    :cond_3
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureCompleted(Z)V

    if-nez p1, :cond_4

    invoke-interface {v0, v2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->getShotBoostParams()Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "do shotboost later"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->removeShotBoostCallable()V

    new-instance v3, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;

    iget v4, p0, Lcom/android/camera2/Camera2Proxy;->mActualCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v5

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/config/DataItemFeature;->getShotBoostMaxShotCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-direct {v3, v4, v1, v0}, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;-><init>(Ljava/lang/String;ZLjava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getCaptureInterval()J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/xiaomi/camera/device/CameraService;->addShotBoostCallableDelayed(Lcom/xiaomi/camera/device/callable/CameraCallable;J)V

    :cond_6
    :goto_3
    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result p2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapturePictureFinished failure: mMiCamera2ShotQueue.poll, size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " removeResult: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_4
    return-void
.end method

.method public onMultiSnapEnd(ZLcom/android/camera2/MiCamera2Shot;)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiSnapEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    :cond_0
    return-void
.end method

.method public onParallelImagePostProcStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParallelImagePostProcStart: mMiCamera2ShotQueue.poll, size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPartialPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewMetadata:Lcom/android/camera/PreviewMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewMetadata;->onPartialPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPartialPreviewMetadata(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->onPartialPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onPreviewComing()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->onPreviewComing()Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewMetadata:Lcom/android/camera/PreviewMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewMetadata;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2Shot;->onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/camera2/MiCamera2;->triggerDeviceChecking(ZZ)V

    const-string v0, "pausePreview"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePreview: cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_1

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "pausePreview: null session"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to pause preview, IllegalState"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to pause preview "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public registerPreviewMeatedata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/IFuncPreviewMetadataListener;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewMetadata:Lcom/android/camera/PreviewMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewMetadata;->registerPreviewMeatedata(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public registerPreviewPartialMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/IFuncPreviewMetadataListener;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewMetadata:Lcom/android/camera/PreviewMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewMetadata;->registerPreviewPartialMetadata(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 0
    .param p1    # Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->setClientCb(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    :cond_0
    return-void
.end method

.method public releaseFakeSurfaceIfNeed()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    return-void
.end method

.method public releasePreview(I)V
    .locals 6

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: releasePreview: reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_1

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: releasePreview: null session"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to release preview, IllegalState"

    invoke-static {v2, v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to release preview "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    throw p1

    :cond_2
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: releasePreview"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public resetConfigs()V
    .locals 2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: resetConfigs"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera2/CameraConfigs;

    invoke-direct {v0}, Lcom/android/camera2/CameraConfigs;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera2/CaptureSessionConfigurations;->reset()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: resetConfigs"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetFlashStateTimeLock()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "reset flash state time lock!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    return-void
.end method

.method public resumePreview()I
    .locals 8

    const-string v0, "resumePreview"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "resumePreview"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v0, v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePreview: cameraId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " highSpeed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "high speed repeating for camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePreview: high speed repeating sequenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v1, v0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto/16 :goto_4

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v0

    const/high16 v3, 0x41700000    # 15.0f

    cmpl-float v0, v0, v3

    const/4 v4, 0x1

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "resumePreview: addTarget mZoomMapSurface"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "resumePreview: removeTarget mZoomMapSurface"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normal repeating for camera "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePreview: repeating sequenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :goto_3
    :try_start_5
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "Failed to resume preview, IllegalState"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_4
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "Failed to resume preview"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :cond_6
    :goto_5
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public sendSatFallbackDisableRequest(ZZ)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSatFallbackDisableRequest: E. disable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRepeatingRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p1, 0x6

    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigs;->setSatFallbackDisable(Z)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p0, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :goto_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "sendSatFallbackDisableRequest: X."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendSatFallbackRequest(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "sendSatFallbackRequest: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v2, 0xa2

    if-ne p1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p1, 0x6

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendSatFallbackRequest: X. requestId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setAELock(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAELock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAELock(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method public setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "setAERegions"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "setAFRegions"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAIIEPreviewEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiAIIEPreviewEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiAIIEPreviewEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setASDEnable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setASDEnable(Z)Z

    move-result v0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setASDEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setASDPeriod(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiSceneDetectPeriod(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiSceneDetectPeriod(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setASDScene(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setASDScene(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAWBLock(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAWBLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAWBLock(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method public setAWBMode(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAWBMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAWBMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_0
    return-void
.end method

.method public setActivityHashCode(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivityHashCode(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setActivityHashCode(I)V

    return-void
.end method

.method public setAiASDEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiASDEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAiMoonEffectEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiMoonEffectEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiMoonEffectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAiShutterExistMotion(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setAiShutterExistMotion(Z)Z

    return-void
.end method

.method public setAlgorithmPreviewFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAlgorithmPreviewFormat(I)Z

    iget p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePreviewImageReader()V

    :cond_0
    return-void
.end method

.method public setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)Z

    iget p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePreviewImageReader()V

    :cond_0
    return-void
.end method

.method public setAmbilightAeTarget(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbilightAeTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAmbilightAeTarget(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAmbilightMode(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbilightMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAmbilightMode(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    return-void
.end method

.method public setAntiBanding(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAntiBanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAntiBanding(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAsdDirtyEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAsdDirtyEnable(Z)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAsdDirtyEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAutoZoomMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAutoZoomMode(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAutoZoomMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAutoZoomScaleOffset(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAutoZoomScaleOffset(F)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAutoZoomScaleOffset(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAutoZoomStartCapture([FZ)V
    .locals 2

    const-string v0, "setAutoZoomStartCapture"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AUTOZOOM_START:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, p2, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAutoZoomStopCapture(IZ)V
    .locals 2

    const-string v0, "setAutoZoomStopCapture "

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AUTOZOOM_STOP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setBinningPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBinningPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setBinningPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setBokehDepthSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setBokehDepthSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setBurstShotSpeed(I)V
    .locals 0

    return-void
.end method

.method public setCacheImageDecoder(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mCacheImageDecoder:Lcom/android/zxing/CacheImageDecoder;

    return-void
.end method

.method public setCameraAI30(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCameraAi30Enable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureBusyCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureBusyCallback: shot queue empty"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;->onCaptureCompleted(Z)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCaptureTime(J)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setCaptureTime(J)V

    return-void
.end method

.method public setCaptureTriggerFlow([I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setCaptureTriggerFlow([I)V

    return-void
.end method

.method public setCinematicPhotoEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setCinematicPhotoEnabled(Z)V

    return-void
.end method

.method public setCinematicVideoEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCinematicVideoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCinematicVideoEnabled(Z)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setColorEffect(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setColorEffect(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setColorEnhanceEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setColorEnhanceEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setContrast(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContrast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setContrastLevel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setCustomAWB(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomAWB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCustomAWB(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_0
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDeviceOrientation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mDisplayOrientation:I

    return-void
.end method

.method public setDodepurpleEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDodepurpleEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setDualBokehEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDualBokehEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setDualCamWaterMarkEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setDualCamWaterMarkEnable(Z)Z

    return-void
.end method

.method public setEnableEIS(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableEIS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEnableEIS(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setEnableOIS(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportOIS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableOIS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEnableOIS(Z)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setEnableZsl(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableZsl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEnableZsl(Z)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExposureCompensation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExposureCompensationIndex(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setExposureMeteringMode(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExposureMeteringMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExposureMeteringMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setExposureTime(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setExposureTime(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setExtendSceneMode(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExtendSceneMode(I)Z

    move-result v0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExtendSceneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setEyeLight(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEyeLight(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyEyeLight(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFNumber(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFNumber(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setFaceAgeAnalyze(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceAgeAnalyzeEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFaceScore(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceScoreEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceScore(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFaceWaterMarkEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceWaterMarkEnable(Z)Z

    return-void
.end method

.method public setFaceWaterMarkFormat(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceWaterMarkFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFlashAutoDetectionEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFlashAutoDetectionEnabled(Z)V

    return-void
.end method

.method public setFlashMode(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFlashMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public setFlawDetectEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFlawDetectEnable(Z)Z

    return-void
.end method

.method public setFocusDistance(F)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFocusDistance(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFocusMode(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFocusMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFpsRange(Landroid/util/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFpsRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewFpsRange(Landroid/util/Range;)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setFrontMirror(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFrontMirror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setFrontMirror(Z)V

    return-void
.end method

.method public setGlobalWatermark()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->setGlobalWatermark()V

    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setGpsLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setHDR(Lcom/android/camera2/Camera2Proxy$HDRStatus;)V
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHDR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRStatus(Lcom/android/camera2/Camera2Proxy$HDRStatus;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHDRCheckerEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRCheckerEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHDRCheckerStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRCheckerStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRCheckerStatus(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHDRMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHFRDeflickerEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHFRDeflickerEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHFRDeflicker(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHHT(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHHTEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHdr10VideoMode(Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setHistogramStatsEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHistogramStatsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHistogramStatsEnabled(Z)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setISO(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setISO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setISO(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setInTimerBurstShotting(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInTimerBurstShotting: ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setInTimerBurstShotting(Z)Z

    return-void
.end method

.method public setIsFaceExist(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setIsFaceExist(Z)V

    return-void
.end method

.method public setJpegQuality(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setJpegQuality(I)Z

    return-void
.end method

.method public setJpegRotation(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setJpegRotation(I)Z

    return-void
.end method

.method public setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setThumbnailSize(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setLLS(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setLLSEnabled(Z)Z

    return-void
.end method

.method public setLLSForceDisabled(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLLSForceDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setLLSForceDisabled(Z)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setLensDirtyDetect(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setLensDirtyDetectEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setMFLockAfAe(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMFAfAeLock(Z)V

    return-void
.end method

.method public setMacroMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMacroMode(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setMarcroPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getMacroPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMacroPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setMfnr(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMfnrEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setMiviSuperNightMode(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMiviSuperNightMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMiviSuperNightMode(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setModuleAnchorFrame(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setModuleAnchorFrame(Z)V

    return-void
.end method

.method public setModuleParameter(II)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModuleParameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera2/MiCamera2PreviewNormal;

    invoke-direct {v0, p1, p2}, Lcom/android/camera2/MiCamera2PreviewNormal;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    return-void
.end method

.method public setMtkPipDevices([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMtkPipDevices([I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setMultiSnapStopRequest(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setMultiSnapStopRequest(Z)V

    return-void
.end method

.method public setNeedPausePreview(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setPausePreview(Z)Z

    return-void
.end method

.method public setNeedSequence(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setNeedSequence(Z)V

    return-void
.end method

.method public setNewWatermark(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setNewWatermark(Z)V

    return-void
.end method

.method public setNormalWideLDC(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNormalWideLDC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setNormalWideLDCEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setOnTripodModeStatus([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setOnTripodScenes([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyOnTripodModeStatus(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setOpticalZoomToTele(Z)V
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportedFastZoomIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportFastZoomIn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOpticalZoomToTele: toTele = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mToTele:Z

    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyStFastZoomIn(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public setParallelSettings(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setParallelSettings(II)V

    return-void
.end method

.method public setPendingClose()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mIsPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V
    .locals 0

    iget p1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    if-nez p1, :cond_0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehMainId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binds main output stream to camera "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehSubId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Binds sub output stream to camera "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoFormat(I)Z

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader()V

    :cond_0
    return-void
.end method

.method public setPictureMaxImages(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoMaxImages()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoMaxImages(I)V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader()V

    :cond_0
    return-void
.end method

.method public setPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoSize(Lcom/android/camera/CameraSize;)Z

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader()V

    :cond_0
    return-void
.end method

.method public setPortraitLighting(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPortraitLightingPattern(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setPreviewMaxImages(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewMaxImages(I)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setQcfaEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setQcfaEnable(Z)V

    return-void
.end method

.method public setQuickShotAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setQuickShotAnimation(Z)V

    return-void
.end method

.method public setRawSizeOfMacro(Lcom/android/camera/CameraSize;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfMacro(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfTele(Lcom/android/camera/CameraSize;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfTele(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfWide(Lcom/android/camera/CameraSize;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfWide(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setSATRemosaicPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSATRemosaicPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSATRemosaicPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setSATUltraWideLDC(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSATUltraWideLDC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, p0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applySATUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    return-void
.end method

.method public setSatIsZooming(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSatIsZooming(Z)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySatIsZooming(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setSaturation(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSaturation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSaturationLevel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSceneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSceneMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSensorRawImageSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSensorRawImageSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setSharpness(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSharpness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSharpnessLevel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setShot2Gallery(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShot2Gallery: isShot2Gallery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setShot2Gallery(Z)Z

    return-void
.end method

.method public setShotBoostParams(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotBoostParams:Ljava/util/function/Consumer;

    return-void
.end method

.method public setShotSavePath(Ljava/lang/String;ZZ)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShotSavePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isParallel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera2/CameraConfigs;->setShotPath(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setShotType(I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShotType: algo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setShotType(I)Z

    return-void
.end method

.method public setSingleBokeh(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSingleBokehEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSkinColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSkinColor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSpecshotModeEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSpecshotModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSpecshotModeEnable(Z)Z

    return-void
.end method

.method public setSubPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSubPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSubPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setSuperNight(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setSuperNightEnabled(Z)V

    return-void
.end method

.method public setSuperResolution(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSuperResolutionEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSwMfnr(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSwMfnrEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setTargetZoom(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTargetZoom(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTargetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setThermalLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setThermalLevel(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyThermal(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setTimeWaterMarkEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setTimeWaterMarkEnable(Z)Z

    return-void
.end method

.method public setTimeWatermarkValue(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setTimeWaterMarkValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTrackFocusEnable(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrackFocusEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTrackFocusEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setTuningBufferSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getTuningBufferSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setTuningBufferSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setTuningMode(B)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTuningMode(B)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setUltraPixelPortrait(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraPixelPortraitEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setUltraTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getStandalonePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setUltraWideLDC(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUltraWideLDC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraWideLDCEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ULTRA_WIDE_LENS_DISTORTION_CORRECTION_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isUltraWideLDCEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    :cond_0
    return-void
.end method

.method public setUltraWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setUseLegacyFlashMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setUseLegacyFlashMode(Z)V

    return-void
.end method

.method public setVendorSetting(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVideoBokehLevelBack(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehLevelBack(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoBokehLevelFront(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehLevelFront(F)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoFilterColorRetentionBack(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterColorRetentionBack(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setVideoFilterColorRetentionFront(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterColorRetentionFront(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setVideoFilterColorRetentionMode(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setVideoBokehColorRetentionMode(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehColorRetentionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;Z)V

    :cond_0
    return-void
.end method

.method public setVideoFilterId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterId(I)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoFpsRange(Landroid/util/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoFpsRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFpsRange(Landroid/util/Range;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setVideoLogEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoLogEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setIsVideoLogEnabled(Z)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    return-void
.end method

.method public setWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomRatio(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setZoomRatio(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setZoomRatioForCapture(F)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomRatioForCapture(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigs;->setZoomRatio(F)Z

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFaceDetectionEnabled(Z)Z

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public startFocus(Lcom/android/camera/module/loader/camera2/FocusTask;I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "startFocus"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setFocusTask(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startFocus afBuilder == null, return"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->applySettingsForFocusCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isTrackFocusOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyCancelTouchTackAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_3
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/camera2/FocusTask;->setRequest(Landroid/hardware/camera2/CaptureRequest;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-direct {p0, p2, v0, v2, p1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v1}, Lcom/android/camera2/CameraConfigs;->setFocusMode(I)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Preview;->needForVideo()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "Failed to start focus: "

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p2, 0x6

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_1
    return-void
.end method

.method public startHighSpeedRecordPreview()V
    .locals 2

    const-string/jumbo v0, "startHighSpeedRecordPreview"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIsHfrPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public startHighSpeedRecordSession(Landroid/view/Surface;Landroid/view/Surface;IILandroid/util/Range;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 19
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string/jumbo v5, "startHighSpeedRecordSession"

    invoke-direct {v1, v5}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v10, 0x2

    aput-object v2, v7, v10

    const/4 v11, 0x3

    aput-object v3, v7, v11

    const-string/jumbo v12, "startHighSpeedRecordSession: operatingMode=0x%x previewSurface=%s recordSurface=%s fpsRange=%s"

    invoke-static {v6, v12, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v5, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    iput-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    iput-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v0

    iput v0, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isCinematicVideoSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_0

    :cond_1
    move v3, v9

    :goto_0
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_2
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v11}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startHighSpeedRecordSession: reset session "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraCloseCallback:Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    new-array v0, v10, [Landroid/view/Surface;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v9

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "startHighSpeedRecordSession: add PreviewSurface configuration: format=0x%x size=%s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "startHighSpeedRecordSession: add RecordSurface configuration: format=0x%x size=%s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startHighSpeedRecordSession: setup output configuration number: 2"

    invoke-static {v11, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v2

    const/16 v3, 0x78

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "turns PQ feature on"

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v5, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v6, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v2, v5, v6}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v8}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->isUnifySlowmotionSession()Z

    move-result v5

    const/16 v6, 0xf0

    if-eqz v5, :cond_6

    if-ne v2, v3, :cond_3

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_120FPS:[I

    goto :goto_1

    :cond_3
    if-ne v2, v6, :cond_5

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_240FPS:[I

    :goto_1
    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v6, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SMVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v5, v6, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySlowMotionVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startHighSpeedRecordSession: turns smvrmode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v16

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_6

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Slow Motion Recording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-ne v2, v3, :cond_7

    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startHighSpeedRecordSession: maxFps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v5, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v3, v1, v5, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_6

    :cond_7
    if-ne v2, v6, :cond_9

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SMVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v5, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_240FPS:[I

    invoke-virtual {v2, v3, v5}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_240FPS:[I

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySlowMotionVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startHighSpeedRecordSession: turns smvrmode to 240"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v16

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_6

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Slow Motion Recording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_c

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isUnifySlowmotionSession()Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v5, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v6, v8, [Ljava/lang/Object;

    const v7, 0x8078

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v0, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    const v5, 0x8078

    new-instance v6, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v7, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v6, v1, v7, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Landroid/hardware/camera2/CameraDevice;->createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_6

    :cond_c
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isCreateCaptureSessionWithSessionConfigurationSupported()Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v5, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    move/from16 v5, p4

    if-ne v5, v2, :cond_e

    if-ne v0, v3, :cond_e

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "startHighSpeedRecordSession: use customized operatingMode=0x%x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v16

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v13, p3

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v13, 0x1

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v16

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_6

    :cond_f
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v5, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v3, v1, v5, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start high speed record session"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method public startHighSpeedRecording()V
    .locals 3

    const-string/jumbo v0, "startHighSpeedRecording"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIsHfrPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->disableCAFDuringHighSpeedRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startHighSpeedRecording: CAF is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public startObjectTrack(Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
    .locals 2

    const-string/jumbo v0, "startPreviewCallback"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez v0, :cond_3

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/camera2/MiCamera2;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    :cond_2
    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3
    return-void
.end method

.method public startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera2/MiCamera2;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/camera2/MiCamera2;->startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V

    return-void
.end method

.method public startRecordPreview()V
    .locals 3

    const-string/jumbo v0, "startRecordPreview"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->setVideoRecordControl(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start record preview, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start record preview"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method public startRecordSession(Landroid/view/Surface;Landroid/view/Surface;ZILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 19
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const-string/jumbo v4, "startRecordSession"

    invoke-direct {v1, v4}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v9, 0x2

    aput-object v2, v6, v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v6, v11

    const-string/jumbo v10, "startRecordSession: operatingMode=0x%x previewSurface=%s recordSurface=%s enableVideoSnapshot=%s"

    invoke-static {v5, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v4, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    iput-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v0

    iput v0, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    iput v0, v1, Lcom/android/camera2/MiCamera2;->mVideoSessionId:I

    :try_start_0
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v11}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {v1, v8}, Lcom/android/camera2/MiCamera2;->setVideoRecordControl(I)V

    :cond_1
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {v1, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecordSession: reset session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "startRecordSession: add PreviewSurface configuration: format=0x%x size=%s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "startRecordSession: add RecordSurface configuration: format=0x%x size=%s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getVideoSnapshotSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getVideoSnapshotSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/camera2/MiCamera2;->prepareVideoSnapshotImageReader(Lcom/android/camera/CameraSize;)V

    :cond_2
    new-array v0, v11, [Landroid/view/Surface;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v8

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v7

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "startRecordSession: add VideoSnapshotImageReader configuration: format=0x%x size=%dx%d"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-array v0, v9, [Landroid/view/Surface;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v8

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v5, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecordSession: setup output configuration number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iput-object v3, v1, Lcom/android/camera2/MiCamera2;->mCameraCloseCallback:Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v7

    goto :goto_2

    :cond_5
    move v4, v8

    :goto_2
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyVideoHdrModeIfNeed()V

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startRecordSession: turns PQ feature on"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v0, v2, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyMtkQuickPreview()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_6

    move v8, v7

    :cond_6
    if-eqz v8, :cond_7

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HFPSVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighFpsVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startRecordSession: turns hfpsmode on"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v16

    new-instance v0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v13, p4

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_3

    :cond_8
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v7, v2, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    iget-object v12, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v16

    new-instance v0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v13, p4

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recording session, IllegalState"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recording session"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_3
    return-void
.end method

.method public startRecording(Z)V
    .locals 2

    const-string/jumbo v0, "startRecording"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: startRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->setVideoRecordControl(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: startRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start recording, IllegalState"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start recording"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method public startTrackFocus(Landroid/graphics/Rect;I)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTrackFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p2, v0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startTrackFocus error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startTrackFocus end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/camera2/MiCamera2;->startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V

    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFaceDetectionEnabled(Z)Z

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public stopObjectTrack()V
    .locals 0

    return-void
.end method

.method public stopPreviewCallback(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPreviewCallback(): isRelease = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    if-nez p1, :cond_1

    const-string/jumbo p1, "stopPreviewCallback"

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 5

    const-string/jumbo v0, "stopRecording"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->setVideoRecordControl(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop recording, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stop recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V
    .locals 3
    .param p1    # Lcom/android/camera2/Camera2Proxy$PictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/camera/core/ParallelCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mIsPendingClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takePicture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    invoke-virtual {p0, p2}, Lcom/android/camera2/Camera2Proxy;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerCapture()V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "ignore takePicture"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public takeSimplePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/CameraScreenNail;)V
    .locals 2
    .param p1    # Lcom/android/camera2/Camera2Proxy$PictureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/storage/ImageSaver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/CameraScreenNail;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "takeSimplePicture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;

    invoke-virtual {p3, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewSaveListener(Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    check-cast p1, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2ShotSimplePreview;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    :cond_0
    return-void
.end method

.method public unlockExposure()V
    .locals 2

    const-string/jumbo v0, "unlockExposure"

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->setAELock(Z)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public unregisterPreviewMetadata()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewMetadata:Lcom/android/camera/PreviewMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PreviewMetadata;->unregisterPreviewMetadata()V

    :cond_0
    return-void
.end method

.method public updateDeferPreviewSession(Landroid/view/Surface;)Z
    .locals 5

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: updateDeferPreviewSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferPreviewSurface:Landroid/view/Surface;

    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: updateDeferPreviewSession: it is no need to update"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_2

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: updateDeferPreviewSession: capture session is not ready"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-nez p1, :cond_3

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: updateDeferPreviewSession: preview surface is not ready"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isLocalParallelServiceReady()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateDeferPreviewSession: ParallelService is not ready"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v0

    return v1

    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mRemoteImageReaderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->prepareRemoteImageReader(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2;->mParallelCaptureSurfaceList:Ljava/util/List;

    if-eqz v2, :cond_7

    :goto_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mParallelCaptureSurfaceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDeferPreviewSession: finalizeOutputConfigurations success"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateDeferPreviewSession: finalizeOutputConfigurations failed"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mRemoteImageReaderList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mRemoteImageReaderList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->configMaxParallelRequestNumber()V

    :cond_9
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->onPreviewSessionSuccess()V

    :cond_a
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p1, "X: updateDeferPreviewSession"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public updateFlashStateTimeLock()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update flash state time lock!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    return-void
.end method

.method public updateFrameNumber(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    return-void
.end method

.method public useLegacyFlashStrategy()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isUseLegacyFlashMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->performSingleCaptureForHdrPlusMfnr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isMacroMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getSupportedHdrType()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isHighQualityPreferred()Z

    move-result p0

    return p0

    :cond_2
    return v1

    :cond_3
    return v2
.end method
