.class public Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;
.super Ljava/lang/Object;
.source "MimojiAsControlImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;


# static fields
.field private static final FLAG_HAS_FACE:I = 0xa

.field private static final FLAG_INIT_FACE:I = 0x0

.field private static final GIF_SUBTITLE_ASSETS_PATH:Ljava/lang/String; = "gif_subtitle/3336a65c52528c9c368e942d3dd307f8-le64.cache-3"

.field private static final GIF_SUBTITLE_CACHE_FILE:Ljava/lang/String; = "3336a65c52528c9c368e942d3dd307f8-le64.cache-3"

.field private static final GIF_SUBTITLE_DIR:Ljava/lang/String;

.field private static final HANDLER_RECORDING_CURRENT_FILE_SIZE:I = 0x3

.field private static final HANDLER_RECORDING_CURRENT_TIME:I = 0x1

.field private static final HANDLER_RECORDING_MAX_DURATION_REACHED:I = 0x2

.field private static final HANDLER_RECORDING_MAX_FILE_SIZE_REACHED:I = 0x4

.field private static final HANDLER_RESOURCE_ERROR_BROKEN:I = 0x0

.field private static final START_OFFSET_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "MimojiAsImpl"


# instance fields
.field private mActivityBase:Lcom/android/camera/ActivityBase;

.field private mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

.field private mAvatarConfigPath:Ljava/lang/String;

.field private final mAvatarLock:Ljava/lang/Object;

.field private mAvatarTemplatePath:Ljava/lang/String;

.field private mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

.field private mCaptureHandler:Landroid/os/Handler;

.field private mCaptureThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurrentScreenOrientation:I

.field private mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

.field private mDeviceRotation:I

.field private mDisplayOrientation:I

.field private mDrawSize:Landroid/util/Size;

.field private mFaceDectectResult:I

.field private mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mGifBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mIsFaceDetectSuccess:Z

.field private mIsFrontCamera:Z

.field private mIsGifOn:Z

.field private mIsNoFaceResult:I

.field private mIsRecordStopping:Z

.field private volatile mIsRecording:Z

.field private mIsShutterButtonClick:Z

.field private mIsStopRender:Z

.field private mLastInitResult:Z

.field private mLastNeedBeauty:Z

.field private mLoadHandler:Landroid/os/Handler;

.field private mLoadThread:Landroid/os/HandlerThread;

.field private mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

.field private mMaxVideoDurationInMs:I

.field private mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

.field private mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

.field private mNeedCapture:Z

.field private mNeedThumbnail:Z

.field private mOrientation:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

.field private mRecordingListener:Lcom/arcsoft/avatar2/recoder/RecordingListener;

.field private mSceneTriggerCallback:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

.field private mStopRecordType:I

