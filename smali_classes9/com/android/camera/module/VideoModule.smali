.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/VideoBase;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$ChangeGainProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;
.implements Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;
    }
.end annotation


# static fields
.field private static final GAIN_VALUE_DEFAULT:Ljava/lang/String; = "50"

.field private static final HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_DURATION_4K:I = 0x75300

.field private static final MAX_DURATION_4K_HDR10P:I = 0x57e40

.field private static final MAX_DURATION_8K:I = 0x57e40

.field private static final RESET_VIDEO_AUTO_FOCUS_TIME:I = 0xbb8

.field public static final SCO_OFF:I = 0x0

.field public static final SCO_ON:I = 0x1

.field private static final SETTING_BLUETOOTH_SCO_STATE:Ljava/lang/String; = "miui_bluetooth_sco_state"

.field public static final SIZE_1080:Landroid/util/Size;

.field public static final SIZE_2160:Landroid/util/Size;

.field public static final SIZE_720:Landroid/util/Size;

.field private static final START_OFFSET_MS:J = 0x1c2L

.field private static final VIDEO_CAPTURE_INTERVAL:J = 0x7d0L

.field private static final VIDEO_HFR_FRAME_RATE_120:I = 0x78

.field private static final VIDEO_HFR_FRAME_RATE_240:I = 0xf0

.field private static final VIDEO_HFR_FRAME_RATE_480:I = 0x1e0

.field public static final VIDEO_MAX_SINGLE_FILE_SIZE:J = 0xdac00000L

.field public static final VIDEO_MIN_SINGLE_FILE_SIZE:J

.field private static final VIDEO_NORMAL_FRAME_RATE:I = 0x1e


# instance fields
.field private isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isShowOrHideUltraWideHint:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAbandonExposureFilmModeRecord:Z

.field private mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

.field private mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

.field private mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

.field private mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

.field private mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

.field private mAutoZoomEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

.field private mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

.field private mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

.field private mCameraClickObserverAction:Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

.field private mCaptureTimeLapse:Z

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private volatile mCurrentFileNumber:I

.field private mDumpOrig960:Ljava/lang/Boolean;

.field private mEnableVideoSnapshot:Z

.field private mExposureFilmModeRecordDisposable:Lio/reactivex/disposables/Disposable;

.field private mFovcEnabled:Z

.field private mFrameRate:I

.field private mFrameRateTrack:I

.field private mHfrFPSLower:I

.field private mHfrFPSUpper:I

.field private mHistogramDisposable:Lio/reactivex/disposables/Disposable;

.field private mHistogramEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInit:Z

.field private mIsStopKaraoke:Z

.field private mIsSubtitleSupported:Z

.field private mIsVideoTagSupported:Z

.field private final mLock:Ljava/lang/Object;

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderPostProcessing:Z

.field private mMediaRecorderWorking:Z

.field private mNextVideoFileName:Ljava/lang/String;

.field private mNextVideoValues:Landroid/content/ContentValues;

.field private mPauseClickTime:J

.field private volatile mPendingStopRecorder:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuality:I

.field private mQuickCapture:Z

.field protected mRecorderSurface:Landroid/view/Surface;

.field private mRecordingSecondTime:Ljava/lang/String;

.field private mRecordingTime:Ljava/lang/String;

.field private mRecordingTimeCountsDown:Z

.field private mSlowModeFps:Ljava/lang/String;

.field private mSnapshotInProgress:Z

.field private mSpeed:Ljava/lang/String;

.field private mSplitWhenReachMaxSize:Z

.field private mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

.field private mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

.field private mTemporaryVideoPath:Ljava/lang/String;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseDuration:J

.field private mTrackLostCount:I

.field private mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

.field protected mVideoRecordTime:J

.field private mVideoRecordedDuration:J

