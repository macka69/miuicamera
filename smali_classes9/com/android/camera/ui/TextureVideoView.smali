.class public Lcom/android/camera/ui/TextureVideoView;
.super Landroid/view/TextureView;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/TextureVideoView$ScaleManager;,
        Lcom/android/camera/ui/TextureVideoView$Size;,
        Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;,
        Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;,
        Lcom/android/camera/ui/TextureVideoView$PivotPoint;,
        Lcom/android/camera/ui/TextureVideoView$ScaleType;
    }
.end annotation


# static fields
.field public static final CENTER:I = 0x2

.field public static final CENTER_CROP:I = 0x1

.field public static final FIT_CENTER:I = 0x4

.field public static final FIT_LEFT_TOP_FULL_SCREEN:I = 0x6

.field public static final FIT_LEFT_TOP_FULL_SCREEN_AUTO:I = 0x7

.field public static final FIT_XY:I = 0x3

.field private static final MSG_PAUSE:I = 0x2

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x3

.field public static final NONE:I = 0x5

.field private static final PIVOT_CENTER:I = 0x2

.field private static final PIVOT_LEFT_TOP:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final sThread:Landroid/os/HandlerThread;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClearSurface:Z

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentState:I

.field private mHandler:Landroid/os/Handler;

.field private mHasAudio:Z

.field private mIsNeedAudio:Z

.field private mLoop:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

.field private mScaleType:I

.field private mSeekWhenPrepared:I

.field private mSoundMute:Z

.field private mSurface:Landroid/view/Surface;

