.class public Lcom/android/camera/module/DollyZoomModule;
.super Lcom/android/camera/module/BaseModule;
.source "DollyZoomModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;
.implements Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/DollyZoomModule$MainHandler;
    }
.end annotation


# static fields
.field private static final FIXED_AF_DISTANCE:I = 0x46

.field private static final START_OFFSET_MS:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "DollyZoomModule"

.field public static final TEMP_VIDEO_FILE:Ljava/lang/String; = "sdcard/DCIM/Camera/.dolly_zoom/default_dz_video"

.field public static final TEMP_VIDEO_PATH:Ljava/lang/String; = "sdcard/DCIM/Camera/.dolly_zoom/"

.field public static final ZOOM_SCALE_FORCE_SAVE:F = 2.0f

.field public static final ZOOM_SCALE_STOP_RECORD:F = 4.0f


# instance fields
.field private mCountTimer:Ljava/util/Timer;

.field private mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

.field private mInitRender:Z

.field private mIsFinished:Z

.field private mIsRecording:Z

.field private mIsVideoSaveCancel:Z

.field private mIsVideoSaved:Z

.field private mLastDollyZoomState:I

.field private mLastRecordingState:I

.field private final mLock:Ljava/lang/Object;

.field private mOnResumeTime:J

.field private mPendingStart:Z

.field private mRecordingStartTime:J

.field private mRenderRect:Landroid/graphics/Rect;

.field private mResetCaptureHintCont:I

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    iput v0, p0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    iput v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/DollyZoomModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/DollyZoomModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/DollyZoomModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->setOrientationParameter()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/module/DollyZoomModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/DollyZoomModule;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cancelRecordingCount()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "cancelRecordingCount"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->hiddenTopRecordingTime()V

    :cond_0
    return-void
.end method

.method private checkShutterCondition()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: isFrameAvailable = false"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    if-nez v0, :cond_2

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: The video has not been saved"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/DollyZoomModule;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: Stop recording too quickly"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShutterCondition: ignoreTouchEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: low storage"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x2a4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->canSnap()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_0
    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "checkShutterCondition: can\'t snap"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    :goto_1
    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShutterCondition: mInitRender:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDollyZoomCamera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private doLaterReleaseIfNeed()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseIfNotRecording()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/Camera;->releaseAll(ZZ)V

    :cond_1
    return-void
.end method

.method private hiddenTopRecordingTime()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_0
    return-void
.end method