.field private mVideoTagFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0xc800000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/VideoModule;->SIZE_2160:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/VideoModule;->SIZE_1080:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/module/VideoModule;->SIZE_720:Landroid/util/Size;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/module/VideoModule;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    const v1, 0x24b76a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3840x2160:30"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/module/VideoModule;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    const v1, 0xeafc40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1920x1080:30"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/module/VideoModule;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    const v1, 0xa47d60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1280x720:30"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/module/VideoModule;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    const v1, 0x150e00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "720x480:30"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoBase;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsStopKaraoke:Z

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mAbandonExposureFilmModeRecord:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->isShowOrHideUltraWideHint:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/module/VideoModule;->mTimeLapseDuration:J

    const-string v3, "normal"

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    iput-wide v1, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mLock:Ljava/lang/Object;

    iput-wide v1, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordTime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mDumpOrig960:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsInit:Z

    new-instance v0, Lcom/android/camera/module/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$1;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraClickObserverAction:Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

    new-instance v0, Lcom/android/camera/module/-$$Lambda$VideoModule$QxFCOYHlGuB2bN7sWxYSOPrrxV0;

    invoke-direct {v0, p0}, Lcom/android/camera/module/-$$Lambda$VideoModule$QxFCOYHlGuB2bN7sWxYSOPrrxV0;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/VideoModule;Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->consumeAutoZoomData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isActivityResumed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/module/VideoModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/module/VideoModule;)Lcom/xiaomi/camera/core/BoostFrameworkImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/camera/module/VideoModule;Lcom/xiaomi/camera/core/BoostFrameworkImpl;)Lcom/xiaomi/camera/core/BoostFrameworkImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/module/VideoModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->postProcessVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS480()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/module/VideoModule;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->needImageThumbnail(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera/module/VideoModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mHistogramEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/VideoModule;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/module/VideoModule;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS120()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS240()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/module/VideoModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/module/VideoModule;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/module/VideoModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    return p0
.end method

.method private consumeAutoZoomData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private countDownForVideoBokeh()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    new-instance v0, Lcom/android/camera/module/VideoModule$8;

    const-wide/16 v3, 0x76f2

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/VideoModule$8;-><init>(Lcom/android/camera/module/VideoModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private forceToNormalMode()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "pref_video_speed_key"

    const-string v2, "normal"

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    return-void
.end method

.method private getAIAudioTrackParams()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportAiAudio()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa2

    if-eq v1, v3, :cond_1

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecTypeStr(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getDeviceBasedZoomRatio()F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private getHSRValue()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isUltraWideBackCamera()Z

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getHSRValue(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/VideoModule;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/camera/module/VideoModule;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no pre-defined bitrate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_0
    return p0
.end method

.method private getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProVideoModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
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
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    :cond_1
    :goto_0
    return v0
.end method

.method private getResourceFloat(IF)F
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getSpeedRecordVideoLength(JD)J
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    long-to-double p1, p1

    div-double/2addr p1, p3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result p0

    int-to-double p3, p0

    div-double/2addr p1, p3

    const-wide p3, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, p3

    double-to-long p0, p1

    return-wide p0
.end method

.method private handleAiAudioTipsState(Z)V
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAiAudio()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result v1

    if-eqz v0, :cond_5

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioMutexToastIfNeed(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const/16 p0, 0x8

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudio(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleExposureFilmModeRecord(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    const-string v1, "film_exposuredelay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mExposureFilmModeRecordDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mExposureFilmModeRecordDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mExposureFilmModeRecordDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xd4

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mAbandonExposureFilmModeRecord:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f1104ae

    const/16 v4, 0x50

    invoke-static {p1, v3, v4}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->deleteVideoFile(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method private hideHint()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v0

    const/16 v1, 0x8

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMacroModeHint(II)V

    const v0, 0x7f1106e5

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioBGHint(II)V

    const v0, 0x7f1107c0

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleBGHint(II)V

    sget-boolean v0, Lcom/mi/config/Device;->IS_K1:Z

    if-eqz v0, :cond_0

    const v0, 0x7f110810

    goto :goto_0

    :cond_0
    const v0, 0x7f11080f

    :goto_0
    const-string v2, "ai_aduio_single_desc"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleDescTip(Ljava/lang/String;II)V

    sget-boolean v0, Lcom/mi/config/Device;->IS_K1:Z

    if-eqz v0, :cond_1

    const v0, 0x7f11080e

    goto :goto_1

    :cond_1
    const v0, 0x7f11080d

    :goto_1
    const-string v2, "ai_aduio_new_desc"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;II)V

    const v0, 0x7f110730

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiEnhancedVideoHint(II)V

    const v0, 0x7f11087f

    const-string/jumbo v2, "super_eis"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    const v0, 0x7f11090d

    const-string/jumbo v2, "video_beautify"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    const v0, 0x7f11090c

    invoke-interface {p0, v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f110356

    goto :goto_2

    :cond_2
    const v0, 0x7f110607

    :goto_2
    const-string v2, "esp_display"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTipsForce()V

    :cond_4
    return-void
.end method

.method private initAutoZoom()V
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAutoZoom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startAutoZoom()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopAutoZoom()V

    :goto_0
    new-instance v0, Lcom/android/camera/module/VideoModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$4;-><init>(Lcom/android/camera/module/VideoModule;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$3;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$2;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initHistogramEmitter()V
    .locals 4

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportHistogram()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/camera/module/VideoModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$6;-><init>(Lcom/android/camera/module/VideoModule;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/loader/FunctionParseHistogramStats;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/loader/FunctionParseHistogramStats;-><init>(Lcom/android/camera/module/BaseModule;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$5;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHistogramDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result p0

    return p0
.end method

.method private is1080P60FpsEISSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->is1080P60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    return p0
.end method

.method private static is4K30FpsEISSupported()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->is4K30FpsEISSupported()Z

    move-result v0

    return v0
.end method

.method private is4K60FpsEISSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->is4K60FpsEISSupported()Z

    move-result p0

    return p0
.end method

.method private isActivityResumed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDump960Orig()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDumpOrig960:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "camera.record.960origdump"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mDumpOrig960:Ljava/lang/Boolean;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mDumpOrig960:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isEisOn()Z
    .locals 7

    invoke-static {}, Lcom/mi/config/Device;->isSupportedMovieSolid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isUltraWideBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xd0

    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0xcf

    if-ne v0, v3, :cond_3

    return v1

    :cond_3
    const/16 v3, 0xac

    if-eq v0, v3, :cond_1a

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_4

    goto/16 :goto_3

    :cond_4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v3

    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "ai enhanced video enable EIS"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "videoStabilization: disabled EIS and OIS when AutoZoom is opened"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoEisBeautyMeanwhileEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isNormalMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFastMode()Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->needChooseVideoBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-nez v0, :cond_e

    return v1

    :cond_e
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_0

    :cond_f
    move v0, v1

    :goto_0
    const-string v3, "isEisOn: "

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "@30Fps"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v0

    const/16 v4, 0x3c

    if-ne v0, v4, :cond_11

    move v0, v2

    goto :goto_1

    :cond_11
    move v0, v1

    :goto_1
    if-eqz v0, :cond_12

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-virtual {v5, v6, v4}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "@60Fps"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_12
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_13

    move v4, v2

    goto :goto_2

    :cond_13
    move v4, v1

    :goto_2
    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-virtual {v4, v6, v5}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "@120Fps"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is8KCamcorder()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    const-string v3, "3001"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x18

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3, v4, p0}, Lcom/android/camera/CameraSettings;->isCurrentQualitySupportEis(IILcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_15

    if-eqz v0, :cond_15

    return v2

    :cond_15
    return v1

    :cond_16
    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->is4K60FpsEISSupported()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->is1080P60FpsEISSupported()Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_17
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/camera/module/VideoModule;->is4K30FpsEISSupported()Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_18
    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_19

    return v1

    :cond_19
    return v2

    :cond_1a
    :goto_3
    return v1
.end method

.method private isEnableScreenShot()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureRepeatingOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/4 v2, 0x1

    const/16 v3, 0xa2

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K120FpsCamcorder()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-eq v0, v3, :cond_3

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeautyScreenshot()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->needChooseVideoBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableScreenShot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isFPS120()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    const-string/jumbo v0, "slow_motion_120"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFPS1920()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    const-string/jumbo v0, "slow_motion_1920"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFPS240()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    const-string/jumbo v0, "slow_motion_240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFPS480()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    const-string/jumbo v0, "slow_motion_480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFPS480Direct()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    const-string/jumbo v0, "slow_motion_480_direct"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFPS960()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    const-string/jumbo v0, "slow_motion_960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFastMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    const-string v0, "fast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isNormalMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSplitWhenReachMaxSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mSplitWhenReachMaxSize:Z

    return p0
.end method

.method private synthetic lambda$applyTags$5(Lcom/android/camera/module/VideoBase$OnTagsListener;Ljava/util/List;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/camera/module/VideoModule$11;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/camera/module/VideoModule$11;-><init>(Lcom/android/camera/module/VideoModule;Ljava/util/List;Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    const-wide/16 v3, 0x1f4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->getSubtitleContentAsync(Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;J)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mIsVideoTagSupported:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const-string/jumbo v0, "video tag is empty "

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getVideoTagContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MtagBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.xiaomi.support_tags"

    invoke-direct {v0, v3, p0, v2}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {p1, p2}, Lcom/android/camera/module/VideoBase$OnTagsListener;->onTagsReady(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-nez v1, :cond_4

    invoke-interface {p1, p2}, Lcom/android/camera/module/VideoBase$OnTagsListener;->onTagsReady(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$6(Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-interface {p1, v2, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reConfigAiAudio(Landroid/content/Context;IZ)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioParameters(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioZoomLv()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$onStartRecorderExposureFilmMode$9(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x1388

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mAbandonExposureFilmModeRecord:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa2

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->enableStopButton(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$readVideoPreferences$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const v1, 0x7f1108cb

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void
.end method

.method private synthetic lambda$saveVideo$1(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/util/List;)V
    .locals 6

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/util/List;)Landroid/net/Uri;

    return-void
.end method

.method private synthetic lambda$setVideoCastLayoutType$8(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->setVideoCastLayoutType(I)V

    return-void
.end method

.method private synthetic lambda$setVideoCastRecordingState$7(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->setVideoCastState(I)V

    return-void
.end method

.method private synthetic lambda$stopRecorder$2(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onMediaRecorderReleased()V

    return-void
.end method

.method private synthetic lambda$updateManualEvAdjust$3(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setEvAdjustable(Z)V

    return-void
.end method

.method private synthetic lambda$updateManualEvAdjust$4()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelFocus()V

    return-void
.end method

.method private needDisableEISAndOIS()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "videoStabilization: disabled EIS and OIS when VIDEO_BOKEH is opened"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraConfigs;->isVideoHdrEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "videoStabilization: disabled EIS and OIS when HDR10+ and HDR are opened at the same time."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private needImageThumbnail(I)Z
    .locals 0

    const/16 p0, 0xc

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private notifyAutoZoomStartUiHint()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->notifyAutoZoomStopUiHint()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x320

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$16;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$16;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private notifyAutoZoomStopUiHint()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private onMaxFileSizeReached()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/camera/module/VideoModule;->saveVideo(Ljava/lang/String;Landroid/content/ContentValues;ZZ)Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private onMediaRecorderReleased()V
    .locals 8

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderReleased>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioParameters(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/Util;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->handleExposureFilmModeRecord(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-direct {p0, v5, v6, v4, v4}, Lcom/android/camera/module/VideoModule;->saveVideo(Ljava/lang/String;Landroid/content/ContentValues;ZZ)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMediaRecorderReleased: outputUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/camera/module/VideoBase;->doReturnToCaller(Z)V

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showAlert()V

    :cond_4
    :goto_2
    iget-boolean v5, p0, Lcom/android/camera/module/BaseModule;->mIsVideoCastIntent:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v7, 0xa9

    if-ne v5, v7, :cond_5

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v5, 0x7f1104ae

    const/16 v7, 0x50

    invoke-static {v3, v5, v7}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    :cond_5
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-direct {p0, v3, v5, v4, v2}, Lcom/android/camera/module/VideoModule;->saveVideo(Ljava/lang/String;Landroid/content/ContentValues;ZZ)Landroid/net/Uri;

    :cond_6
    iput-object v6, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    goto :goto_3

    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    invoke-virtual {p0, v6, v6}, Lcom/android/camera/module/VideoModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_8
    :goto_3
    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xd4

    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_9
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.stop_video_recording"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xd0

    if-eq v3, v5, :cond_a

    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    :cond_a
    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v5, "continuous-video"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusStateIfNeeded()V

    iget-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    invoke-virtual {p0, v5, v2}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(Ljava/lang/String;Z)V

    new-array v3, v4, [I

    const/16 v4, 0xe

    aput v4, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaRecorderReleased<<time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStopVideoRecordEnd()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->doLaterReleaseIfNeed()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    if-eqz v0, :cond_c

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    :cond_c
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderWorking:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/VideoModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$10;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onStartRecorderExposureFilmMode()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    const-string v1, "film_exposuredelay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "auto"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resumePreview()V

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mAbandonExposureFilmModeRecord:Z

    const/16 v0, 0x1388

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/-$$Lambda$VideoModule$pk8fyAT6bhC_TOY6LNfkrxdBXVQ;

    invoke-direct {v1, p0}, Lcom/android/camera/module/-$$Lambda$VideoModule$pk8fyAT6bhC_TOY6LNfkrxdBXVQ;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mExposureFilmModeRecordDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onStartRecorderFail()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "onStartRecorderFail"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreOuterAudio()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    return-void
.end method

.method private onStartRecorderSucceed()V
    .locals 10

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "onStartRecorderSucceed"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.start_video_recording"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderWorking:Z

    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v2, 0xff00

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioZoomLv()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomValue()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->hideHint()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->handleSubtitleRecordingStart()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoTagFileName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mIsVideoTagSupported:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->processingStart(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->handleAiAudioTipsState(Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const/16 v2, 0xb4

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xac

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isStandaloneMacroCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isUltraWideBackCamera()Z

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAuxCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isUltraTeleCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportVideoSAT()Z

    move-result v0

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getMaxVideoSATZoom()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isStandaloneMacroCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    :cond_e
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActionProtocol:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMinZoomRatio()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;->updateZoomRatio(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->countDownForVideoBokeh()V

    goto :goto_2

    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "attr_3A_Locked"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xd6

    if-ne v0, v3, :cond_10

    invoke-static {v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackCaptureSuperNightVideo(Ljava/util/Map;)V

    goto :goto_3

    :cond_10
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    :goto_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa4

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_12

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    :cond_12
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_13

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateProVideoRecordingSimpleView(Z)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepPowerSave()V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    :cond_14
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x2

    :cond_15
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->requestReadPixels(I)V

    :cond_16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureRepeatingOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method

.method private onStopTimer()V
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoRecording>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/camera/module/VideoModule;->stopTracking(I)V

    :cond_0
    iput-boolean v2, v0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const v4, 0xff00

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    if-eqz v1, :cond_1

    iget-boolean v4, v0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    :cond_1
    iput-boolean v2, v0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    iget-boolean v1, v0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->handleSubtitleRecordingStop()V

    :cond_2
    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xb4

    if-ne v1, v4, :cond_3

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateProVideoRecordingSimpleView(Z)V

    :cond_3
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->processingFinish()V

    :cond_4
    invoke-direct {v0, v2}, Lcom/android/camera/module/VideoModule;->handleAiAudioTipsState(Z)V

    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xac

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_c

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isUltraWideBackCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_0

    :cond_5
    sget v1, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    sget v1, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v5

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40c00000    # 6.0f

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v5}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->supportVideoSAT()Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getMaxVideoSATZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isStandaloneMacroCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v5}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_9
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_a
    sget v1, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    :cond_c
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    iget-object v1, v0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v5, 0xd4

    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v1, :cond_f

    iget-boolean v5, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    if-eqz v5, :cond_e

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_1

    :cond_e
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    :cond_f
    :goto_1
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v1

    if-nez v1, :cond_14

    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v1

    iget v5, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v9

    iget-object v5, v0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isFPS120()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isFPS240()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isFPS480()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isFPS960()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    const-string/jumbo v5, "video_slow"

    :cond_11
    move-object v11, v5

    iget v5, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v5, v4, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->trackProVideoInfo()V

    goto :goto_2

    :cond_12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0x3a5

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v4, :cond_13

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isBluetoothScoOn()Z

    move-result v2

    :cond_13
    move/from16 v21, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v10

    iget v12, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v13

    iget v14, v0, Lcom/android/camera/module/VideoModule;->mFrameRateTrack:I

    iget v15, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    iget-object v2, v0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    move-object/from16 v16, v2

    iget-wide v3, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordTime:J

    move-wide/from16 v17, v3

    iget-boolean v3, v0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    move/from16 v19, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getAIAudioTrackParams()[Ljava/lang/String;

    move-result-object v20

    iget-boolean v3, v0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    move/from16 v22, v3

    iget v3, v0, Lcom/android/camera/module/BaseModule;->mEnterAutoHibernationCount:I

    move/from16 v23, v3

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v24

    move v8, v1

    invoke-static/range {v5 .. v24}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoRecorded(ZIIZZZLjava/lang/String;IIIILcom/android/camera/fragment/beauty/BeautyValues;JZ[Ljava/lang/String;ZZIZ)V

    :goto_2
    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "track count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/VideoModule;->mTrackLostCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/android/camera/module/VideoModule;->mTrackLostCount:I

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLostCount(I)V

    :cond_14
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordTime:J

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->onMediaRecorderReleased()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord()V

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    iget-boolean v1, v0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xa4

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_16

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    return-void
.end method

.method private postProcessVideo(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "960fps processing failed. delete the files."

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4d7933ef

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eq v6, v7, :cond_3

    const v7, -0x449040df

    if-eq v6, v7, :cond_2

    const v7, -0x44902e58

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "slow_motion_960"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "slow_motion_480"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v9

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "slow_motion_1920"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v8

    :cond_4
    :goto_0
    const/16 v4, 0x1e0

    if-eqz v5, :cond_6

    if-eq v5, v8, :cond_5

    const/16 v4, 0xf0

    const/16 v5, 0x3c0

    :goto_1
    move v10, v4

    move v11, v5

    goto :goto_2

    :cond_5
    const/16 v5, 0x780

    goto :goto_1

    :cond_6
    const/16 v5, 0x78

    move v11, v4

    move v10, v5

    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".bak"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/storage/Storage;->generatePrimaryFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    :try_start_0
    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v16, 0x1

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportSlowMotionVideoEditor()Z

    move-result v7

    if-eqz v7, :cond_8

    move/from16 v15, v16

    goto :goto_4

    :cond_8
    move v15, v9

    :goto_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/config/DataItemFeature;->isSupportDeFlicker()Z

    move-result v14

    sget-object v7, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "postProcessVideo: start srcFPS:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " dstFPS:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " supportDeFlicker:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v7, v12}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v10 .. v15}, Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSync(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v7

    sget-object v10, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v11, "postProcessVideo: end "

    invoke-static {v8, v10, v11}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_9

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_9

    move/from16 v9, v16

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isDump960Orig()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".orig.mp4"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    if-nez v9, :cond_b

    :goto_6
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_7

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v7, "960fps processing failed."

    invoke-static {v3, v7, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_b

    goto :goto_6

    :cond_b
    :goto_7
    if-eqz v9, :cond_c

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_c
    return-object v2

    :catchall_1
    move-exception v0

    if-nez v9, :cond_d

    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_d
    throw v0
.end method

.method private releaseResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomUiDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomDataDisposable:Lio/reactivex/disposables/Disposable;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHistogramEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHistogramDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHistogramDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mHistogramDisposable:Lio/reactivex/disposables/Disposable;

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopTracking(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopAutoZoom()V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/AudioCalculateDecibels;->release()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->handleTempVideoFile()V

    return-void
.end method

.method private saveVideo(Ljava/lang/String;Landroid/content/ContentValues;ZZ)Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveVideo: path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isFinal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSync= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p4, :cond_0

    new-instance p4, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;-><init>(Lcom/android/camera/module/VideoModule;Ljava/lang/String;Landroid/content/ContentValues;Z)V

    invoke-virtual {p0, p4}, Lcom/android/camera/module/VideoModule;->applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "saveVideo: failed to save "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private setCurrentAiAudioParameters(Z)V
    .locals 10

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAiAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getDeviceBasedZoomRatio()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mIsInit:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v1, v4, p1, v5}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getCurrentParameters(IZI)V

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getRecType()I

    move-result p1

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v6}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->getEleValue()D

    move-result-wide v6

    int-to-double v8, v0

    invoke-virtual {v1, v2, v3, v8, v9}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getFocusSectorWidth(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getWindns()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setRecordType(I)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p1, v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioWindNoise(Z)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioFocusAzimuth(D)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p1, v6, v7}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioFocusElevation(D)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioFocusWidth(D)V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p0, v8, v9}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioFocusHeight(D)V

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setCurrentAiAudioParameters: support FORTE & NOKIA"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentParameters(IZI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentAiAudioParameters.parameters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setCurrentAiAudioParameters:J10-FORTE"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private setCurrentAiAudioZoomLv()V
    .locals 4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAiAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroLensOn(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentAiAudioZoomLv -> enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_6

    return-void

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-eqz v0, :cond_9

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getDeviceBasedZoomRatio()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setAudioZoomLevel(D)V

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AURISYS_SET_PARAM,DSP,RECORD,FV_SPH,KEY_VALUE,audioZoom,ZoomLv@"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Util;->getEnglishDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/=SET"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentAiAudioZoomLv.parameters = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_9
    :goto_0
    return-void
.end method

.method private setJpegQuality()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jpegQuality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setJpegQuality(I)V

    return-void
.end method

.method private setNextOutputFile(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setNextOutputFile, filePath is empty"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setNextOutputFile(Landroid/media/MediaRecorder;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setNextOutputFile(Landroid/media/MediaRecorder;Ljava/io/FileDescriptor;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open file failed, filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    return v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    throw p0
.end method

.method private setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 4

    const/4 p0, 0x1

    :try_start_0
    new-array v0, p0, [Ljava/lang/Class;

    const-class v1, Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setParameter"

    const-string v3, "(Ljava/lang/String;)V"

    invoke-static {v0, v1, v3}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v0, v0, v2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, v2

    invoke-virtual {v1, v0, p1, p0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setParameter("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setSplitWhenReachMaxSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSplitWhenReachMaxSize:Z

    return-void
.end method

.method private setVideoCastState(I)V
    .locals 12

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const v2, 0xff00

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVideoCastState current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v3, 0x2

    const/16 v4, 0x2a

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStopTimer()V

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStatePaused(Z)V

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "switched to idle state"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPauseButtonClick: isRecordingPaused="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isRecording="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStateRecording(Z)V

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz p1, :cond_4

    iget-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    sub-long v2, v8, v2

    cmp-long p1, v2, v6

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    iput-wide v8, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    :try_start_0
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->getVideoCastRecordedDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    iput-boolean v5, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    iget-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->handleSubtitleRecordingResume()V

    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "failed to resume media recorder"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    :goto_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "switched to resume state"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz p1, :cond_8

    iget-wide v10, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    sub-long v10, v8, v10

    cmp-long p1, v10, v6

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    iput-wide v8, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    invoke-interface {v1, v6, v7}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastRecordedDuration(J)V

    iput-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p1

    invoke-static {p1, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->setVideoCastStatePaused(Z)V

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "switched to pause state"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    :goto_2
    return-void

    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderSucceed()V

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "switched to start state"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private setupRecorder(Landroid/media/MediaRecorder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isNormalMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS120()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS240()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS480Direct()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isAndroidOne()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v2

    :goto_1
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0x3a5

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    const/4 v7, 0x5

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v8

    invoke-interface {v6, v8}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p1, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p1, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p1, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p1, v8, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v6

    const-string/jumbo v8, "setVideoFrameRate: "

    if-lez v6, :cond_5

    invoke-virtual {p1, v6}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iput v6, p0, Lcom/android/camera/module/VideoModule;->mFrameRateTrack:I

    sget-object v9, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p1, v9}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v9, p0, Lcom/android/camera/module/VideoModule;->mFrameRateTrack:I

    sget-object v9, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v8, Landroid/media/CamcorderProfile;->videoCodec:I

    if-ne v7, v9, :cond_a

    invoke-direct {p0, v8}, Lcom/android/camera/module/VideoModule;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v7

    sget-object v8, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "H265 bitrate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is8KCamcorder()Z

    move-result v8

    if-nez v8, :cond_6

    const/high16 v8, 0x40000

    goto :goto_4

    :cond_6
    const/high16 v8, 0x100000

    :goto_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/config/DataItemFeature;->getHDR10VideoEncodingProfile()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v9, v8}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    sget-object v10, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v2

    const-string/jumbo v8, "setupRecorder: setVideoEncodingProfileLevel profile %s level %s"

    invoke-static {v10, v8, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v10, 0x1000

    invoke-virtual {v9, v10, v8}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    sget-object v9, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setupRecorder: HEVCProfileMain10HDR10 & "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9, v5, v8}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    sget-object v9, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setupRecorder: HEVCProfileMain10 & "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    iget v7, v8, Landroid/media/CamcorderProfile;->videoBitRate:I

    sget-object v8, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "H264 bitrate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    invoke-virtual {p1, v7}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_c
    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_10

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xd0

    const-string v4, " mTimeLapseDuration "

    const/16 v5, 0xa0

    if-ne v0, v1, :cond_d

    const-string v0, "10000"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTimeLapseDuration:J

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MODE_FILM_EXPOSUREDELAY setupRecorder "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mTimeLapseDuration:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "pref_new_video_time_lapse_frame_interval_key"

    invoke-virtual {v0, v6, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "pref_new_video_time_lapse_duration_key"

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mTimeLapseDuration:J

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/camera/module/VideoModule;->mTimeLapseDuration:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    const-wide v0, 0x408f400000000000L    # 1000.0

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    goto/16 :goto_9

    :cond_10
    const/16 v4, 0x1c

    if-nez v1, :cond_14

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isAndroidOne()Z

    move-result v1

    if-nez v1, :cond_13

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    if-ge v0, v4, :cond_11

    int-to-long v0, v7

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    int-to-long v4, v4

    mul-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_7

    :cond_11
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v1

    div-int/2addr v0, v1

    div-int/2addr v0, v5

    mul-int/2addr v0, v7

    :goto_7
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    const/16 v4, 0x1e0

    if-ne v1, v4, :cond_12

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_12

    const v1, 0x7270e00

    const-string v4, "camcorder.480fps.bitrate.max"

    invoke-static {v4, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v4, "Set enc-entropy-mode to CAVLC: E"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "vendor.qti-ext-enc-entropy-mode.value=0"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/VideoModule;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v4, "Set enc-entropy-mode to CAVLC: X"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVideoEncodingBitRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :cond_13
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    goto :goto_9

    :cond_14
    if-lez v6, :cond_16

    invoke-virtual {p1, v6}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    int-to-double v8, v6

    invoke-virtual {p1, v8, v9}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v6, 0xa2

    if-ne v1, v6, :cond_16

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K120FpsCamcorder()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    if-ge v0, v4, :cond_15

    int-to-long v0, v7

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    int-to-long v4, v4

    mul-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_8

    :cond_15
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getNormalVideoFrameRate()I

    move-result v1

    div-int/2addr v0, v1

    div-int/2addr v0, v5

    mul-int/2addr v0, v7

    :goto_8
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :cond_16
    :goto_9
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :cond_18
    const-string v0, "camera.debug.video_max_size"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->getRecorderMaxFileSize(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    const-wide v6, 0xdac00000L

    if-lez v1, :cond_19

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxFileSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    cmp-long v1, v4, v6

    if-lez v1, :cond_19

    const-string v1, "param-use-64bit-offset=1"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/VideoModule;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :cond_19
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSplitVideoSupported()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-gtz v0, :cond_1a

    cmp-long v0, v4, v6

    if-nez v0, :cond_1b

    :cond_1a
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->setSplitWhenReachMaxSize(Z)V

    goto :goto_a

    :cond_1b
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->setSplitWhenReachMaxSize(Z)V

    :goto_a
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS240()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS480Direct()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isAndroidOne()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "video-param-i-frames-interval=0.033"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/VideoModule;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :cond_1d
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getRecorderOrientationHint()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "video_rotation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput p1, p0, Lcom/android/camera/module/VideoBase;->mOrientationCompensationAtRecordStart:I

    return-void
.end method

.method private shouldApplyUltraWideLDC()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->shouldUltraWideVideoLDCBeVisibleInMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraWideVideoLDCEnabled()Z

    move-result p0

    return p0
.end method

.method private startHighSpeedRecordSession()V
    .locals 8

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    const-string/jumbo v2, "startHighSpeedRecordSession"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAELockOnlySupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K120FpsCamcorder()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getOperatingMode()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    move v4, v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v2, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderSurface:Landroid/view/Surface;

    iget v5, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    new-instance v6, Landroid/util/Range;

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSLower:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera2/Camera2Proxy;->startHighSpeedRecordSession(Landroid/view/Surface;Landroid/view/Surface;IILandroid/util/Range;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocused()V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mRecorderSurface:Landroid/view/Surface;

    invoke-static {p0}, Lcom/android/camera/Util;->showSurfaceInfo(Landroid/view/Surface;)V

    return-void
.end method

.method private startPreviewAfterRecord()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K120FpsCamcorder()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->startHighSpeedRecordPreview()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->startHighSpeedRecordPreview()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->startRecordPreview()V

    :cond_3
    :goto_0
    return-void
.end method

.method private startRecordSession()V
    .locals 8

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecordSession: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAELockOnlySupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getOperatingMode()I

    move-result v5

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v1, v7

    const-string/jumbo v2, "startRecordSession: operatingMode = 0x%x enableVideoSnapshot = %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateFpsRange()V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v2, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mRecorderSurface:Landroid/view/Surface;

    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera2/Camera2Proxy;->startRecordSession(Landroid/view/Surface;Landroid/view/Surface;ZILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocused()V

    iput-boolean v7, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return-void
.end method

.method private startRecorder()Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->initializeRecorder(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportNotifyThermal4KRecord()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :cond_1
    iget v3, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v3, v1}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStart(II)V

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v3, "notifyThermalRecordStart"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsInit:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa2

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->start()V

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioParameters(Z)V

    :cond_4
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderWorking:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const/4 v3, 0x6

    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "could not start recorder: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1102c6

    const v1, 0x7f1102c5

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->showConfirmMessage(II)V

    return v2
.end method

.method private startVideoRecordingIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->isOpenOnly(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v0

    if-lez v0, :cond_2

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "Video mode doesn\'t support Time duration!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isIntentPhotoDone()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/VideoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$7;-><init>(Lcom/android/camera/module/VideoModule;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setIntnetPhotoDone(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private supportVideoCover()Z
    .locals 9

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportPreviewVideoCover()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4KCamcorder()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is8KCamcorder()Z

    move-result v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v5

    if-nez v5, :cond_2

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isVhdrOn(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v1

    :goto_2
    sget-wide v5, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v7, 0x6

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5

    if-eqz v0, :cond_3

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    return v1

    :cond_5
    if-eqz v0, :cond_7

    if-eqz v3, :cond_6

    if-nez p0, :cond_8

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    return v1
.end method

.method private trackProVideoInfo()V
    .locals 11

    const v0, 0x7f110747

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_pro_video_whitebalance_k_value_key"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110608

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_pro_video_exposuretime_key"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f11067a

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "pref_qc_pro_video_camera_iso_key"

    invoke-direct {p0, v4, v1}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_pro_video_exposure_value_key"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isBluetoothScoOn()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v7

    iget-boolean v9, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    iget v10, p0, Lcom/android/camera/module/BaseModule;->mEnterAutoHibernationCount:I

    invoke-static/range {v2 .. v10}, Lcom/android/camera/statistic/CameraStatUtils;->trackRecordVideoInProMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZI)V

    return-void
.end method

.method private updateASD()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K60FpsCamcorder()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0x3c

    invoke-virtual {v1, v2, v3}, Lcom/mi/config/DataItemFeature;->isVideoAsdSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video ASD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setASDEnable(Z)V

    :cond_2
    return-void
.end method

.method private updateAiEnhancedVideo()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->supportAiEnhancedVideo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAiASDEnable(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setAIIEPreviewEnable(Z)V

    :cond_1
    return-void
.end method

.method private updateAutoZoomMode()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomMode(I)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomScaleOffset(F)V

    :cond_0
    return-void
.end method

.method private updateBokeh()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v2}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSingleCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v2}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    :goto_0
    return-void
.end method

.method private updateCinematicVideo()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setCinematicVideoEnabled(Z)V

    return-void
.end method

.method private updateEvValue()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const-string v1, "0"

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_0

    const-string v0, "pref_qc_camera_fastmotion_pro_exposure_value_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "pref_qc_camera_pro_video_exposure_value_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getExposureCompensationStep()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mEvValue:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mEvState:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    return-void
.end method

.method private updateExposureTime()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const-wide/32 v0, 0x7735940

    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/Camera2Proxy;->setExposureTime(J)V

    return-void

    :cond_0
    const/16 v1, 0xa9

    const v2, 0x7f110608

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_fastmotion_pro_exposuretime_key"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_pro_video_exposuretime_key"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/Camera2Proxy;->setExposureTime(J)V

    return-void
.end method

.method private updateFilter()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result p0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    return-void
.end method

.method private updateFrontMirror()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportedVideoFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setFrontMirror(Z)V

    :cond_1
    return-void
.end method

.method private updateHFRDeflicker()V
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDeFlicker()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setHFRDeflickerEnable(Z)V

    :cond_0
    return-void
.end method

.method private updateHdr10VideoMode()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10Plus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setHdr10VideoMode(Z)V

    :cond_3
    return-void
.end method

.method private updateHfrFPSRange(Landroid/util/Size;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraCapabilities;->getSupportedHighSpeedVideoFPSRange(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_1

    :cond_0
    move-object v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSLower:I

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    return-void
.end method

.method private updateHistogramStats()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setHistogramStatsEnabled(Z)V

    return-void
.end method

.method private updateISO()V
    .locals 3

    const v0, 0x7f11067a

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_0

    const-string v1, "pref_qc_fastmotion_pro_camera_iso_key"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "pref_qc_pro_video_camera_iso_key"

    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {v1, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxIso()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v2}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    :goto_1
    return-void
.end method

.method private updateMacroMode()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setMacroMode(Z)V

    return-void
.end method

.method private updateMutexModePreference()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    :cond_0
    return-void
.end method

.method private updateSessionParams()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSessionConfigs()Lcom/android/camera2/CaptureSessionConfigurations;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_1

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, "updateSessionParams: DYNAMIC_FPS_CONFIG: "

    const/4 v3, 0x5

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->is60fpsDynamicSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isDynamicFpsConfigSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_2

    new-array p0, v3, [F

    fill-array-data p0, :array_0

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DYNAMIC_FPS_CONFIG:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->is30fpsDynamicSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isDynamicFpsConfigSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result p0

    if-nez p0, :cond_3

    new-array p0, v3, [F

    fill-array-data p0, :array_1

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->DYNAMIC_FPS_CONFIG:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x42040000    # 33.0f
        0x42700000    # 60.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40000000    # 2.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x0
        0x0
    .end array-data
.end method

.method private updateTargetZoom()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->readTargetZoom()F

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setTargetZoom(F)V

    :cond_0
    return-void
.end method

.method private updateUltraWideLDC()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->shouldApplyUltraWideLDC()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setUltraWideLDC(Z)V

    return-void
.end method

.method private updateVideoBokeh(Z)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frontVideoBokeh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoBokehLevelFront(F)V

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backVideoBokeh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoBokehLevelBack(I)V

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionMode(IZ)V

    :cond_1
    return-void
.end method

.method private updateVideoColorRetention()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionFront(Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionBack(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionFront(Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionBack(Z)V

    :goto_1
    return-void
.end method

.method private updateVideoFilter()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    :goto_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    :cond_1
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterId(I)V

    return-void
.end method

.method private updateVideoLog()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoLogEnabled(Z)V

    return-void
.end method

.method private updateVideoSubtitle()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isSwitchOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    return-void
.end method

.method private updateVideoTag()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getVideoTagSettingNeedRemove(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/camera/SettingUiState;->isRemove:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/camera/SettingUiState;->isMutexEnable:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoTagOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoTagSupported:Z

    return-void
.end method

.method private updateVideoTagState(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoTagSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoCastIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getVideoTag()Lcom/android/camera/ui/VideoTagView;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_8

    const/4 p0, 0x1

    if-eq p1, p0, :cond_7

    const/4 p0, 0x2

    if-eq p1, p0, :cond_6

    const/4 p0, 0x3

    if-eq p1, p0, :cond_5

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/ui/VideoTagView;->stop()V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/ui/VideoTagView;->resume()V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/ui/VideoTagView;->pause()V

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/ui/VideoTagView;->start()V

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/ui/VideoTagView;->prepare()V

    :goto_0
    return-void
.end method

.method private updateWhiteBalance()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const-string v1, "1"

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_0

    const-string v0, "pref_camera_fastmotion_pro_whitebalance_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_video_whitebalance_key"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setAWBMode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 1
    .param p1    # Lcom/android/camera/module/VideoBase$OnTagsListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/android/camera/module/-$$Lambda$VideoModule$jdObNEyTcdE2BSW23mUIJDnnvgQ;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/-$$Lambda$VideoModule$jdObNEyTcdE2BSW23mUIJDnnvgQ;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    invoke-super {p0, v0}, Lcom/android/camera/module/VideoBase;->applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    return-void
.end method

.method protected applyZoomRatio()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomRatio:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->applyZoomRatio(F)V

    return-void
.end method

.method protected applyZoomRatio(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->applyZoomRatio(F)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioZoomLv()V

    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 7
    .param p1    # [I
        .annotation build Lcom/android/camera/constant/UpdateConstant$UpdateType;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v5, 0x2

    if-eq v3, v5, :cond_8

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    const/4 v5, 0x5

    if-eq v3, v5, :cond_6

    const/4 v5, 0x6

    if-eq v3, v5, :cond_5

    const/16 v5, 0x13

    if-eq v3, v5, :cond_4

    const/16 v5, 0x14

    if-eq v3, v5, :cond_a

    const/16 v5, 0x18

    if-eq v3, v5, :cond_3

    const/16 v5, 0x19

    if-eq v3, v5, :cond_2

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_a

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_a

    sparse-switch v3, :sswitch_data_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    sget-boolean v4, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    const-string v5, "no consumer for this updateType: "

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateHFRDeflicker()V

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMacroMode()V

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAutoZoomMode()V

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateUltraWideLDC()V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateDeviceOrientation()V

    goto/16 :goto_2

    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v3, v4}, Lcom/android/camera2/Camera2Proxy;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateVideoStabilization()V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateExposureMeteringMode()V

    goto/16 :goto_2

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateSessionParams()V

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateTrackFocus()V

    goto/16 :goto_2

    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateAiEnhancedVideo()V

    goto/16 :goto_2

    :sswitch_3
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->updateVideoBokeh(Z)V

    goto/16 :goto_2

    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateHdr10VideoMode()V

    goto/16 :goto_2

    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateTargetZoom()V

    goto/16 :goto_2

    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateHistogramStats()V

    goto/16 :goto_2

    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateASD()V

    goto/16 :goto_2

    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateVideoColorRetention()V

    goto/16 :goto_2

    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateVideoFilter()V

    goto/16 :goto_2

    :sswitch_a
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehColorRetentionTag(Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->updateVideoBokeh(Z)V

    goto/16 :goto_2

    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto/16 :goto_2

    :sswitch_c
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateVideoLog()V

    goto/16 :goto_2

    :sswitch_d
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateEvValue()V

    goto/16 :goto_2

    :sswitch_e
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateCinematicVideo()V

    goto/16 :goto_2

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateBackSoftLightPreference()V

    goto/16 :goto_2

    :sswitch_10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto/16 :goto_2

    :sswitch_11
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateFrontMirror()V

    goto :goto_2

    :sswitch_12
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateBokeh()V

    goto :goto_2

    :sswitch_13
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateExposureTime()V

    goto :goto_2

    :sswitch_14
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateISO()V

    goto :goto_2

    :sswitch_15
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoFocusMode()V

    goto :goto_2

    :sswitch_16
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateBeauty()V

    goto :goto_2

    :sswitch_17
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_2

    :sswitch_18
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateHDRPreference()V

    goto :goto_2

    :sswitch_19
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateFlashPreference()V

    goto :goto_2

    :sswitch_1a
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isAndroidOne()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "0"

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->applyZoomRatio()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateFpsRange()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateWhiteBalance()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateFace()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateFilter()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updatePictureAndPreviewSize()V

    :cond_a
    :goto_2
    :pswitch_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1a
        0xa -> :sswitch_19
        0xb -> :sswitch_18
        0xc -> :sswitch_17
        0xd -> :sswitch_16
        0xe -> :sswitch_15
        0xf -> :sswitch_14
        0x10 -> :sswitch_13
        0x25 -> :sswitch_12
        0x28 -> :sswitch_11
        0x37 -> :sswitch_10
        0x3a -> :sswitch_f
        0x3c -> :sswitch_e
        0x3f -> :sswitch_d
        0x41 -> :sswitch_c
        0x42 -> :sswitch_b
        0x43 -> :sswitch_a
        0x44 -> :sswitch_9
        0x45 -> :sswitch_8
        0x46 -> :sswitch_7
        0x4b -> :sswitch_6
        0x4f -> :sswitch_5
        0x50 -> :sswitch_4
        0x51 -> :sswitch_3
        0x55 -> :sswitch_2
        0x56 -> :sswitch_1
        0xcafe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_7
        :pswitch_8
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_5
        :pswitch_8
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createMediaRecorder()V
    .locals 1

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method protected doLaterReleaseIfNeed()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->doLaterReleaseIfNeed()V

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "doLaterReleaseIfNeed: restartModule..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restartModule()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "doLaterReleaseIfNeed: dismissBlurCover..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->dismissBlurCover()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected enableFaceDetection()Z
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isVideoBackCloseFD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f050018

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string v2, "pref_camera_facedetection_key"

    invoke-virtual {v0, v2, p0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 0

    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method public fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V

    iget p0, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd6

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->getFeatureDetail()Lcom/android/camera/module/loader/StartControlFeatureDetail;

    move-result-object p0

    const p1, 0x7f0a0245

    const v0, 0xfffe

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->addFragmentInfo(II)V

    :goto_0
    return-void
.end method

.method protected getNormalVideoFrameRate()I
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isAndroidOne()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0
.end method

.method protected getOperatingMode()I
    .locals 9

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    const v1, 0xf002

    const v2, 0x8019

    const v3, 0x8009

    const/16 v4, 0xa2

    const v5, 0x8004

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x8002

    goto/16 :goto_6

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->needChooseVideoBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    goto/16 :goto_6

    :cond_1
    move v1, v5

    goto/16 :goto_6

    :cond_2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v0, v4, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isVideoHdrOperationModeSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVhdrOn(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v3

    goto/16 :goto_6

    :cond_4
    move v1, v6

    goto/16 :goto_6

    :cond_5
    const v0, 0xf010

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result v7

    iget-object v8, p0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {p0, v8}, Lcom/android/camera/module/VideoBase;->needChooseVideoBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isDualCameraShineVideoBokeh()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    iget v8, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const v2, 0x8012

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x8029

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    if-nez v2, :cond_a

    move v2, v6

    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    move v2, v5

    goto :goto_1

    :cond_c
    move v2, v0

    goto :goto_1

    :cond_d
    :goto_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v2, 0x800f

    goto :goto_1

    :cond_e
    const v2, 0x800d

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v0

    const/4 v3, 0x1

    const/16 v8, 0x3c

    if-ne v0, v8, :cond_12

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_f

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-virtual {v0, v2, v8}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_2

    :cond_f
    move v0, v6

    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->is1080P60FpsEISSupported()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->is4K60FpsEISSupported()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v0, :cond_11

    :cond_10
    if-eqz v7, :cond_11

    goto :goto_3

    :cond_11
    const v5, 0x803c

    goto :goto_3

    :cond_12
    move v5, v2

    :goto_3
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const v5, 0x80f4

    :cond_13
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v0

    const v2, 0x8024

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    if-nez v7, :cond_15

    move v5, v2

    :cond_15
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v7, :cond_16

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->needDisableEISAndOIS()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4

    :cond_16
    move v2, v5

    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is8KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz v7, :cond_17

    const v2, 0x801d

    :cond_17
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v0, v4, :cond_18

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isVideoHdrOperationModeSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVhdrOn(I)Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez v7, :cond_18

    goto :goto_5

    :cond_18
    move v1, v2

    :goto_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isFovcSupported()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz v1, :cond_19

    move v6, v3

    :cond_19
    iput-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mFovcEnabled:Z

    :cond_1a
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xd6

    if-ne p0, v0, :cond_1b

    const v1, 0x8031

    :cond_1b
    :goto_6
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperatingMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "pref_video_speed_fast_key"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected handleTempVideoFile()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mTemporaryVideoPath:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/temp_video.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mTemporaryVideoPath:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoModule: wq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mTemporaryVideoPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mTemporaryVideoPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected initRecorderSurface()V
    .locals 1

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderSurface:Landroid/view/Surface;

    return-void
.end method

.method protected initializeRecorder(Z)Z
    .locals 29

    move-object/from16 v8, p0

    move/from16 v9, p1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecorder>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isRecorderBoostSupported()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/camera/module/VideoModule;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    iput-object v0, v8, Lcom/android/camera/module/VideoModule;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    :cond_0
    iget-object v0, v8, Lcom/android/camera/module/VideoModule;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-eqz v0, :cond_1

    const/16 v1, 0x190

    invoke-virtual {v0, v1, v10}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecorder: null host"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoBase;->closeVideoFileDescriptor()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoBase;->cleanupEmptyFile()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->handleTempVideoFile()V

    iget-object v0, v8, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/camera/module/VideoBase;->parseIntent(Landroid/content/Intent;)V

    :cond_3
    iget-object v0, v8, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_5

    iget v2, v8, Lcom/android/camera/module/VideoBase;->mOutputFormat:I

    iget v3, v8, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    iget-object v4, v8, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->is8KCamcorder()Z

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/VideoBase;->genContentValues(IILjava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, v8, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v9, :cond_4

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, v8, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, v8, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_display_name"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    :cond_5
    :goto_0
    iget-object v0, v8, Lcom/android/camera/module/VideoModule;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    iget-object v0, v8, Lcom/android/camera/module/VideoModule;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeRecorder: waitTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v8, Lcom/android/camera/module/VideoModule;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->createMediaRecorder()V

    goto :goto_2

    :cond_7
    iget-object v3, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    sget-boolean v3, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeRecorder: t1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v8, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_9

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_b

    :cond_9
    new-instance v0, Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    iget-object v2, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;-><init>(Landroid/content/Context;Landroid/media/MediaRecorder;)V

    iput-object v0, v8, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder.zoomMaxValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->setMaxSupportLevel(I)V

    if-eqz v9, :cond_a

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "initializeRecorder: recording"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v1

    iget v2, v8, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v3, v8, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v1, v2, v9, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getCurrentParameters(IZI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getDeviceBasedZoomRatio()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getRecType()I

    move-result v15

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getShot()I

    move-result v16

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getScene()I

    move-result v17

    const-wide/16 v20, 0x0

    iget-object v4, v8, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v4}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->getEleValue()D

    move-result-wide v22

    int-to-double v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getFocusSectorWidth(DD)D

    move-result-wide v24

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getWindns()Z

    move-result v28

    iget-object v13, v8, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    const/4 v14, 0x1

    move-wide/from16 v18, v2

    invoke-virtual/range {v13 .. v28}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->init(ZIIIDDDDDZ)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/camera/module/VideoModule;->mIsInit:Z

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecorder: prorecord"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, v8, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v13 .. v28}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->init(ZIIIDDDDDZ)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/camera/module/VideoModule;->mIsInit:Z

    :goto_3
    iget-boolean v0, v8, Lcom/android/camera/module/VideoModule;->mIsInit:Z

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/android/camera/module/VideoModule;->mAiAudioParameterManager:Lcom/android/camera/aiaudio/AiAudioParameterManager;

    invoke-virtual {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->prepare()V

    :cond_b
    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    iget-object v2, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {v8, v2}, Lcom/android/camera/module/VideoModule;->setupRecorder(Landroid/media/MediaRecorder;)V

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {v8, v0}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioParameters(Z)V

    :cond_c
    iget-object v2, v8, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_e

    if-eqz v9, :cond_d

    iget-object v2, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, v8, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_5

    :cond_d
    iget-object v2, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, v8, Lcom/android/camera/module/VideoModule;->mTemporaryVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v9, :cond_f

    goto :goto_4

    :cond_f
    iget-object v2, v8, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-object v2, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_5

    :cond_10
    :goto_4
    iget-object v2, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, v8, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_5
    iget-object v2, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, v8, Lcom/android/camera/module/VideoModule;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v4, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v4, v8, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    sget-boolean v4, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    if-eqz v4, :cond_11

    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeRecorder: t2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move v10, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, ""

    instance-of v3, v0, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_12

    iget-object v2, v8, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/Util;->getFilesState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_6
    if-eqz v10, :cond_13

    sget-boolean v0, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    if-eqz v0, :cond_13

    iget-object v0, v8, Lcom/android/camera/module/VideoModule;->mRecorderSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/android/camera/Util;->showSurfaceInfo(Landroid/view/Surface;)V

    :cond_13
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecorder<<time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isRecorderBoostSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v8, Lcom/android/camera/module/VideoModule;->mBoostFramework:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    :cond_14
    return v10

    :goto_7
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public is4K120FpsCamcorder()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result p0

    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public is4K60FpsCamcorder()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result p0

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public is4KCamcorder()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method public is8KCamcorder()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->get8kProfile()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x1e00

    const/16 v2, 0x10e0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method protected isAEAFLockSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result p0

    if-nez p0, :cond_0

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

.method protected isCameraSwitchingDuringZoomingAllowed()Z
    .locals 2

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedAlertAudioZoomIndicator()Z
    .locals 4

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/4 v1, 0x0

    const/16 v2, 0xa2

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "isNeedAlertAudioZoomIndicator:SupportAiAudioNew"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result p0

    :goto_0
    if-eq p0, v3, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public isNeedHapticFeedback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

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

.method public isNeedMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-nez p0, :cond_0

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

.method public isPostProcessing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    return p0
.end method

.method public isReceiveDoubleTap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mIsTrackFocusOn:Z

    return p0
.end method

.method protected isShowHFRDuration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUnInterruptable()Z
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->isUnInterruptable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isNormalMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderWorking:Z

    if-eqz v0, :cond_0

    const-string v0, "recorder release"

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mUnInterruptableReason:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mUnInterruptableReason:Ljava/lang/String;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomEnabled()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xd0

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->isZoomEnabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$applyTags$5$VideoModule(Lcom/android/camera/module/VideoBase$OnTagsListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->lambda$applyTags$5(Lcom/android/camera/module/VideoBase$OnTagsListener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$new$6$VideoModule(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$new$6(Z)V

    return-void
.end method

.method public synthetic lambda$onStartRecorderExposureFilmMode$9$VideoModule(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$onStartRecorderExposureFilmMode$9(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$readVideoPreferences$0$VideoModule()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$readVideoPreferences$0()V

    return-void
.end method

.method public synthetic lambda$saveVideo$1$VideoModule(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/VideoModule;->lambda$saveVideo$1(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/util/List;)V

    return-void
.end method

.method public synthetic lambda$setVideoCastLayoutType$8$VideoModule(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$setVideoCastLayoutType$8(I)V

    return-void
.end method

.method public synthetic lambda$setVideoCastRecordingState$7$VideoModule(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$setVideoCastRecordingState$7(I)V

    return-void
.end method

.method public synthetic lambda$stopRecorder$2$VideoModule(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$stopRecorder$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$updateManualEvAdjust$3$VideoModule(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$updateManualEvAdjust$3(Z)V

    return-void
.end method

.method public synthetic lambda$updateManualEvAdjust$4$VideoModule()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->lambda$updateManualEvAdjust$4()V

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

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsVideoCastIntent:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xbb8

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    iput-wide v3, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v0, 0x7f11081d

    invoke-static {p0, v0, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    :cond_5
    :goto_0
    return v2

    :cond_6
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xd0

    if-eq v0, v3, :cond_9

    const/16 v3, 0xcf

    if-ne v0, v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopTracking(I)V

    return v2

    :cond_8
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onBackPressed()Z

    move-result p0

    return p0

    :cond_9
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    :cond_a
    :goto_2
    return v2
.end method

.method public onBluetoothHeadsetConnected()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBluetoothHeadsetConnected()V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method public onBluetoothHeadsetDisconnected()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBluetoothHeadsetDisconnected()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->stopBluetoothSco(I)V

    :cond_0
    return-void
.end method

.method protected onCameraOpened()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onCameraOpened()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateBeauty()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateVideoSubtitle()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateVideoTag()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateAutoHibernation()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->initializeRecorder(Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEnableScreenShot()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K120FpsCamcorder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startHighSpeedRecordSession()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startHighSpeedRecordSession()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startRecordSession()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startVideoPreviewSession()V

    :goto_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is8KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->get8kCameraBoostThreshold()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/Camera;->boostCameraByThreshold(J)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->get4kCameraBoostThreshold()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/Camera;->boostCameraByThreshold(J)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initAutoZoom()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initHistogramEmitter()V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAudioMapMove()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/camera/AudioCalculateDecibels;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/camera/AudioCalculateDecibels;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    invoke-virtual {v0, p0}, Lcom/android/camera/AudioCalculateDecibels;->setOnVolumeListener(Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getGainValueReset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/SoundSetting;->setGainState(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    invoke-virtual {p0}, Lcom/android/camera/AudioCalculateDecibels;->start()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const-string v0, "50"

    invoke-static {p0, v0}, Lcom/android/camera/SoundSetting;->setGainState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mUltraWideAELocked:Z

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setCharacteristics(Lcom/android/camera2/CameraCapabilities;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/camera2/Camera2Proxy;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 v1, 0x56

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    :cond_2
    return-void
.end method

.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportedVideoFrontMirror()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    move v0, p1

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/CameraScreenNail;->requestFullReadPixelsWithParams(ZZ)V

    return-void
.end method

.method public onCreate(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportAiAudio()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/camera/AudioManagerAudioDeviceCallback;

    invoke-direct {p1}, Lcom/android/camera/AudioManagerAudioDeviceCallback;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    iget-object p2, p0, Lcom/android/camera/module/VideoModule;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    iget-object p2, p0, Lcom/android/camera/module/VideoModule;->mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/AudioManagerAudioDeviceCallback;->setOnAudioDeviceChangeListener(Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->setCaptureIntent(Z)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isQuickCapture()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const-string p1, "continuous-video"

    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xd6

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xe7

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initRecorderSurface()V

    new-instance p1, Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    invoke-direct {p1, p0}, Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->releaseRecorderSurface()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAiAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/AudioManagerAudioDeviceCallback;->setOnAudioDeviceChangeListener(Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;)V

    :cond_1
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsTrackFocusOn:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusState(Z)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCropRegionConsiderZoomRatio()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/android/camera/module/loader/camera2/FocusManager2;->calculateTrackFocusArea(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDoubleTap rect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p1, p0}, Lcom/android/camera2/Camera2Proxy;->startTrackFocus(Landroid/graphics/Rect;I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string p3, "MediaRecorder error. what=%d extra=%d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x6

    invoke-static {v0, p1, p3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eq p2, v1, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_2

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    :cond_2
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onGradienterSwitched(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->isGradienterOn:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x5
    .end array-data
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 7

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onInfo: ignore event "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onInfo what : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p2, "next output file started"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onMaxFileSizeReached()V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mNextVideoValues:Landroid/content/ContentValues;

    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->mNextVideoFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mNextVideoValues:Landroid/content/ContentValues;

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mNextVideoFileName:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSplitWhenReachMaxSize()Z

    move-result p2

    sget-object p3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max file size is approaching. split: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mOutputFormat:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is8KCamcorder()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/module/VideoBase;->genContentValues(IILjava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "_data"

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextVideoPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/camera/module/VideoModule;->setNextOutputFile(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mNextVideoValues:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/android/camera/module/VideoModule;->mNextVideoFileName:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object p2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reached max size. fileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const p2, 0x7f110938

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p3}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInterceptZoomingEvent(FFI)Z
    .locals 2

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onInterceptZoomingEvent: unlockAEAF by toggle or slider bar button."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_2
    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onInterceptZoomingEvent: restore continuous center focus by toggle button."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusState(Z)V

    :cond_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportVideoSAT()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onInterceptZoomingEvent(FFI)Z

    move-result p0

    return p0
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p1, "VID"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 p2, 0xd0

    if-eq p1, p2, :cond_0

    const/16 p2, 0xcf

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/camera/module/VideoModule$12;

    invoke-direct {p2, p0}, Lcom/android/camera/module/VideoModule$12;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFovcEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->notifyVideoStreamEnd()V

    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onPause()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseResources()V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeVideoFileDescriptor()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->stopFaceDetection(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetScreenOn()V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->removeMessages()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->stopBluetoothSco(I)V

    :cond_4
    return-void
.end method

.method public onPauseButtonClick()V
    .locals 6

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPauseButtonClick: isRecordingPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mPauseClickTime:J

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "onPauseButtonClick resumeVideoRecording"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->resumeVideoRecording(Lcom/android/camera/protocol/ModeProtocol$RecordState;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->pauseVideoRecording()V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->handleSubtitleRecordingPause()V

    :cond_2
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onPauseButtonClick onPause"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPause()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPictureTakenFinished(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraScreenNail;->animateCaptureWithDraw(I)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraScreenNail;->setPreviewSaveListener(Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomEmitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mHistogramEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPreviewPixelsRead([BIIIZ)V
    .locals 2

    const/4 v0, 0x3

    if-eq p4, v0, :cond_6

    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz p4, :cond_1

    const-string p5, "_data"

    invoke-virtual {p4, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const-string p4, ""

    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p5, :cond_5

    iget-boolean p5, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p5, :cond_5

    sget-object p5, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewPixelsRead E , path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mi/config/DataItemFeature;->isSupportedVideoFrontMirror()Z

    move-result p3

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 p5, 0xa2

    if-eq p3, p5, :cond_2

    const/16 p5, 0xa9

    if-eq p3, p5, :cond_2

    const/16 p5, 0xcf

    if-ne p3, p5, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    :cond_3
    if-eqz p1, :cond_4

    iget p3, p0, Lcom/android/camera/module/VideoBase;->mOrientationCompensationAtRecordStart:I

    if-eqz p3, :cond_4

    const/16 p5, 0xb4

    if-eq p3, p5, :cond_4

    add-int/2addr p3, p5

    rem-int/lit16 p3, p3, 0x168

    iput p3, p0, Lcom/android/camera/module/VideoBase;->mOrientationCompensationAtRecordStart:I

    :cond_4
    iget p3, p0, Lcom/android/camera/module/VideoBase;->mOrientationCompensationAtRecordStart:I

    invoke-static {p2, p3, p1}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p3, 0x64

    invoke-static {p1, p3}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object p3

    iget-object p5, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x46

    invoke-virtual {p5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "video_cover_data"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo p3, "video_path"

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPreviewPixelsRead X , path = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :goto_1
    invoke-super/range {p0 .. p5}, Lcom/android/camera/module/BaseModule;->onPreviewPixelsRead([BIIIZ)V

    return-void
.end method

.method public onPreviewRelease(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/VideoModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$13;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onPreviewRelease(II)V

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onPreviewSessionSuccess: module is not ready"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewSessionSuccess: session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mFaceDetectionEnabled:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehAdjust()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoBokehEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraConfigs;->setVideoBokehEnabled(Z)Z

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v2, 0xcf

    if-ne v0, v2, :cond_6

    new-array v0, v1, [I

    const/16 v1, 0x10

    aput v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p1, Lcom/android/camera/constant/UpdateConstant;->CAMERA_TYPES_MANUALLY:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_7

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected onPreviewStart()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateMutexModePreference()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->onShutterButtonFocus(ZI)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecordingIfNeeded()V

    :cond_0
    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 1
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoCastIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onReviewCancelClicked()V

    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v3, v1, :cond_2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v2, v0, :cond_3

    :cond_2
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v0, "profile size changed [%d %d]->[%d %d]"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [I

    aput v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 6

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " inStartingFocusRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, "onShutterButtonClick: ignore touch event"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v4, "onShutterButtonClick: stop"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "onShutterButtonClick: stop mode=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderWorking:Z

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xd4

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mIsSatFallback:I

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->shouldCheckSatFallbackState()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "video record check: sat fallback"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_5

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->canRecord()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v4, "onShutterButtonClick: startVideoRecording"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string/jumbo p1, "startVideoRecording mode = %d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "wait for autoFocus"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x37

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, "onSingleTapUp: frame not available"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onSingleTapUp(IIZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->exitAutoHibernation()V

    :cond_0
    return-void
.end method

.method public onTrackLost()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->notifyAutoZoomStartUiHint()V

    return-void
.end method

.method public onTrackLosting()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mTrackLostCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mTrackLostCount:I

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onUserInteraction()V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepPowerSave()V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepAutoHibernation()V

    :cond_0
    return-void
.end method

.method protected onVideoCoverCreated([BLjava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onVideoCoverCreated([BLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->supportVideoCover()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, "onVideoCoverCreated: mCurrentVideoValues == null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoCoverCreated , videoPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", curPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string p2, "custom_video_cover"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    return-void
.end method

.method public onVolumeValue([F)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setVolumeValue([F)V

    :cond_0
    return-void
.end method

.method protected onWaitStopCallbackTimeout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->stopRecorder()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord()V

    return-void
.end method

.method public onZoomingActionEnd(I)V
    .locals 5

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomingActionEnd(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->updateZoomIndexsButton()V

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "onZoomingActionEnd: restore continuous center focus by slider bar button."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p0, v2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocusState(Z)V

    :cond_2
    return-void
.end method

.method public onZoomingActionStart(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomingActionStart(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " @hash: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    :cond_0
    return-void
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public pausePreview()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->resetFocused()V

    :cond_1
    return-void
.end method

.method protected pauseVideoRecording()V
    .locals 4

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "failed to pause media recorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    :cond_0
    return-void
.end method

.method public reShowMoon()V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->notifyAutoZoomStartUiHint()V

    :cond_0
    return-void
.end method

.method protected readVideoPreferences()V
    .locals 10

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->getVideoQuality()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-le v2, v3, :cond_3

    if-ne v2, v4, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result v0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v2, v3}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(Ljava/lang/String;II)I

    move-result v0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getVideoSpeed()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xd0

    const-string v5, "film_exposuredelay"

    const/16 v6, 0xac

    if-ne v2, v3, :cond_4

    iput-object v5, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v2, v6, :cond_5

    const-string v2, "fps960"

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    :goto_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    const-string v7, "fast"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v7, 0x78

    const/4 v8, 0x5

    const/16 v9, 0x3e8

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_6

    :cond_6
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v3, v6, :cond_f

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    sget-object v0, Lcom/android/camera/module/VideoModule;->SIZE_1080:Landroid/util/Size;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_7

    sget-object v0, Lcom/android/camera/module/VideoModule;->SIZE_720:Landroid/util/Size;

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    :cond_7
    const/16 v3, 0x8

    if-ne v1, v3, :cond_8

    sget-object v0, Lcom/android/camera/module/VideoModule;->SIZE_2160:Landroid/util/Size;

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mSlowModeFps:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS120()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS480()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS240()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS960()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS480Direct()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isFPS1920()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_b
    const/16 v3, 0x1e0

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/VideoModule;->updateHfrFPSRange(Landroid/util/Size;I)V

    goto :goto_5

    :cond_c
    :goto_3
    const/16 v3, 0xf0

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/VideoModule;->updateHfrFPSRange(Landroid/util/Size;I)V

    goto :goto_5

    :cond_d
    :goto_4
    invoke-direct {p0, v0, v7}, Lcom/android/camera/module/VideoModule;->updateHfrFPSRange(Landroid/util/Size;I)V

    :cond_e
    :goto_5
    move v0, v1

    goto/16 :goto_a

    :cond_f
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    goto/16 :goto_a

    :cond_10
    :goto_6
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "10000"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const v3, 0x7f1107f6

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {v1, v5, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    goto :goto_8

    :cond_13
    :goto_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v3

    const/16 v5, 0xa0

    invoke-virtual {v3, v5}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_new_video_time_lapse_frame_interval_key"

    invoke-virtual {v1, v5, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    :goto_8
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v1, :cond_14

    move v1, v4

    goto :goto_9

    :cond_14
    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v1, :cond_16

    add-int/lit16 v0, v0, 0x3e8

    if-lt v0, v9, :cond_15

    const/16 v1, 0x3f0

    if-le v0, v1, :cond_16

    :cond_15
    add-int/lit16 v0, v0, -0x3e8

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->forceToNormalMode()V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Lcom/android/camera/module/-$$Lambda$VideoModule$C4F6_rH8hcS89uisCRn_i_1ehPc;

    invoke-direct {v3, p0}, Lcom/android/camera/module/-$$Lambda$VideoModule$C4F6_rH8hcS89uisCRn_i_1ehPc;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_16
    rem-int/lit16 v1, v0, 0x3e8

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    :goto_a
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xa2

    if-ne v1, v3, :cond_17

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K120FpsCamcorder()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/camera/module/VideoModule;->SIZE_2160:Landroid/util/Size;

    invoke-direct {p0, v1, v7}, Lcom/android/camera/module/VideoModule;->updateHfrFPSRange(Landroid/util/Size;I)V

    :cond_17
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_b

    :cond_18
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v8

    :cond_19
    :goto_b
    iput v8, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mOutputFormat:I

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v6

    if-lez v6, :cond_1a

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v6

    goto :goto_c

    :cond_1a
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :goto_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "frameRate=%d profileSize=%dx%d codec=%d"

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v0, v3, :cond_1b

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K120FpsCamcorder()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    goto :goto_d

    :cond_1b
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    goto :goto_d

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    :goto_d
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mFrameRate:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mFrameRateTrack:I

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    goto :goto_f

    :cond_1d
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getVideoDurationTime()I

    move-result v0

    mul-int/2addr v0, v9

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-nez v0, :cond_20

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupport4KDurationLimit()Z

    move-result v0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupport8KDurationLimit()Z

    move-result v1

    const v2, 0x57e40

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is8KCamcorder()Z

    move-result v1

    if-eqz v1, :cond_1e

    iput v2, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    goto :goto_e

    :cond_1e
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4KCamcorder()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v1

    if-eqz v1, :cond_1f

    iput v2, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    goto :goto_e

    :cond_1f
    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x75300

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    goto :goto_e

    :cond_20
    iput v2, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    :cond_21
    :goto_e
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_22

    if-ge v0, v9, :cond_22

    iput v9, p0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    :cond_22
    :goto_f
    return-void
.end method

.method protected registerMetaDataFunction()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/IFuncPreviewMetadataListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/camera/trackfocus/FunctionTrackFocus;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/android/camera/trackfocus/FunctionTrackFocus;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public registerProtocol()V
    .locals 7

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff01

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v3, v2, [I

    const v4, 0x7f1103be

    aput v4, v3, v1

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCameraClickObserverAction:Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

    new-array v5, v2, [I

    const/16 v6, 0xab

    aput v6, v5, v1

    invoke-interface {v0, v3, v4, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->addObservable([ILcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;[I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v3, 0xff00

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    new-array v2, v2, [I

    aput v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xa4
        0xae
        0xea
        0xd4
        0xe3
    .end array-data
.end method

.method protected releaseMediaRecorder()V
    .locals 6

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "releaseRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->cleanupEmptyFile()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseRecorder: t1="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRecorder: t2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected releaseRecorderSurface()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mRecorderSurface:Landroid/view/Surface;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

.method protected resizeForPreviewAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v1, p0, Lcom/android/camera/CameraSize;->height:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/camera/CameraSize;->width:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v1, p0, Lcom/android/camera/CameraSize;->width:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    :goto_0
    return-void
.end method

.method public resumePreview()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_0
    return-void
.end method

.method protected resumeVideoRecording(Lcom/android/camera/protocol/ModeProtocol$RecordState;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->handleSubtitleRecordingResume()V

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPauseOrResumeVideoRecording(ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "failed to resume media recorder"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    :goto_0
    return-void
.end method

.method public set3DAudioParameter()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->set3DAudioParameter()V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAiAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->is3DAudioOn()Z

    move-result v0

    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set3DAudioParameter -> enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioParameters(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->setCurrentAiAudioParameters(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setAutoZoomMode(I)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x33

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public setAutoZoomStartCapture(Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/RectF;->left:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Landroid/graphics/RectF;->top:F

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    aput p1, v1, v2

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStartCapture([FZ)V

    :cond_0
    return-void
.end method

.method public setAutoZoomStopCapture(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStopCapture(IZ)V

    :cond_0
    return-void
.end method

.method public setGainValue(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setGainValueReset(F)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/SoundSetting;->setGainState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVideoCastLayoutType(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastLayoutType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/-$$Lambda$VideoModule$2Hsmnd5fHUzJK6ZCxdDr_LiyWiM;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/-$$Lambda$VideoModule$2Hsmnd5fHUzJK6ZCxdDr_LiyWiM;-><init>(Lcom/android/camera/module/VideoModule;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVideoCastRecordingState(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCastRecordingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/-$$Lambda$VideoModule$2erCieCzGJssY_Tw51oCDxxbITY;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/-$$Lambda$VideoModule$2erCieCzGJssY_Tw51oCDxxbITY;-><init>(Lcom/android/camera/module/VideoModule;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVideoCastState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getRecordingState(Landroid/os/Bundle;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->setVideoCastRecordingState(I)V

    :cond_0
    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getLayoutType(Landroid/os/Bundle;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->setVideoCastLayoutType(I)V

    :cond_1
    return-void
.end method

.method protected shouldCheckSatFallbackState()Z
    .locals 2

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mInStartingFocusRecording:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public startAiLens()V
    .locals 0

    return-void
.end method

.method public startAutoZoom()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isShowOrHideUltraWideHint:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/VideoModule$14;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$14;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->notifyAutoZoomStartUiHint()V

    return-void
.end method

.method public startPreview()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview: previewing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return-void
.end method

.method public startTracking(Landroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->notifyAutoZoomStopUiHint()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStopCapture(IZ)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-array v3, v2, [F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, v3, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    aput v5, v3, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    aput p1, v3, v1

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v3, p1}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStartCapture([FZ)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStartCapture([FZ)V

    iget-object p1, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSelectObject(Z)V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected startVideoPreviewSession()V
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

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getOperatingMode()I

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

.method protected startVideoRecording()V
    .locals 5

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startVideoRecording: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "RECORDING_START"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/SoundSetting;->isSupportKaraoke(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {v2}, Lcom/android/camera/AudioMonitorPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/SoundSetting;->openKaraokeEquipment(Landroid/content/Context;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundSetting.isStartKaraoke121"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isStartKaraoke"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mIsStopKaraoke:Z

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/AudioMonitorPlayer;->startPlay()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/SoundSetting;->openKaraokeState(Landroid/content/Context;I)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStartVideoRecordStart(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCaptureIntent()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0x3a5

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->silenceOuterAudio()V

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startRecorder()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderFail()V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportNotifyThermal4KRecord()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :cond_8
    iget p0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {p0, v0}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStop(II)V

    :cond_9
    return-void

    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xd4

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    :cond_b
    sget-object v1, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_RECORD:[I

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startHighSpeedRecording()V

    goto :goto_1

    :cond_d
    invoke-virtual {v0, v3}, Lcom/android/camera2/Camera2Proxy;->startRecording(Z)V

    :goto_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoRecording process done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iput v3, p0, Lcom/android/camera/module/VideoModule;->mTrackLostCount:I

    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStartVideoRecordEnd()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderSucceed()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderExposureFilmMode()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onStartRecorderFail()V

    return-void
.end method

.method public stopAutoZoom()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isShowOrHideUltraWideHint:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/VideoModule$15;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$15;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->notifyAutoZoomStopUiHint()V

    return-void
.end method

.method protected stopRecorder()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPendingStopRecorder:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportNotifyThermal4KRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :cond_0
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v1, v0}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStop(II)V

    :cond_1
    new-instance v0, Lcom/android/camera/module/VideoModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$9;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/-$$Lambda$VideoModule$KH3JxbF8mtbDi8HV491_bO8EGKg;

    invoke-direct {v1, p0}, Lcom/android/camera/module/-$$Lambda$VideoModule$KH3JxbF8mtbDi8HV491_bO8EGKg;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public stopTracking(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStopCapture(IZ)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomStopCapture(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAutoZoomViewProtocol:Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$AutoZoomViewProtocol;->onTrackingStopped(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->notifyAutoZoomStartUiHint()V

    return-void
.end method

.method public stopVideoRecording(Z)V
    .locals 29

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoRecording>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera/module/VideoModule;->mVideoCaptureRunnable:Lcom/android/camera/module/VideoModule$VideoCaptureRunnable;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v1, v0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "RECORDING_STOP"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->setCameraAudioRestriction(Z)V

    if-nez p1, :cond_2

    iget v2, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xcf

    if-ne v2, v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->isAutoZoomTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->stopTracking(I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/SoundSetting;->closeKaraokeState(Landroid/content/Context;I)V

    iget-boolean v2, v0, Lcom/android/camera/module/VideoModule;->mIsStopKaraoke:Z

    if-eqz v2, :cond_4

    iput-boolean v1, v0, Lcom/android/camera/module/VideoModule;->mIsStopKaraoke:Z

    iget-object v2, v0, Lcom/android/camera/module/VideoModule;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/camera/AudioMonitorPlayer;->stopPlay()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/SoundSetting;->closeKaraokeEquipment(Landroid/content/Context;I)V

    iput-boolean v1, v0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    iput-boolean v1, v0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x64

    cmp-long v4, v8, v6

    if-gtz v4, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v1

    :goto_0
    if-eqz v4, :cond_6

    iput-boolean v5, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    :cond_6
    iget-boolean v4, v0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/camera/module/VideoModule;->mSubtitleRecording:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->handleSubtitleRecordingStop()V

    :cond_7
    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v6, 0xb4

    if-ne v4, v6, :cond_8

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v4, :cond_8

    invoke-interface {v4, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateProVideoRecordingSimpleView(Z)V

    :cond_8
    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->processingFinish()V

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Lcom/android/camera/module/VideoModule;->updateVideoTagState(I)V

    :cond_9
    invoke-direct {v0, v1}, Lcom/android/camera/module/VideoModule;->handleAiAudioTipsState(Z)V

    sget-boolean v4, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const/16 v7, 0xd6

    if-eqz v4, :cond_12

    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v8, 0xac

    if-eq v4, v8, :cond_12

    if-eq v4, v6, :cond_12

    if-eq v4, v7, :cond_12

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v4

    if-nez v4, :cond_12

    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_12

    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-nez v4, :cond_12

    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v8, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4, v8}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isUltraWideBackCamera()Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMinimumMacroOpticalZoomRatio()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getMaximumMacroOpticalZoomRatio()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_a
    sget v4, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    sget v4, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    iget-object v8, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v8}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v8

    mul-float/2addr v4, v8

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v4

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40c00000    # 6.0f

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->supportVideoSAT()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v4

    if-eqz v4, :cond_d

    sget v4, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->getMaxVideoSATZoom()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isStandaloneMacroCamera()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v8, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v8}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_e
    sget v4, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_f
    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v10

    if-ne v4, v10, :cond_10

    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_10
    sget v4, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->setVideoMaxZoomRatioByTele()V

    :cond_12
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->stopRecording()V

    :cond_13
    iget-object v4, v0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v0, Lcom/android/camera/module/VideoModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    :cond_14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v8, 0xd4

    invoke-virtual {v4, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v4, :cond_16

    iget-boolean v8, v0, Lcom/android/camera/module/VideoModule;->mMediaRecorderPostProcessing:Z

    if-eqz v8, :cond_15

    invoke-interface {v4, v5}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_2

    :cond_15
    iget-object v8, v0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    const-string v9, "film_exposuredelay"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    :cond_16
    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/16 v8, 0x3a5

    if-eqz v4, :cond_1c

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v4

    if-nez v4, :cond_1c

    iget v4, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    iget v9, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v13

    iget-object v9, v0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isFPS120()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isFPS240()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->isFPS480Direct()Z

    move-result v10

    if-nez v10, :cond_19

    iget v10, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v10

    if-eqz v10, :cond_17

    goto :goto_3

    :cond_17
    iget v10, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v10, v7, :cond_18

    const-string/jumbo v7, "video_super_night"

    goto :goto_4

    :cond_18
    move-object v15, v9

    goto :goto_5

    :cond_19
    :goto_3
    const-string/jumbo v7, "video_slow"

    :goto_4
    move-object v15, v7

    :goto_5
    iget v7, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v7, v6, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->trackProVideoInfo()V

    goto :goto_7

    :cond_1a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v6, :cond_1b

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isBluetoothScoOn()Z

    move-result v6

    move/from16 v25, v6

    goto :goto_6

    :cond_1b
    move/from16 v25, v1

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v14

    iget v6, v0, Lcom/android/camera/module/VideoModule;->mQuality:I

    move/from16 v16, v6

    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v6}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v17

    iget v6, v0, Lcom/android/camera/module/VideoModule;->mFrameRateTrack:I

    move/from16 v18, v6

    iget v6, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v19, v6

    iget-object v6, v0, Lcom/android/camera/module/VideoBase;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    move-object/from16 v20, v6

    iget-wide v6, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordTime:J

    move-wide/from16 v21, v6

    iget-boolean v6, v0, Lcom/android/camera/module/VideoModule;->mIsSubtitleSupported:Z

    move/from16 v23, v6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->getAIAudioTrackParams()[Ljava/lang/String;

    move-result-object v24

    iget-boolean v6, v0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    move/from16 v26, v6

    iget v6, v0, Lcom/android/camera/module/BaseModule;->mEnterAutoHibernationCount:I

    move/from16 v27, v6

    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v7, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v6, v7}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v28

    move v12, v4

    invoke-static/range {v9 .. v28}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoRecorded(ZIIZZZLjava/lang/String;IIIILcom/android/camera/fragment/beauty/BeautyValues;JZ[Ljava/lang/String;ZZIZ)V

    :goto_7
    if-eqz v4, :cond_1c

    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "track count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/camera/module/VideoModule;->mTrackLostCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Lcom/android/camera/module/VideoModule;->mTrackLostCount:I

    invoke-static {v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackLostCount(I)V

    :cond_1c
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordTime:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->stopRecorder()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->startPreviewAfterRecord()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoModule;->handleTempVideoFile()V

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    iget-boolean v4, v0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_1e

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v6, 0xa4

    invoke-virtual {v4, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v4, :cond_1e

    invoke-interface {v4, v5}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    iget-boolean v4, v0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->exitAutoHibernation()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v6, 0x3a8

    invoke-virtual {v4, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-eqz v4, :cond_1f

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->dismissAutoHibernation()V

    :cond_1f
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v4, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->startBluetoothSco(I)V

    :cond_20
    if-eqz p1, :cond_21

    iget-object v4, v0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-array v5, v5, [Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v0, 0x0

    invoke-static {v4, v5, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_21
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopVideoRecording<<time="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public takePreviewSnapShoot()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->takeSimplePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/CameraScreenNail;)V

    return-void
.end method

.method public takeVideoSnapShoot()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->takeVideoSnapShoot(Z)Z

    move-result p0

    return p0
.end method

.method public takeVideoSnapShoot(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "capture: low storage"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "capture: ImageSaver is full"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    const p1, 0x7f1108de

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mEnableVideoSnapshot:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->takePreviewSnapShoot()V

    return v1

    :cond_4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mBogusCameraId:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setJpegRotation(I)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setGpsLocation(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setJpegQuality()V

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateFrontMirror()V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->getCameraRotation()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    :cond_5
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "capture: start"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/module/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->captureVideoSnapshot(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoSnapshot(Z)V

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unRegisterModulePersistProtocol"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const v1, 0xff01

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method protected updateAutoHibernationFirstRecordingTime()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mRecordingSecondTime:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateAutoHibernationFirstRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected updateBeauty()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoCastIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateBeauty()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateFpsRange()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const-string v1, ", mHfrFPSUpper = "

    const-string v2, "mHfrFPSLower = "

    const/4 v3, 0x3

    const/16 v4, 0xa2

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->is4K120FpsCamcorder()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSLower:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Landroid/util/Range;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSLower:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Landroid/util/Range;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSLower:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSLower:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v1, Landroid/util/Range;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSLower:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/camera/module/VideoModule;->mHfrFPSUpper:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto/16 :goto_4

    :cond_2
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedVideoExposureDelay()Landroid/util/Range;

    move-result-object v0

    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODE_FILM_EXPOSUREDELAY bestRange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setTuningMode(B)V

    goto/16 :goto_4

    :cond_3
    const/16 v1, 0xd6

    const/16 v2, 0x18

    if-ne v0, v1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto/16 :goto_4

    :cond_4
    const/16 v1, 0x1e

    if-ne v0, v4, :cond_5

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3, v0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportQcomVideoHdr()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedFpsRange()[Landroid/util/Range;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v4, v0, v3

    array-length v5, v0

    :goto_0
    if-ge v3, v5, :cond_c

    aget-object v6, v0, v3

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getHSRValue()I

    move-result v7

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_7

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v4, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/16 :goto_3

    :cond_6
    new-instance v4, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_3

    :cond_7
    if-nez v7, :cond_8

    iget v8, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v9, p0, Lcom/android/camera/module/BaseModule;->mActualCameraId:I

    invoke-static {v8, v9}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v4, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_3

    :cond_8
    if-ne v7, v2, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    iput v2, p0, Lcom/android/camera/module/VideoModule;->mFrameRateTrack:I

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    if-ne v7, v8, :cond_b

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_b

    :goto_1
    move-object v4, v6

    :cond_b
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_3
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v4, :cond_e

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_d

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v4, v0

    :cond_e
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bestRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v4}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, v4}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    :goto_4
    return-void
.end method

.method protected updateHDRPreference()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->applyVideoHdrMode(Z)V

    :cond_1
    return-void
.end method

.method public updateManualEvAdjust()V
    .locals 7

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_5

    const v0, 0x7f110608

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_qc_camera_exposuretime_key"

    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11067a

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_qc_camera_iso_key"

    invoke-direct {p0, v4, v3}, Lcom/android/camera/module/VideoModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODE_MANUAL: exposureTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "iso = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->supportRealtimeManualExposureTime()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/android/camera/module/-$$Lambda$VideoModule$L1tu_MmwDPtMVSSCnIkqRyeXuCw;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/-$$Lambda$VideoModule$L1tu_MmwDPtMVSSCnIkqRyeXuCw;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getFocusMode()I

    move-result v0

    if-ne v5, v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/android/camera/module/-$$Lambda$VideoModule$RuRzXc60nObzrfVdMDPKOzhIxKU;

    invoke-direct {v1, p0}, Lcom/android/camera/module/-$$Lambda$VideoModule$RuRzXc60nObzrfVdMDPKOzhIxKU;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    :cond_5
    return-void
.end method

.method protected updatePictureAndPreviewSize()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v0

    div-double/2addr v1, v3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v3, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoSize:Lcom/android/camera/CameraSize;

    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "videoSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isVideoSnapshotSizeLimited()Z

    move-result v3

    const v4, 0x7fffffff

    if-eqz v3, :cond_0

    iget v4, v0, Lcom/android/camera/CameraSize;->width:I

    iget v3, v0, Lcom/android/camera/CameraSize;->height:I

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/16 v7, 0x100

    invoke-virtual {v6, v7}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(I)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v1, v2, v4, v3}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pictureSize: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v4

    if-gt v3, v4, :cond_2

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    const/16 v4, 0x2d0

    if-ge v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    goto :goto_4

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->getMaxVideoPreviewSize()[I

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v0, 0x0

    aget v3, v4, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v5

    if-le v3, v5, :cond_3

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    goto :goto_2

    :cond_3
    aget v0, v4, v0

    :goto_2
    const/4 v3, 0x1

    aget v5, v4, v3

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    if-le v5, v6, :cond_4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v3

    goto :goto_3

    :cond_4
    aget v3, v4, v3

    :cond_5
    :goto_3
    move v8, v3

    move v3, v0

    move v0, v8

    :goto_4
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v5, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v5}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v1, v2, v3, v0}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method protected updateRecordingTime()V
    .locals 15

    move-object v0, p0

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    iget-boolean v1, v0, Lcom/android/camera/module/BaseModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v1, v3

    iget-boolean v3, v0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-eqz v3, :cond_2

    iget-wide v1, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordedDuration:J

    :cond_2
    iget v3, v0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    const v8, 0xea60

    sub-int/2addr v3, v8

    int-to-long v8, v3

    cmp-long v3, v1, v8

    if-ltz v3, :cond_4

    iget-wide v8, v0, Lcom/android/camera/module/VideoBase;->mIntentRequestSize:J

    cmp-long v3, v8, v5

    if-eqz v3, :cond_3

    const-wide/32 v10, 0xf4240

    cmp-long v3, v8, v10

    if-lez v3, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v7

    :goto_0
    if-eqz v3, :cond_5

    iget v8, v0, Lcom/android/camera/module/VideoBase;->mMaxVideoDurationInMs:I

    int-to-long v8, v8

    sub-long/2addr v8, v1

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e7

    add-long/2addr v8, v10

    goto :goto_1

    :cond_5
    move-wide v8, v1

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isNormalMode()Z

    move-result v10

    const-string v11, "film_exposuredelay"

    const/16 v12, 0xa9

    const-wide/16 v13, 0x3e8

    if-eqz v10, :cond_6

    div-long v5, v8, v13

    iput-wide v5, v0, Lcom/android/camera/module/VideoModule;->mVideoRecordTime:J

    invoke-static {v8, v9, v7}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    iget-object v5, v0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    const-string v6, "fast"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v8, v9, v7}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_8
    :goto_2
    iget v5, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v5, v5

    double-to-long v8, v5

    iget v10, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v10, v12, :cond_9

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v10

    if-nez v10, :cond_a

    :cond_9
    iget-object v10, v0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_a
    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/camera/module/VideoModule;->getSpeedRecordVideoLength(JD)J

    move-result-wide v5

    invoke-static {v5, v6, v7}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_b
    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/camera/module/VideoModule;->getSpeedRecordVideoLength(JD)J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    :goto_3
    iget-object v6, v0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget v6, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v12, :cond_c

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-object v6, v0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    cmp-long v6, v8, v13

    if-lez v6, :cond_e

    goto :goto_4

    :cond_e
    move-wide v13, v8

    :goto_4
    invoke-static {v1, v2, v7, v7, v4}, Lcom/android/camera/Util;->millisecondToTimeString(JZZZ)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v6, :cond_15

    iget v6, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v6, v12, :cond_f

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    iget-object v6, v0, Lcom/android/camera/module/VideoModule;->mSpeed:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {v1, v2, v7}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateFastmotionProRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    iget-object v6, v0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v6, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :goto_5
    iget-boolean v6, v0, Lcom/android/camera/module/BaseModule;->mIsAutoHibernationSupported:Z

    if-eqz v6, :cond_15

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v8, 0x3a8

    invoke-virtual {v6, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;

    iget v8, v0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    if-ne v8, v12, :cond_13

    if-eqz v6, :cond_15

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {v1, v2, v7}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateAutoHibernationRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    invoke-static {v1, v2, v7}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v9, v9

    invoke-direct {p0, v1, v2, v9, v10}, Lcom/android/camera/module/VideoModule;->getSpeedRecordVideoLength(JD)J

    move-result-wide v9

    invoke-static {v9, v10, v7}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateAutoHibernationRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    const/16 v9, 0xa2

    if-eq v8, v9, :cond_14

    const/16 v9, 0xb4

    if-ne v8, v9, :cond_15

    :cond_14
    if-eqz v6, :cond_15

    const-string v8, ""

    invoke-interface {v6, v5, v8}, Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;->updateAutoHibernationRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_6
    iput-object v5, v0, Lcom/android/camera/module/VideoModule;->mRecordingTime:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/camera/module/VideoModule;->mRecordingSecondTime:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v4, v3, :cond_16

    iput-boolean v3, v0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    :cond_16
    const-wide/16 v3, 0x1f4

    iget-boolean v5, v0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecordingPaused:Z

    if-nez v5, :cond_17

    rem-long v3, v1, v13

    sub-long v3, v13, v3

    :cond_17
    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2a

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-boolean v3, v0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_19

    iget-wide v3, v0, Lcom/android/camera/module/VideoModule;->mTimeLapseDuration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_19

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    iget-wide v3, v0, Lcom/android/camera/module/VideoModule;->mTimeLapseDuration:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_19

    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(Z)V

    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRecordingTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mTimeLapseDuration "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/android/camera/module/VideoModule;->mTimeLapseDuration:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_7
    return-void
.end method

.method public updateSATZooming(Z)V
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupport3SATZoomingOptimization()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportVideoSAT()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isInVideoSAT()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setSatIsZooming(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->resumePreview()V

    return-void
.end method

.method protected updateVideoStabilization()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->needDisableEISAndOIS()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isEisOn()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "videoStabilization: EIS"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isEISPreviewSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "videoStabilization: OIS"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    :cond_3
    :goto_0
    return-void
.end method