.field private volatile mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mVideoHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/TextureVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TextureVideoView"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/TextureVideoView;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/TextureVideoView;->mIsNeedAudio:Z

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mScaleType:I

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/TextureVideoView;->mIsNeedAudio:Z

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mScaleType:I

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/TextureVideoView;->mIsNeedAudio:Z

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mScaleType:I

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/TextureVideoView;)Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/TextureVideoView;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private clearSurface()V
    .locals 11

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v8

    const/4 v2, 0x0

    invoke-interface {v1, v8, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 v2, 0xd

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    const/4 v9, 0x1

    new-array v10, v9, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v7, v9, [I

    const/4 v6, 0x1

    move-object v2, v1

    move-object v3, v8

    move-object v5, v10

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v2, 0x0

    aget-object v3, v10, v2

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-interface {v1, v8, v3, v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    new-array v5, v9, [I

    const/16 v6, 0x3038

    aput v6, v5, v2

    invoke-interface {v1, v8, v3, p0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p0

    invoke-interface {v1, v8, p0, p0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-interface {v1, v8, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-interface {v1, v8, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    sget-object p0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v8, p0, p0, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {v1, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/camera/ui/TextureVideoView;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSetVideoSource()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

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

.method private synthetic lambda$handleMessage$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$openVideo$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$openVideo$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$openVideo$3()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method private openVideo()V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->isSetVideoSource()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/camera/ui/TextureVideoView;->TAG:Ljava/lang/String;

    const-string v0, "openVideo error file not found"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/TextureVideoView;->release(Z)V

    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/camera/ui/TextureVideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v3, p0, Lcom/android/camera/ui/TextureVideoView;->mLoop:Z

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput v1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    iget-boolean v3, p0, Lcom/android/camera/ui/TextureVideoView;->mIsNeedAudio:Z

    if-eqz v3, :cond_8

    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    iget-object v4, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/TextureVideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHasAudio:Z

    :goto_2
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v0, v4, :cond_8

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v1, p0, Lcom/android/camera/ui/TextureVideoView;->mHasAudio:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    iput v2, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput v2, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/-$$Lambda$TextureVideoView$YjdbhBwZhCoQ4MWikodFgKVtPKg;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/-$$Lambda$TextureVideoView$YjdbhBwZhCoQ4MWikodFgKVtPKg;-><init>(Lcom/android/camera/ui/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    sget-object p0, Lcom/android/camera/ui/TextureVideoView;->TAG:Ljava/lang/String;

    const-string v0, "openVideo IllegalStateException"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    iput v2, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput v2, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/-$$Lambda$TextureVideoView$RdqxkQy2IsR6eFvzaIM0xurCTQ4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/-$$Lambda$TextureVideoView$RdqxkQy2IsR6eFvzaIM0xurCTQ4;-><init>(Lcom/android/camera/ui/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    sget-object p0, Lcom/android/camera/ui/TextureVideoView;->TAG:Ljava/lang/String;

    const-string v0, "openVideo IllegalArgumentException"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    iput v2, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput v2, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/-$$Lambda$TextureVideoView$grzp0_gx3jauzbZDHqnLfWj8Z4k;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/-$$Lambda$TextureVideoView$grzp0_gx3jauzbZDHqnLfWj8Z4k;-><init>(Lcom/android/camera/ui/TextureVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    sget-object p0, Lcom/android/camera/ui/TextureVideoView;->TAG:Ljava/lang/String;

    const-string v0, "openVideo IOException"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void

    :cond_9
    :goto_4
    sget-object v0, Lcom/android/camera/ui/TextureVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVideo error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private release(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ui/TextureVideoView;->mClearSurface:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->clearSurface()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const-class v0, Lcom/android/camera/ui/TextureVideoView;

    monitor-enter v0

    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/TextureVideoView;->release(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/TextureVideoView;->mSeekWhenPrepared:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/ui/-$$Lambda$TextureVideoView$HWhbyH2hB0g6BgnJFDv59A7lH50;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/-$$Lambda$TextureVideoView$HWhbyH2hB0g6BgnJFDv59A7lH50;-><init>(Lcom/android/camera/ui/TextureVideoView;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->openVideo()V

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public isHasAudio()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/TextureVideoView;->mHasAudio:Z

    return p0
.end method

.method public isMute()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/TextureVideoView;->mSoundMute:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->isInPlaybackState()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public synthetic lambda$handleMessage$0$TextureVideoView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->lambda$handleMessage$0()V

    return-void
.end method

.method public synthetic lambda$openVideo$1$TextureVideoView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->lambda$openVideo$1()V

    return-void
.end method

.method public synthetic lambda$openVideo$2$TextureVideoView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->lambda$openVideo$2()V

    return-void
.end method

.method public synthetic lambda$openVideo$3$TextureVideoView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->lambda$openVideo$3()V

    return-void
.end method

.method public mute()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TextureVideoView;->mSoundMute:Z

    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/TextureVideoView$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/ui/TextureVideoView$7;-><init>(Lcom/android/camera/ui/TextureVideoView;Landroid/media/MediaPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/TextureVideoView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/TextureVideoView$3;-><init>(Lcom/android/camera/ui/TextureVideoView;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/TextureVideoView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/ui/TextureVideoView$4;-><init>(Lcom/android/camera/ui/TextureVideoView;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/TextureVideoView$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/ui/TextureVideoView$8;-><init>(Lcom/android/camera/ui/TextureVideoView;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/TextureVideoView;->mSeekWhenPrepared:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mSeekWhenPrepared:I

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mCurrentState:I

    iput v0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/TextureVideoView$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/TextureVideoView$5;-><init>(Lcom/android/camera/ui/TextureVideoView;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/camera/ui/TextureVideoView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/TextureVideoView$1;-><init>(Lcom/android/camera/ui/TextureVideoView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget p1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->start()V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/TextureVideoView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/TextureVideoView$2;-><init>(Lcom/android/camera/ui/TextureVideoView;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/ui/TextureVideoView$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/camera/ui/TextureVideoView$6;-><init>(Lcom/android/camera/ui/TextureVideoView;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setClearSurface(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/TextureVideoView;->mClearSurface:Z

    return-void
.end method

.method public setIsNeedAudio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/TextureVideoView;->mIsNeedAudio:Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/TextureVideoView;->mLoop:Z

    return-void
.end method

.method public setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setScaleType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/TextureVideoView;->mScaleType:I

    return-void
.end method

.method public setVideoFileDescriptor(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoSpecifiedSize(II)V
    .locals 3

    new-instance v0, Lcom/android/camera/ui/TextureVideoView$Size;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/TextureVideoView$Size;-><init>(II)V

    new-instance v1, Lcom/android/camera/ui/TextureVideoView$Size;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/ui/TextureVideoView$Size;-><init>(II)V

    new-instance v2, Lcom/android/camera/ui/TextureVideoView$ScaleManager;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/ui/TextureVideoView$ScaleManager;-><init>(Lcom/android/camera/ui/TextureVideoView$Size;Lcom/android/camera/ui/TextureVideoView$Size;)V

    iget v0, p0, Lcom/android/camera/ui/TextureVideoView;->mScaleType:I

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/TextureVideoView$ScaleManager;->getScaleMatrix(I)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayerCallback:Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_1
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/TextureVideoView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/TextureVideoView;->start(J)V

    return-void
.end method

.method public start(J)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->isSetVideoSource()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/TextureVideoView;->mTargetState:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/TextureVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public unMute()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    sub-double/2addr v3, v1

    double-to-float v0, v3

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/TextureVideoView;->mSoundMute:Z

    :cond_0
    return-void
.end method