.method private initDollyZoomMode()V
    .locals 11

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "initDollyZoomMode failed, dollyZoomProcess is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v1

    const/4 v2, 0x5

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/device/Common;->isSupportDollyZoomSpecificEncode()Z

    move-result v4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/device/Common;->isSupportDollyZoomHighEffect()Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    move v5, v1

    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v7, v1, 0x168

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v9

    new-instance v10, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$gFMTFJdtVynZY9zsEo-1AX5gDsc;

    move-object v1, v10

    move-object v2, p0

    move v3, v4

    move v4, v5

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$gFMTFJdtVynZY9zsEo-1AX5gDsc;-><init>(Lcom/android/camera/module/DollyZoomModule;IIIII)V

    invoke-virtual {v9, v10}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDollyZoomMode filmSizeState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/camera/module/DollyZoomModule;->mPendingStart:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setRendererListener(Lcom/android/camera/ui/V6CameraGLSurfaceView$RendererListener;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    return-void
.end method

.method private synthetic lambda$initDollyZoomMode$4(IIIII)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-direct {v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    iget v2, v2, Lcom/android/camera/CameraSize;->width:I

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructMediaEffectCamera(IIII)V

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p1, p3}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetFilmSizeState(I)Z

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p1, p4}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetEncodeType(I)Z

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    const-string p2, "sdcard/DCIM/Camera/.dolly_zoom/default_dz_video"

    invoke-virtual {p1, p2}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetSavePath(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p0, p5}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetRotation(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onDestroy$6()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelRecordingCount()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3, v3, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setCenterHint(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onDestroy$7(Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy DestructRender & DestructMediaEffectCamera start"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->DestructRender()V

    invoke-virtual {p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->DestructMediaEffectCamera()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    sget-object p1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy DestructRender & DestructMediaEffectCamera end"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onDollyZoomState$0(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    if-nez v0, :cond_1

    const p0, 0x7f11030a

    invoke-interface {p1, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->updateCaptureMessage(IZ)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$onDollyZoomState$1(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V
    .locals 2

    const v0, 0x7f11030a

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->updateCaptureMessage(IZ)V

    return-void
.end method

.method private synthetic lambda$onDollyZoomState$2(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    if-nez v0, :cond_1

    const/4 p0, -0x1

    invoke-interface {p1, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->updateCaptureMessage(IZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onDollyZoomState$3(FZII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0x2a4

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-eqz v4, :cond_12

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v5, v0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-interface {v4, v1}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->updateZoomRatioHint(F)V

    :cond_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget v5, v0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    const/4 v7, -0x1

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v5, :cond_3

    if-ne v2, v6, :cond_b

    iput-boolean v12, v0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    sget-object v5, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v13, "onDollyZoomState record video failed"

    invoke-static {v5, v13}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    const/4 v13, 0x4

    if-eq v5, v13, :cond_8

    const/4 v13, 0x5

    if-eq v5, v13, :cond_8

    const/4 v13, 0x6

    if-eq v5, v13, :cond_8

    const/4 v13, 0x7

    if-ne v5, v13, :cond_4

    goto :goto_1

    :cond_4
    if-eq v5, v10, :cond_5

    if-ne v5, v6, :cond_b

    :cond_5
    iget v5, v0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    if-ne v5, v10, :cond_6

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/DollyZoomModule;->cancelRecordingCount()V

    :cond_6
    iget v5, v0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    if-eq v5, v10, :cond_7

    move v5, v12

    goto :goto_0

    :cond_7
    move v5, v11

    :goto_0
    move v14, v11

    goto :goto_2

    :cond_8
    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/DollyZoomModule;->cancelRecordingCount()V

    move v5, v11

    move v14, v5

    :goto_2
    move v13, v12

    goto :goto_4

    :cond_9
    iget-boolean v5, v0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-eqz v5, :cond_a

    invoke-static {v12, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomZoomValue(ZF)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/DollyZoomModule;->cancelRecordingCount()V

    invoke-interface {v4, v12}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->prepare(Z)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    iput-boolean v12, v0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    if-eq v3, v7, :cond_b

    iget-object v5, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$a8gEseOlJWxrpLfSdq_hWxtV02M;

    invoke-direct {v13, v0, v4}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$a8gEseOlJWxrpLfSdq_hWxtV02M;-><init>(Lcom/android/camera/module/DollyZoomModule;Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V

    invoke-virtual {v5, v13, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v13, v11

    move v5, v12

    move v14, v5

    goto :goto_4

    :cond_b
    :goto_3
    move v13, v11

    move v14, v13

    move v5, v12

    :goto_4
    if-eqz v13, :cond_10

    iget v13, v0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    if-eq v13, v2, :cond_10

    sget-object v13, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDollyZoomState mLastRecordingState:"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " GetEncoderState:"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    if-nez v7, :cond_f

    iget v7, v0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    if-eq v7, v10, :cond_c

    if-eq v7, v6, :cond_c

    move v6, v12

    goto :goto_5

    :cond_c
    move v6, v11

    :goto_5
    invoke-static {v6, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomZoomValue(ZF)V

    if-ne v2, v12, :cond_e

    iget-boolean v1, v0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    if-eqz v1, :cond_d

    invoke-interface {v4, v11}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->prepare(Z)V

    move v11, v5

    goto :goto_6

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/DollyZoomModule;->cancelRecordingCount()V

    invoke-interface {v4, v11}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->stopCaptureToPreviewResult(Z)V

    :goto_6
    sget-object v1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState mIsVideoSaveCancel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    move v11, v5

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    iput-boolean v12, v0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    goto :goto_8

    :cond_f
    if-ne v2, v6, :cond_10

    invoke-static {v12, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomZoomValue(ZF)V

    invoke-interface {v4, v11}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->prepare(Z)V

    const v1, 0x7f11030e

    invoke-interface {v4, v1, v12}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->updateCaptureMessage(IZ)V

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$jSTpPPdV-VP36scyw_xMMq4laRs;

    invoke-direct {v5, v4}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$jSTpPPdV-VP36scyw_xMMq4laRs;-><init>(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    iput-boolean v12, v0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    goto :goto_8

    :cond_10
    move v11, v5

    :goto_8
    iput v2, v0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    const/4 v1, -0x1

    if-eq v3, v1, :cond_12

    if-eqz v11, :cond_12

    const v1, 0x7f11030a

    if-eq v3, v1, :cond_11

    iget v1, v0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/android/camera/module/DollyZoomModule;->mResetCaptureHintCont:I

    const v1, 0x7f11030b

    if-ne v3, v1, :cond_11

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$TnIGGAPxyWEss3wK9nulasyp1NA;

    invoke-direct {v2, v0, v4}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$TnIGGAPxyWEss3wK9nulasyp1NA;-><init>(Lcom/android/camera/module/DollyZoomModule;Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    invoke-interface {v4, v3, v14}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->updateCaptureMessage(IZ)V

    :cond_12
    :goto_9
    return-void
.end method

.method static synthetic lambda$onNewUriArrived$5(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->onSaveFinish(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$setOrientationParameter$8()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setDeviceOrientation(I)V

    return-void
.end method

.method private onDollyZoomState()V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "mDollyZoomCamera is null, onDollyZoomState fail"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowState()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowScale()D

    move-result-wide v4

    double-to-float v8, v4

    invoke-virtual {v0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetEncoderState()I

    move-result v10

    iget v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    if-eq v0, v2, :cond_3

    const v0, 0x7f11030a

    const-string v4, " recordingState:"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState unknown state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    const v1, 0x7f11027b

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_EARLY_STOP_BY_ALGO zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    sget-object v1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_MOVE_OUT_ZOOM zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const v1, 0x7f11030d

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_MOVE_OUT_FRAME zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_4
    const v1, 0x7f11030c

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_BAD_ALGO_RESLUT zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_5
    sget-object v1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_NORMAL_END zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const v1, 0x7f11030b

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_RUNNING zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_7
    sget-object v1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_INITIALIZED zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_WAITING zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v1, v0

    goto :goto_1

    :pswitch_9
    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDollyZoomState RUN_STATE_FAILED zoomScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput v2, p0, Lcom/android/camera/module/DollyZoomModule;->mLastDollyZoomState:I

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    const/4 v0, -0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x7

    if-ne v2, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x5

    if-ne v2, v0, :cond_4

    const-string/jumbo v0, "value_dolly_zoom_state_frame_out"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    const-string/jumbo v0, "value_dolly_zoom_state_target_lost"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLastRecordingState:I

    if-ne v0, v10, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_3
    move v11, v1

    move v9, v3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;-><init>(Lcom/android/camera/module/DollyZoomModule;FZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onVideoSaveFinish()V
    .locals 6

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    const-string v1, "_data"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v1, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->onPreviewPrepare(Landroid/content/ContentValues;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v3, v1}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->MI_LIVE_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private resetAndUnlock3A()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "resetAndUnlock3A"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "resetAndUnlock3A, mCamera2Device is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateFocusMode()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    return-void
.end method

.method private resumePreviewIfNeeded()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "resumePreviewIfNeeded"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinished:Z

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->resumePreview()V

    return-void
.end method

.method private saveVideo()V
    .locals 7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f110935

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "sdcard/DCIM/Camera/.dolly_zoom/default_dz_video"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v4, "saveVideo start"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    sget-object v4, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v5, "saveVideo failed."

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v3, 0x0

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveVideo done, success="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cost="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->onVideoSaveFinish()V

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "prepare save video"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw p0
.end method

.method private setOrientation(II)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v0, :cond_1

    add-int/lit8 v1, p1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetRotation(I)Z

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DollyZoomCamera SetRotation orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_2

    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->setOrientationParameter()V

    :cond_2
    return-void
.end method

.method private setOrientationParameter()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$F0YrmtcuTFOCPHB-CoLqi5n9sFQ;

    invoke-direct {v1, p0}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$F0YrmtcuTFOCPHB-CoLqi5n9sFQ;-><init>(Lcom/android/camera/module/DollyZoomModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method private startPreviewSession()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startPreview: camera has been closed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualCamWaterMarkEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mSurfaceCreatedTimestamp:J

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->getOperatingMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method private startRecordingCount()V
    .locals 7

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecordingCount"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountTimer:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mCountTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/camera/module/DollyZoomModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/DollyZoomModule$1;-><init>(Lcom/android/camera/module/DollyZoomModule;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/DollyZoomModule;->mRecordingStartTime:J

    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mCountTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startVideoRecording()V
    .locals 4

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->processingPrepare()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->processingStart()V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->StartRecording()V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->startRecordingCount()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private stopVideoRecording()V
    .locals 4

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelRecordingCount()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->processingFinish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->StopRecording()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/DollyZoomModule;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaveCancel:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateDeviceOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setDeviceOrientation(I)V

    return-void
.end method

.method private updateFocusMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method private updateLiveRelated()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera2/Camera2Proxy;->startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPictureSize:Lcom/android/camera/CameraSize;

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize mAlgorithmPreviewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private updateVideoStabilization()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateVideoStabilization EIS enable: true"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public checkDisplayOrientation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setCameraDisplayOrientation(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, p0}, Lcom/android/camera/FocusManagerAbstract;->setDisplayOrientation(I)V

    :cond_2
    return-void
.end method

.method public closeCamera()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->setAeAwbLock(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->destroy()V

    :cond_2
    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "closeCamera X"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected varargs consumePreference([I)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_c

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    const/16 v4, 0x9

    if-eq v3, v4, :cond_9

    const/16 v4, 0xe

    if-eq v3, v4, :cond_8

    const/16 v4, 0x19

    if-eq v3, v4, :cond_7

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_6

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_5

    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_2

    const/16 v4, 0x36

    if-eq v3, v4, :cond_1

    const/16 v4, 0x37

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no consumer for this updateType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateLiveRelated()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateBackSoftLightPreference()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateDeviceOrientation()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateVideoStabilization()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateExposureMeteringMode()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updateFocusMode()V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->updatePictureAndPreviewSize()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    return-void
.end method

.method public fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/StartControl;->getFeatureDetail()Lcom/android/camera/module/loader/StartControlFeatureDetail;

    move-result-object p0

    const p1, 0x7f0a0192

    const v0, 0xfffffb

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->addFragmentInfo(II)V

    const p1, 0x7f0a0088

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->hideFragment(I)V

    const p1, 0x7f0a0095

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->hideFragment(I)V

    const p1, 0x7f0a0093

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/StartControlFeatureDetail;->hideFragment(I)V

    return-void
.end method

.method protected getOperatingMode()I
    .locals 0

    const p0, 0x800e

    return p0
.end method

.method public getProcessorType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public isDoingAction()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcessorReady()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    return p0
.end method

.method public isSelectingCapturedResult()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnInterruptable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected judgeTapableRectByUiStyle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$initDollyZoomMode$4$DollyZoomModule(IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/module/DollyZoomModule;->lambda$initDollyZoomMode$4(IIIII)V

    return-void
.end method

.method public synthetic lambda$onDestroy$6$DollyZoomModule()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDestroy$6()V

    return-void
.end method

.method public synthetic lambda$onDestroy$7$DollyZoomModule(Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDestroy$7(Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V

    return-void
.end method

.method public synthetic lambda$onDollyZoomState$0$DollyZoomModule(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDollyZoomState$0(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V

    return-void
.end method

.method public synthetic lambda$onDollyZoomState$2$DollyZoomModule(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDollyZoomState$2(Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;)V

    return-void
.end method

.method public synthetic lambda$onDollyZoomState$3$DollyZoomModule(FZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDollyZoomState$3(FZII)V

    return-void
.end method

.method public synthetic lambda$setOrientationParameter$8$DollyZoomModule()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$setOrientationParameter$8()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/android/camera/module/BaseModule;->mLastBackPressedTime:J

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v0, 0x7f11081d

    invoke-static {p0, v0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->stopVideoRecording()V

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x2a4

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->onBackPressed()V

    return v1

    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.SPEECH_SHUTTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "on Receive speech shutter broadcast action intent"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/DollyZoomModule;->onShutterButtonClick(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCameraOpened()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->FUN_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->startPreviewSession()V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->initDollyZoomMode()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/DollyZoomModule;->mOnResumeTime:J

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCancelClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    return-void
.end method

.method public onCreate(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    new-instance p1, Lcom/android/camera/module/DollyZoomModule$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/module/DollyZoomModule$MainHandler;-><init>(Lcom/android/camera/module/DollyZoomModule;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->onCameraOpened()V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    const-string p0, "sdcard/DCIM/Camera/.dolly_zoom/"

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$V0x5JsuFY_KDT5QxyvekulX7UsY;

    invoke-direct {v1, p0}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$V0x5JsuFY_KDT5QxyvekulX7UsY;-><init>(Lcom/android/camera/module/DollyZoomModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setPendingChange(Z)V

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy mDollyZoomCamera will be destructed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$N6JvrNAPnyk7dIBzh4x8QmZ7pig;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$N6JvrNAPnyk7dIBzh4x8QmZ7pig;-><init>(Lcom/android/camera/module/DollyZoomModule;Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onDrawFrame(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;)V
    .locals 3

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p1, "mDollyZoomCamera is null, PushExtraYAndUVFrame fail"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    if-nez p2, :cond_1

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p1, "onDrawFrame: renderRect hasn\'t been initialized"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    if-nez p2, :cond_2

    sget-object p1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p2, "onDrawFrame InitRender start"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructRender()V

    iget-object p1, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    iget-object p2, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->InitRender(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p1, "onDrawFrame InitRender end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RenderFrame()V

    :goto_0
    return-void
.end method

.method public onExitClicked()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onExitClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->cancelRecordingCount()V

    return-void
.end method

.method public onFragmentResume()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentResume, cameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mPendingStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mPendingStart:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->resumePreview()V

    :cond_1
    return-void
.end method

.method public onGiveUpClicked()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onGiveUpClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resetAndUnlock3A()V

    return-void
.end method

.method public onGuideClicked()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onGuideClicked"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mPendingStart:Z

    return-void
.end method

.method public onHostStopAndNotifyActionStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onHostStopAndNotifyActionStop()V

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHostStopAndNotifyActionStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->stopVideoRecording()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resumePreviewIfNeeded()V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->doLaterReleaseIfNeed()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x2a4

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->canSnap()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const/16 v0, 0x58

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eq p1, v2, :cond_4

    const/16 v4, 0x19

    if-eq p1, v4, :cond_4

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_2

    const/16 v4, 0x42

    if-eq p1, v4, :cond_2

    const/16 v4, 0x57

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x28

    const v0, 0x7f110741

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/camera/module/DollyZoomModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_3
    return v3

    :cond_4
    if-eq p1, v2, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v3

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    :cond_7
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_8
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_9
    :goto_3
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$J0MyJWVX-TuIKzxxn1CvXnKhFnI;

    invoke-direct {p2, p1}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$J0MyJWVX-TuIKzxxn1CvXnKhFnI;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/DollyZoomModule;->setOrientation(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->removeMessages()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetScreenOn()V

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->closeCamera()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 1

    const/4 p2, 0x1

    :try_start_0
    iget-object p3, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    if-nez p3, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p1, "mDollyZoomCamera is null, PushExtraYAndUVFrame fail"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_0
    iget-object p3, p0, Lcom/android/camera/module/DollyZoomModule;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/DollyZoomModule;->mDollyZoomCamera:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v0, p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->PushExtraYAndUVFrame(Landroid/media/Image;)V

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->onDollyZoomState()V

    :cond_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPreviewFrame fail, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p2
.end method

.method public onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onPreviewMetaDataUpdate(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->retryOnceIfCameraError(Landroid/os/Handler;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p1, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->previewWhenSessionSuccess()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "onReviewDoneClicked return, configChanges is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "onReviewDoneClicked return, configChanges is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    return-void
.end method

.method public onSaveClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->saveVideo()V

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->checkShutterCondition()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v1, 0x6e

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->onUserInteraction()V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "speech_shutter_desc"

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    iget-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez p1, :cond_3

    const-string/jumbo p1, "value_dolly_zoom_start_record"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    :cond_2
    sget-object p1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick startVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->startVideoRecording()V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "onShutterButtonClick stopVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsVideoSaved:Z

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->stopVideoRecording()V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->isDepthFocus()Z

    move-result p1

    xor-int/2addr p1, v0

    sget-object v1, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick mIsRecording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isCAF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_7
    iget-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStopClicked()V
    .locals 1

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v0, "onStopClicked"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/camera/module/DollyZoomModule;->mRenderRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->top:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/DollyZoomModule;->mInitRender:Z

    sget-object p0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string p1, "onSurfaceChanged"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method protected onThermalConstrained()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->onReviewCancelClicked()V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_1
    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public pausePreview()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinished:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method protected performKeyClicked(ILjava/lang/String;IZ)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p2}, Lcom/android/camera/module/DollyZoomModule;->onShutterButtonFocus(ZI)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/DollyZoomModule;->onShutterButtonClick(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/camera/module/DollyZoomModule;->onShutterButtonFocus(ZI)V

    :cond_2
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

    const/16 v1, 0x2a5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void

    :array_0
    .array-data 4
        0xa4
        0xd4
    .end array-data
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method

.method public resumePreview()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    :cond_0
    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFrameAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/DollyZoomModule;->resumePreviewIfNeeded()V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsRecording:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/DollyZoomModule;->mIsFinished:Z

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

.method public startPreview()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/DollyZoomModule;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDisplayOrientation(I)V

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAeLockSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    sget-object v0, Lcom/android/camera/module/DollyZoomModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterModulePersistProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const/16 v1, 0x2a5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method