.field private mTextureId:[I

.field private mTotalRecordingTime:J

.field private mUiHandler:Landroid/os/Handler;

.field private uiStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/voip-data/.fccache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->GIF_SUBTITLE_DIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentScreenOrientation:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsShutterButtonClick:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsStopRender:Z

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mFaceDectectResult:I

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFaceDetectSuccess:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedThumbnail:Z

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LoadConfig"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Capture"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureThread:Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTextureId:[I

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecordStopping:Z

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastInitResult:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$3;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$4;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$4;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordingListener:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$5;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/device/Common;->isSupportDynamicFeature()Z

    move-result v1

    const-string v2, "MimojiAsImpl"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji2 init load so... supportGifVideoSegment = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->supportGifVideoSegment()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mimoji_tracking"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->supportGifVideoSegment()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mimoji_bokeh_845_video"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "vvc++_shared"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ffmpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_soundsupport"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_video2gif"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_avatarengine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMaxVideoDurationInMs:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMaxVideoDurationInMs:I

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xa6

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xf7

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLoadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$1;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$1;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mSceneTriggerCallback:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setIsAvatarInited(Z)V

    const-string p0, "MimojiAsControlImpl:  constructor"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private CaptureCallback(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    const/16 v4, 0x10e

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    const/16 v7, 0x5a

    if-eq v0, v7, :cond_1

    iget v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v11, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    move-object v6, v3

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v6

    iget-boolean v7, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    if-eqz v7, :cond_3

    iget v7, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_3

    iget v7, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    add-int/lit16 v7, v7, 0xb4

    rem-int/lit16 v7, v7, 0x168

    goto :goto_2

    :cond_3
    iget v7, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    :goto_2
    iget-boolean v8, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    if-eqz v8, :cond_4

    move-object v8, v3

    goto :goto_3

    :cond_4
    move-object v8, v5

    :goto_3
    iget-boolean v9, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    invoke-static {v2, v8, v7, v9}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    iget-object v8, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v8}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9, v9}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    iget-object v7, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v7

    check-cast v7, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v7

    move v11, v7

    goto :goto_4

    :cond_5
    move v11, v0

    :goto_4
    new-instance v7, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, -0x4

    const/4 v15, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    iget-boolean v6, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    move v9, v0

    :goto_5
    iget v6, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    invoke-static {v9, v6}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v6

    add-int/2addr v6, v4

    rem-int/lit16 v6, v6, 0x168

    new-instance v4, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    iget-object v8, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    iget-object v9, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    iget-object v10, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    const/16 v11, 0x100

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    sget v6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {v4, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v4

    const/4 v6, -0x1

    iget v9, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    if-ne v6, v9, :cond_7

    goto :goto_6

    :cond_7
    iget v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    :goto_6
    invoke-virtual {v4, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-static {v4}, Lcom/android/camera/Util;->getTimeWatermark(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_8
    move-object v4, v2

    :goto_7
    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v2}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v5, v2

    :goto_8
    move-object v2, v3

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object v5, v2

    :goto_9
    move-object v2, v3

    goto :goto_c

    :cond_9
    move-object v5, v2

    :goto_a
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v1, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v1, :cond_e

    :goto_b
    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCaptureCallback()V

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v5, v2

    goto :goto_e

    :catch_2
    move-exception v0

    move-object v5, v2

    :goto_c
    :try_start_3
    const-string v3, "MimojiAsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimoji void CaptureCallback[byteBuffer] exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v1, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v1, :cond_e

    goto :goto_b

    :cond_e
    :goto_d
    return-void

    :catchall_3
    move-exception v0

    :goto_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v2, v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v2, :cond_11

    check-cast v1, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCaptureCallback()V

    :cond_11
    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTotalRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTotalRecordingTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMaxVideoDurationInMs:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->enableStopButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mStopRecordType:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Lcom/android/camera/ActivityBase;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecordStopping:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->CaptureCallback(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private animateCapture()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private createAvatar([BII)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    iput-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;

    invoke-direct {v1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;-><init>()V

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    mul-int/lit8 v7, p2, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$TJWBzuffQkwcD-teHodxciXDC90;->INSTANCE:Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$TJWBzuffQkwcD-teHodxciXDC90;

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v8, p1

    move-object v11, v1

    invoke-virtual/range {v3 .. v13}, Lcom/arcsoft/avatar2/AvatarEngine;->avatarProfile(Ljava/lang/String;III[BIZLcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileInfo;Lcom/arcsoft/avatar2/AvatarConfig$UpdateProgressCallback;)I

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "avatarProfile res: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->status:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", gender: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->gender:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MimojiAsImpl"

    invoke-static {v4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProfileResult;->status:I

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_b

    const/16 v2, 0xf6

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f11048e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f110489

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f11048d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_5

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f11048c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_6

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f11048a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_7

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f11048f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_7
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_8

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f11048b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_8
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f110488

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_9
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f110491

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_a

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$msJOlqsSGcZMGF38hqaw6x2iM7E;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$msJOlqsSGcZMGF38hqaw6x2iM7E;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void

    :cond_b
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MimojiAsImpl"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$IlvrGVUqbL2znHA1MsqkLDpFO0A;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$IlvrGVUqbL2znHA1MsqkLDpFO0A;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private destoryAll()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$qEnA0GAZrX-yDd-3z11Jn6g-3Pg;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$qEnA0GAZrX-yDd-3z11Jn6g-3Pg;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private enableStopButton()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->enableStopButton(ZZ)V

    :cond_0
    return-void
.end method

.method private getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v2

    const/4 p0, 0x0

    if-eqz v1, :cond_0

    const v0, 0x7f070239

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v0

    const v3, 0x7f070237

    invoke-static {v3, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v3

    const v4, 0x7f070238

    invoke-static {v4, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result p0

    :goto_0
    move v7, p0

    move v5, v0

    move v6, v3

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    const v0, 0x7f0702cd

    invoke-static {v0, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v0

    const v3, 0x7f0702cb

    invoke-static {v3, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result v3

    const v4, 0x7f0702cc

    invoke-static {v4, p0}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result p0

    goto :goto_0

    :cond_1
    move v5, p0

    move v6, v5

    move v7, v6

    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v3

    new-instance p0, Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;-><init>(ZZZLjava/lang/String;FFF)V

    return-object p0
.end method

.method private getMimojiPara()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v2

    const-string v3, "attr_mimoji_category"

    const-string v4, ""

    const-string v5, "null"

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "custom"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "person"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v6, "bear"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_ROYAN:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v6, "royan"

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v6, "rabbit"

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v6, "rabbit2"

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_FROG:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v6, "frog"

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_CAT:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v6, "cat"

    goto :goto_0

    :cond_7
    move-object v6, v4

    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->putMimojiConfigValue(Ljava/util/Map;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)Ljava/util/Map;

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getFrame()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v0, v6

    :goto_1
    const-string v2, "attr_mimoji_cartoon"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getExtraSceneName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "attr_mimoji_extra_scene"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v5

    goto :goto_5

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string v2, "attr_mimoji_change_timbre"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    const-string p0, "attr_mimoji_change_background"

    invoke-interface {v1, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isFrontMirror()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setFrontMirror(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrType(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getOperatingMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/PictureInfo;->setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PictureInfo;->end()V

    return-object p0
.end method

.method private initMimojiDataResource()V
    .locals 7

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileDirectoryConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MimojiAsImpl"

    const-string v1, "MimojiAsControlImpl: initMimojiResource unzip..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v3, 0x8000

    :try_start_1
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v5, "data.zip"

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "system/camera/mimoji/data.zip"

    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {p0, v4, v5, v3}, Lcom/android/camera/Util;->verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init model spend time = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string/jumbo v1, "verify asset model zip failed..."

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    sget-object p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    :goto_1
    return-void
.end method

.method private isFrontMirror()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$createAvatar$12(I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createAvatar$13()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setDisableSingleTapUp(Z)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->onProfileFinish()V

    return-void
.end method

.method private synthetic lambda$createAvatar$14()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiEnd()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->backToPreview(ZZ)V

    return-void
.end method

.method private synthetic lambda$destoryAll$4(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avatar destroy | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MimojiAsImpl"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEdit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->unInit()V

    :cond_1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$initAvatarEngine$0()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MimojiAsImpl"

    const-string v1, "avatar need really init"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportMimojiVersion()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MODEL_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x3

    invoke-static {v3, v4, v0}, Lcom/android/camera/module/impl/component/FileUtils;->formatFileSize(JI)D

    move-result-wide v3

    double-to-int v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->getFeatureMimojiModleVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileDirectoryConsist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->IsLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->showLoadProgress(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ge v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->initMimojiResource()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->reloadConfig()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->onMimojiInitFinish()V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$onDrawFrame$10(Ljava/nio/ByteBuffer;II)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsGifOn:Z

    const/4 p3, 0x1

    const/16 v0, 0xb4

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentScreenOrientation:I

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    const/16 p1, 0x5a

    goto :goto_0

    :cond_1
    const/16 p1, -0x5a

    :goto_0
    invoke-static {p2, p1, p3}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p2, v0, p3}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mGifBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_3
    invoke-static {p2, v0, p3}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xf9

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->setPreviewCover(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$onMimojiSelect$5()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getIsNoFaceResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v1, 0x7f11047c

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPreviewFrame$11()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getIsNoFaceResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v1, 0x7f11047c

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onRecordStart$6()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateRecordingTime()V

    return-void
.end method

.method private synthetic lambda$onRecordStart$7()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "video/avc"

    :goto_0
    move-object v8, v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->deleteMimojiCache(I)Z

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordingListener:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentScreenOrientation:I

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mPreviewHeight:I

    const v7, 0x989680

    invoke-virtual/range {v1 .. v8}, Lcom/arcsoft/avatar2/RecordModule;->startRecording(Ljava/lang/String;Lcom/arcsoft/avatar2/recoder/RecordingListener;IIIILjava/lang/String;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->deleteMimojiCache(I)Z

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getVideoCache()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordingListener:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentScreenOrientation:I

    const/16 v5, 0x1f4

    const/16 v6, 0x1f4

    const v7, 0x989680

    invoke-virtual/range {v1 .. v8}, Lcom/arcsoft/avatar2/RecordModule;->startRecording(Ljava/lang/String;Lcom/arcsoft/avatar2/recoder/RecordingListener;IIIILjava/lang/String;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$6BF_awWv1AOSdrGUq-KbwR--h38;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$6BF_awWv1AOSdrGUq-KbwR--h38;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$onRecordStop$8()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/RecordModule;->releaseRecordGLInfo()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRecordStop$9()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->stopRecording()Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$OlMG3V3zmTE1RqiCNkG4PJsWwB8;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$OlMG3V3zmTE1RqiCNkG4PJsWwB8;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$release$3()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v0, :cond_0

    const-string v0, "MimojiAsImpl"

    const-string v1, "release releaseRender | "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->releaseRender()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isStillImageCameraIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->releaseRecordGLInfo()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->destoryAll()V

    return-void
.end method

.method private synthetic lambda$releaseRender$2(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v1, :cond_0

    const-string v1, "MimojiAsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseRender | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/AvatarEngine;->releaseRender()V

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

.method static synthetic lambda$showLoadProgress$1(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->firstProgressShow(Z)V

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    return-void
.end method

.method private onProfileFinish()V
    .locals 3

    const-string v0, "MimojiAsImpl"

    const-string v1, "onProfileFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->releaseRender()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiEnd()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_2

    const/16 v1, 0xcb

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->startMimojiEdit(I)V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCreateCompleted(Z)V

    :cond_3
    const-string p0, "mimoji_click_create_capture"

    const-string v0, "create"

    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showLoadProgress(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf8

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$LJ72UEdI9yfWK9OjYVXygmIlYfA;

    invoke-direct {v1, v0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$LJ72UEdI9yfWK9OjYVXygmIlYfA;-><init>(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;Z)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateBeauty(Z)V
    .locals 5

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    instance-of v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz p1, :cond_3

    const/16 p1, 0x28

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const-string p1, "pref_beautify_level_key_capture"

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_5

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    :goto_2
    move p1, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;)I

    move-result v1

    if-eq v1, p1, :cond_5

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_3
    if-eqz p1, :cond_6

    new-array p1, v4, [I

    const/16 v1, 0xd

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_6
    return-void
.end method

.method private updateVideoOrientation(I)V
    .locals 3

    const/16 v0, 0x13b

    if-le p1, v0, :cond_0

    const/16 v1, 0x168

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x2d

    if-ltz p1, :cond_2

    if-gt p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentScreenOrientation:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x87

    if-le p1, v1, :cond_3

    if-gt p1, v2, :cond_3

    const/16 p1, 0x5a

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentScreenOrientation:I

    goto :goto_0

    :cond_3
    const/16 v1, 0xe1

    if-le p1, v2, :cond_4

    if-gt p1, v1, :cond_4

    const/16 p1, 0xb4

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentScreenOrientation:I

    goto :goto_0

    :cond_4
    if-le p1, v1, :cond_5

    if-gt p1, v0, :cond_5

    const/16 p1, 0x10e

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentScreenOrientation:I

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public backToPreview(ZZ)V
    .locals 8

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsStopRender:Z

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->onMimojiSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Z)Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v3, 0xac

    invoke-virtual {p1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    const/16 v4, 0x8

    const v5, 0x7f11047d

    const-wide/16 v6, -0x1

    invoke-interface {p1, v4, v5, v6, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    const/4 v4, -0x1

    invoke-interface {p1, v0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result v4

    const/16 v5, 0xc1

    if-ne v4, v2, :cond_0

    new-array v4, v2, [I

    aput v5, v4, v0

    invoke-interface {p1, v0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {p1, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-interface {p1, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    :goto_0
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    new-array v1, v2, [I

    aput v5, v1, v0

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa4

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result p2

    if-eq p2, v2, :cond_1

    invoke-interface {p1, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateMimojiBottomTipImage()V

    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz p1, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setDisableSingleTapUp(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xa2
    .end array-data

    :array_1
    .array-data 4
        0xc5
        0xc1
        0xa2
    .end array-data
.end method

.method public changeIsNoFaceResult(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    if-eqz p1, :cond_2

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    return v1

    :cond_0
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    const/16 v2, 0xa

    if-le p1, v2, :cond_1

    return v0

    :cond_1
    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public changeToGif(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setIsAvatarInited(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "mimoji_click_gif"

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordStateFromGif(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordStateFromGif()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordState(I)V

    :goto_0
    return-void
.end method

.method public checkIsNeedChangBg()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->IsLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->clone()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, v5, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getIsNeedRefresh()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0, v5}, Lcom/arcsoft/avatar2/RecordModule;->setBackgroundToSquare(Z)V

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->uiStyle:I

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolutionMode(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->nextFrame()I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar2/BackgroundInfo;->getBackGroundPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/arcsoft/avatar2/RecordModule;->setBackground(Landroid/graphics/Bitmap;Lcom/arcsoft/avatar2/BackgroundInfo;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsNeedChangBg  : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MimojiAsImpl"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    if-eqz v0, :cond_6

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0, v3, v3}, Lcom/arcsoft/avatar2/RecordModule;->setBackground(Landroid/graphics/Bitmap;Lcom/arcsoft/avatar2/BackgroundInfo;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0, v2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :cond_6
    :goto_1
    return-void
.end method

.method public createEmoticon()V
    .locals 0

    return-void
.end method

.method public deleteMimojiCache(I)Z
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimoji boolean deleteMimojiCache[type] : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MimojiAsImpl"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void deleteMimojiCache[] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getGifBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mGifBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mGifBitmap:Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlcontext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsNoFaceResult()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getOperatingMode()I
    .locals 0

    const p0, 0x800b

    return p0
.end method

.method public getTimeValue()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTotalRecordingTime:J

    return-wide v0
.end method

.method public getVideoCache()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->GIF_NORMAL_CACHE_FILE:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    return-object p0
.end method

.method public initAvatarEngine(IIIIZ)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAvatarEngine with parameters : displayOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFrontCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MimojiAsImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDisplayOrientation:I

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mPreviewWidth:I

    iput p4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mPreviewHeight:I

    iput-boolean p5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedThumbnail:Z

    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setIsAvatarInited(Z)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p3

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->uiStyle:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->initMimojiDataResource()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "avatar start init | "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 p4, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsGifOn:Z

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsGifOn:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p3, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p3, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    :goto_0
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-nez p3, :cond_1

    new-instance v0, Lcom/arcsoft/avatar2/RecordModule;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCaptureCallback:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    invoke-direct {v0, p3, v1}, Lcom/arcsoft/avatar2/RecordModule;-><init>(Landroid/content/Context;Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    move v1, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/avatar2/RecordModule;->init(IIILcom/arcsoft/avatar2/AvatarEngine;Z)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    sget-object p3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iget-object p5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mSceneTriggerCallback:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    invoke-virtual {p1, p3, p5}, Lcom/arcsoft/avatar2/RecordModule;->setExtraSceneTemplatePath(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1}, Lcom/arcsoft/avatar2/RecordModule;->setmImageOrientation(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p1, p5}, Lcom/arcsoft/avatar2/RecordModule;->setMirror(Z)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    iget-object p5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    invoke-virtual {p1, p3, p5}, Lcom/arcsoft/avatar2/RecordModule;->setPreviewSize(II)V

    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsGifOn:Z

    invoke-virtual {p1, p3}, Lcom/arcsoft/avatar2/RecordModule;->setBackgroundToSquare(Z)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->releaseRender()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p4, p2

    :goto_2
    invoke-direct {p0, p4}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateBeauty(Z)V

    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsStopRender:Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLoadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$7-kDtWIDvEaBkiH0WHeOJ3k-pcU;

    invoke-direct {p2, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$7-kDtWIDvEaBkiH0WHeOJ3k-pcU;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initMimojiResource()V
    .locals 10

    const-string v0, "MimojiAsImpl"

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getFeatureMimojiModleVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->IsLoading()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->showLoadProgress(Z)V

    return-void

    :cond_0
    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->GIF_SUBTITLE_DIR:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->GIF_SUBTITLE_DIR:Ljava/lang/String;

    const-string v5, "gif_subtitle/3336a65c52528c9c368e942d3dd307f8-le64.cache-3"

    const-string v6, "3336a65c52528c9c368e942d3dd307f8-le64.cache-3"

    invoke-static {v2, v4, v5, v6}, Lcom/android/camera/module/impl/component/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v7, v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setIsLoading(Z)V

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MODEL_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/upgrade/UpgradeManager;->currentVersionCode(Landroid/content/Context;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/camera/upgrade/UpgradeManager;->mIsNeedUpgrade(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    :cond_2
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MODEL_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const v3, 0x8000

    :try_start_1
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v8, "model2.zip"

    sget-object v9, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v7, v8, v9, v3}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "system/camera/mimoji/model2.zip"

    sget-object v9, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v7, v8, v9, v3}, Lcom/android/camera/Util;->verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string v8, "data.zip"

    sget-object v9, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v7, v8, v9, v3}, Lcom/android/camera/Util;->verifyAssetZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    :try_start_4
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "system/camera/mimoji/data.zip"

    sget-object v9, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {v7, v8, v9, v3}, Lcom/android/camera/Util;->verifyFileZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init model spend time = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v3, v6}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setIsLoading(Z)V

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAvatarTemplatePath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->reloadConfig()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->onMimojiInitFinish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string/jumbo v3, "verify asset model zip failed..."

    invoke-static {v0, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setIsLoading(Z)V

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setMimojiModleVersion(Ljava/lang/String;)V

    sget-object p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->MIMOJI_DIR:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FileUtils;->delDir(Ljava/lang/String;)Z

    :goto_2
    return-void
.end method

.method public isAvatarInited()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isAvatarInited()Z

    move-result p0

    return p0
.end method

.method public isNeedShowAvatar()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v2, "add_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v1, "close_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnCreateMimoji()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p0

    return p0
.end method

.method public isProcessorReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsStopRender:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isExternalFrameProcessorPowerTest()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecordStopping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecordStopping:Z

    return p0
.end method

.method public isRecording()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MimojiAsImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecording:Z

    return p0
.end method

.method public synthetic lambda$createAvatar$13$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$createAvatar$13()V

    return-void
.end method

.method public synthetic lambda$createAvatar$14$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$createAvatar$14()V

    return-void
.end method

.method public synthetic lambda$destoryAll$4$MimojiAsControlImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$destoryAll$4(I)V

    return-void
.end method

.method public synthetic lambda$initAvatarEngine$0$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$initAvatarEngine$0()V

    return-void
.end method

.method public synthetic lambda$onDrawFrame$10$MimojiAsControlImpl(Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$onDrawFrame$10(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public synthetic lambda$onMimojiSelect$5$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$onMimojiSelect$5()V

    return-void
.end method

.method public synthetic lambda$onPreviewFrame$11$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$onPreviewFrame$11()V

    return-void
.end method

.method public synthetic lambda$onRecordStart$6$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$onRecordStart$6()V

    return-void
.end method

.method public synthetic lambda$onRecordStart$7$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$onRecordStart$7()V

    return-void
.end method

.method public synthetic lambda$onRecordStop$8$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$onRecordStop$8()V

    return-void
.end method

.method public synthetic lambda$onRecordStop$9$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$onRecordStop$9()V

    return-void
.end method

.method public synthetic lambda$release$3$MimojiAsControlImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$release$3()V

    return-void
.end method

.method public synthetic lambda$releaseRender$2$MimojiAsControlImpl(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$releaseRender$2(I)V

    return-void
.end method

.method public onCaptureImage()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getMimojiPara()Ljava/util/Map;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, p0, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2CaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateCapture()Z
    .locals 5

    const-string v0, "MimojiAsImpl"

    const-string v1, "onCreateCapture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mFaceDectectResult:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFaceDetectSuccess:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    new-array v2, v3, [I

    const/16 v4, 0xd

    aput v4, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideMimojiProgress(Z)V

    iput-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsShutterButtonClick:Z

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->animateCapture()V

    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public onDeviceRotationChange(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateVideoOrientation(I)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->onDeviceRotationChange(I)V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v2, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsStopRender:Z

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v2, v3

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move/from16 v4, p2

    move/from16 v6, p3

    invoke-static {v2, v2, v4, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v5, v1, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v4, v2, v5, v1, v3}, Lcom/arcsoft/avatar2/RecordModule;->setDrawScope(IIII)V

    iget-boolean v4, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    if-eqz v4, :cond_2

    const-string v4, "MimojiAsImpl"

    const-string v6, "onCapture start"

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/RecordModule;->capture()V

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setCameraStatePublic(I)V

    :cond_1
    iput-boolean v2, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedCapture:Z

    :cond_2
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static {v6, v6, v6, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v6, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    const/16 v7, 0x5a

    iget-boolean v8, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    iget v9, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTextureId:[I

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getIsNoFaceResult()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    move v14, v4

    goto :goto_1

    :cond_3
    move v14, v2

    :goto_1
    invoke-virtual/range {v6 .. v14}, Lcom/arcsoft/avatar2/RecordModule;->startRender(IZIIZ[I[BZ)V

    iget-boolean v4, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedThumbnail:Z

    if-eqz v4, :cond_4

    iput-boolean v2, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedThumbnail:Z

    mul-int v2, v1, v3

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move v6, v1

    move v7, v3

    move-object v10, v2

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLoadHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;

    invoke-direct {v5, p0, v2, v1, v3}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$SB4dwkwDYfjQfXe5nX86sqt0we8;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Ljava/nio/ByteBuffer;II)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public onMimojiChangeBg(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Z)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;)V

    :goto_1
    const-string p0, "mimoji_change_background"

    invoke-static {p2, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMimojiChangeTimbre(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiTimbreInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiTimbreInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;)V

    :goto_1
    if-nez p1, :cond_2

    const p2, 0x7f1108c9

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getDescId()I

    move-result p2

    :goto_2
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result p0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v4, 0xac

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_5

    invoke-interface {p0, v3, p2, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(IIJ)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v4, 0xf9

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz p0, :cond_4

    invoke-interface {p0, v3, p2, v1, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->alertTop(IIJ)V

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p2, 0xfc

    invoke-virtual {p0, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->changeTimbre()V

    :cond_5
    :goto_3
    const-string p0, "mimoji_change_timbre"

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mimoji void onMimojiChangeTimbre[mimojiTimbreInfo]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MimojiAsImpl"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMimojiCreate()V
    .locals 5

    const-string v0, "MimojiAsImpl"

    const-string/jumbo v1, "start create mimoji"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const v2, 0x7f110482

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiStart()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->prepareCreateMimoji()V

    return-void
.end method

.method public onMimojiDeleted(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    return-void
.end method

.method public onMimojiEmoticonBack()V
    .locals 0

    return-void
.end method

.method public onMimojiInitFinish()V
    .locals 2

    const-string v0, "MimojiAsImpl"

    const-string v1, "onMimojiInitFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setIsAvatarInited(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->showLoadProgress(Z)V

    return-void
.end method

.method public onMimojiSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Z)Z
    .locals 7

    const-string v0, "MimojiAsImpl"

    const-string v1, "mimoji void onMimojiSelect[mimojiItem]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$1QNi_ruG3t8AyAWED2HXx_pXiBA;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$1QNi_ruG3t8AyAWED2HXx_pXiBA;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v3, "add_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v3, "close_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsNoFaceResult:I

    :cond_1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    iget-object p2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change mimoji with path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", and config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MimojiAsImpl"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mSceneTriggerCallback:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    invoke-virtual {v4, v5, v6}, Lcom/arcsoft/avatar2/RecordModule;->setExtraSceneTemplatePath(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;)V

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v5, ""

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_0
    iput-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v4, :cond_3

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {p1, p2, v2}, Lcom/arcsoft/avatar2/RecordModule;->changeHumanTemplate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    :goto_1
    const-string p1, "mimoji_person"

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getAvatarConfigInfoArrayList()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/16 v2, 0xc

    invoke-virtual {p2, v2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfig(II)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setAvatarConfigInfoArrayList(Ljava/util/ArrayList;)V

    :cond_6
    const-string p2, "mimoji_cartoon"

    invoke-static {p2, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getFrame()I

    move-result p2

    if-ltz p2, :cond_7

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getDefaultFrame()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getAvatarConfigInfoArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getFrame()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-virtual {p2, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, p2}, Lcom/arcsoft/avatar2/RecordModule;->updateAvatarConfigInfo(Lcom/arcsoft/avatar2/AvatarEngine;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCurrentTempMimojiBgInfo:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    const/4 v0, 0x0

    if-nez p2, :cond_8

    move p2, v1

    goto :goto_3

    :cond_8
    move p2, v0

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result p1

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateBeauty(Z)V

    monitor-exit v3

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xf8

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz p0, :cond_b

    if-nez p2, :cond_b

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->refreshMimojiList()I

    :cond_b
    return v1
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z
    .locals 9

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p1, "MimojiAsImpl"

    const-string p2, "MimojiAsControlImpl onPreviewFrame mRecordModule null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastInitResult:Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    return v0

    :cond_0
    invoke-static {p1}, Lcom/arcsoft/avatar2/util/AsvloffscreenUtil;->buildNV21SingleBuffer(Landroid/media/Image;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object p2

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsShutterButtonClick:Z

    if-eqz v1, :cond_2

    iput-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsShutterButtonClick:Z

    invoke-virtual {p0, p3}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->setIsAvatarInited(Z)V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    invoke-virtual {p2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getYData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Lcom/android/camera/features/mimojis/mimojias/utils/BitmapUtil;->rawByteArray2RGBABitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    if-eqz v2, :cond_1

    const/16 v2, -0x5a

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a

    :goto_0
    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/utils/BitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->createAvatar([BII)V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf7

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEdit()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEmoticon()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEmoticon()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->requestRender(Z)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {v1, p3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetClickEnable(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->checkIsNeedChangBg()V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    iget-boolean v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    invoke-static {v3, v4, v5}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getOutlineOrientation(IIZ)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/arcsoft/avatar2/RecordModule;->startProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZ)Z

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->changeIsNoFaceResult(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$j8zmyEl16ZVpPGuRyF11BhFlYtA;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$j8zmyEl16ZVpPGuRyF11BhFlYtA;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getIsNoFaceResult()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    if-eq v2, v1, :cond_8

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastNeedBeauty:Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    move p3, v0

    :cond_7
    invoke-direct {p0, p3}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->updateBeauty(Z)V

    :cond_8
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p3}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-nez v1, :cond_a

    goto/16 :goto_5

    :cond_a
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v6, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-direct {v6}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;-><init>()V

    iget-object v8, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/16 v3, 0x5a

    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    const/4 v7, 0x1

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/arcsoft/avatar2/AvatarEngine;->avatarProcessWithInfoEx(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)I

    :cond_b
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {v1, p3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->requestRender(Z)V

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {p3, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetClickEnable(Z)V

    iget-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastInitResult:Z

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {p3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetConfig()V

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_c
    :goto_3
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isAvatarInited()Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mOrientation:I

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDeviceRotation:I

    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    invoke-static {v2, v3, v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getOutlineOrientation(IIZ)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->outlineProcessEx(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mFaceDectectResult:I

    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sget-boolean p2, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_CREATE:Z

    if-eqz p2, :cond_d

    const-string p2, "mimoji_create"

    invoke-static {p1, p2}, Lcom/xiaomi/camera/base/ImageUtil;->dumpImage(Landroid/media/Image;Ljava/lang/String;)Z

    :cond_d
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_e

    iget p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mFaceDectectResult:I

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiFaceDetect(I)V

    goto :goto_4

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_e
    :goto_4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mLastInitResult:Z

    return v0

    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_10

    invoke-interface {p1, p3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetClickEnable(Z)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {p0, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->requestRender(Z)V

    :cond_10
    const-string p0, "MimojiAsImpl"

    const-string p1, "MimojiAsControlImpl onPreviewFrame need init, waiting......"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onRecordStart()V
    .locals 5

    const-string v0, "MimojiAsImpl"

    const-string/jumbo v1, "start record..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mStopRecordType:I

    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3a5

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isBluetoothScoOn()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->getMimojiPara()Ljava/util/Map;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFrontCamera:Z

    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2CaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mNeedThumbnail:Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$qyvTCjQN9dDCQIUzyJsDo-vZOAs;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$qyvTCjQN9dDCQIUzyJsDo-vZOAs;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onRecordStop(I)V
    .locals 2

    const-string v0, "MimojiAsImpl"

    const-string/jumbo v1, "stop record..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecordStopping:Z

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mStopRecordType:I

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->enableStopButton()V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$nYQb7WlWc_FDEue_QqRmPjDzWaQ;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$nYQb7WlWc_FDEue_QqRmPjDzWaQ;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onRecordStopped(Z)V
    .locals 0

    return-void
.end method

.method public refeshMaterialConfig()V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 5

    const-string v0, "MimojiAsImpl"

    const-string v1, "avatar release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiBgInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsRecordStopping:Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mGetThumCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x7d0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mDrawSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInPreviewSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$DQb1iZSMLMC3SVfYnw9pR190M58;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$DQb1iZSMLMC3SVfYnw9pR190M58;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->destoryAll()V

    :goto_1
    return-void
.end method

.method public releaseRender()V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsStopRender:Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v1, :cond_0

    const-string v1, "MimojiAsImpl"

    const-string v2, "mimoji void reloadConfig[]\u3000extrascene init"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInPreviewSurface()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$ywU9RkNrCgOfy32s6w_vq1upd7A;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$ywU9RkNrCgOfy32s6w_vq1upd7A;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;I)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->releaseRender()V

    :cond_2
    :goto_0
    return-void
.end method

.method public reloadConfig()V
    .locals 4

    const-string v0, "MimojiAsImpl"

    const-string v1, "MimojiAsControlImpl reloadConfig"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMode()I

    move-result v1

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar2/AvatarEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf7

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetClickEnable(Z)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiEditorControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetConfig()V

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->reset()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->reloadConfig()V

    const-string p0, "MimojiAsControlImpl reloadConfig: error mimojiEditor is null"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/arcsoft/avatar2/RecordModule;->getBackgroundBmpInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setBackgroundInfos(Ljava/util/ArrayList;)V

    :cond_5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    if-eqz v2, :cond_6

    const-string v2, "mimoji void reloadConfig[]\u3000extrascene init"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/RecordModule;->resetExtraScene()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->isNeedShowAvatar()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    :cond_7
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatarConfigPath:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getFrame()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getAvatarConfigInfoArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getAvatarConfigInfoArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getFrame()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mRecordModule:Lcom/arcsoft/avatar2/RecordModule;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mAvatar:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p0}, Lcom/arcsoft/avatar2/RecordModule;->updateAvatarConfigInfo(Lcom/arcsoft/avatar2/AvatarEngine;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public saveEmoticon(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDetectSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mIsFaceDetectSuccess:Z

    return-void
.end method

.method public setDisableSingleTapUp(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mActivityBase:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->setDisableSingleTapUp(Z)V

    return-void
.end method

.method public setIsAvatarInited(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setIsAvatarInited(Z)V

    return-void
.end method

.method public setIsFrameAvailable(Z)V
    .locals 0

    return-void
.end method

.method public setNeedTakePic()V
    .locals 0

    return-void
.end method

.method public takePicIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V
    .locals 0

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->release()V

    return-void
.end method

.method protected updateRecordingTime()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mTotalRecordingTime:J

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMaxVideoDurationInMs:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMaxVideoDurationInMs:I

    :goto_0
    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mMaxVideoDurationInMs:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1c2

    add-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$2;-><init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;JJ)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
