.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;
.super Ljava/lang/Object;
.source "Camera2Helper.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHeight:I

.field private mCameraId:I

.field private final mCameraLock:Ljava/lang/Object;

.field private volatile mCameraNV21Byte:[B

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOrientation:I

.field private mCameraTextureId:I

.field private mCameraWidth:I

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mImageReader:Landroid/media/ImageReader;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private sessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraLock:Ljava/lang/Object;

    const/16 v0, 0x780

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraWidth:I

    const/16 v0, 0x438

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraHeight:I

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->sessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->createCaptureSession()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->createCaptureRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createCaptureRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraAccessException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private createCaptureSession()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_1
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraWidth:I

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->sessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCaptureSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public changeCamera()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->releaseCamera()V

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraId:I

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraWidth:I

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->openCamera(II)V

    return-void
.end method

.method public closeCamera()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mImageReader:Landroid/media/ImageReader;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    const-string v0, "closeCamera"

    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method public getCameraHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraHeight:I

    return p0
.end method

.method public getCameraNV21Byte()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCameraOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOrientation:I

    return p0
.end method

.method public getCameraWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraWidth:I

    return p0
.end method

.method public isCameraFront()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraId:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    const/4 v7, 0x1

    aget-object v8, v2, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    const/4 v9, 0x2

    aget-object v10, v2, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    aget-object v11, v2, v5

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    aget-object v11, v2, v7

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    aget-object v12, v2, v9

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v12

    aget-object v13, v2, v5

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    aget-object v14, v2, v7

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v15

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    sub-int v15, v15, v16

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v16

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v17

    sub-int v7, v16, v17

    iget-object v5, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    array-length v5, v5

    mul-int v17, v3, v4

    mul-int/lit8 v17, v17, 0x3

    move-object/from16 v18, v1

    div-int/lit8 v1, v17, 0x2

    if-ge v5, v1, :cond_1

    goto :goto_0

    :cond_0
    move-object/from16 v18, v1

    :goto_0
    mul-int v1, v3, v4

    mul-int/lit8 v1, v1, 0x3

    div-int/2addr v1, v9

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    :cond_1
    if-ne v6, v3, :cond_3

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    mul-int v5, v3, v4

    const/4 v6, 0x0

    invoke-virtual {v13, v1, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    mul-int v9, v3, v4

    if-ge v5, v9, :cond_2

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v9, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    invoke-virtual {v13, v9, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v1, v6

    add-int/2addr v5, v3

    goto :goto_1

    :goto_2
    if-ne v11, v1, :cond_4

    if-ne v12, v1, :cond_4

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    mul-int/2addr v3, v4

    invoke-virtual {v14, v1, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    div-int/lit8 v4, v3, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v2, v1, v3, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/16 v5, 0x10

    goto :goto_6

    :cond_4
    const/4 v1, 0x2

    if-ne v11, v1, :cond_7

    if-ne v12, v1, :cond_7

    if-ne v8, v3, :cond_5

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    mul-int/2addr v3, v4

    invoke-virtual {v2, v1, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_5
    neg-int v1, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    div-int/lit8 v8, v4, 0x2

    if-ge v6, v8, :cond_7

    add-int/2addr v1, v10

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_6

    iget-object v8, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    mul-int v9, v3, v4

    add-int/2addr v9, v5

    sub-int v11, v7, v1

    invoke-virtual {v2, v8, v9, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_6
    iget-object v8, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    mul-int v9, v3, v4

    add-int/2addr v9, v5

    invoke-virtual {v2, v8, v9, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    const/4 v5, 0x0

    :goto_6
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->close()V

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;

    if-eqz v0, :cond_8

    invoke-interface {v0, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;->onPreviewFrame(I)V

    :cond_8
    return-void
.end method

.method public openCamera()V
    .locals 2

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraWidth:I

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->openCamera(II)V

    return-void
.end method

.method public openCamera(II)V
    .locals 4

    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->startBackgroundThread()V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera: mCameraWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCameraHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_1

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOrientation:I

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->isCameraFront()Z

    move-result v1

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOrientation:I

    invoke-interface {p2, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;->onCameraChange(ZI)V

    :cond_2
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Time out waiting to lock camera opening."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Interrupted while trying to lock camera opening."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot access the camera."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public openCameraFront()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->openCamera()V

    return-void
.end method

.method public releaseCamera()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->closeCamera()V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->stopBackgroundThread()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraNV21Byte:[B

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCameraListener(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;

    return-void
.end method

.method public setCameraTextureId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mCameraTextureId:I

    return-void
.end method

.method public startBackgroundThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method public stopBackgroundThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateTexImage([F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method
