.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;
    }
.end annotation


# static fields
.field private static final PREVIEW_BUFFER_COUNT:I = 0x3

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

.field private cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHeight:I

.field private final mCameraLock:Ljava/lang/Object;

.field private volatile mCameraNV21Byte:[B

.field private mCameraOrientation:I

.field private mCameraTextureId:I

.field private mCameraWidth:I

.field private mCurrentCameraType:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private previewCallbackBuffer:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCurrentCameraType:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraLock:Ljava/lang/Object;

    const/16 v0, 0x780

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraWidth:I

    const/16 v0, 0x438

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraHeight:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cameraStartPreview()V
    .locals 5

    :try_start_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraTextureId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraWidth:I

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraHeight:I

    mul-int/2addr v1, v2

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    const/4 v3, 0x2

    div-int/2addr v1, v3

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v2, v3, v1

    const-class v4, B

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->previewCallbackBuffer:[[B

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->previewCallbackBuffer:[[B

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraTextureId:I

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->startPreview()V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public changeCamera()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->releaseCamera()V

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCurrentCameraType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->openCamera(I)V

    return-void
.end method

.method public getCameraHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraHeight:I

    return p0
.end method

.method public getCameraNV21Byte()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraNV21Byte:[B

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

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraOrientation:I

    return p0
.end method

.method public getCameraWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraWidth:I

    return p0
.end method

.method public getCurrentCameraType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCurrentCameraType:I

    return p0
.end method

.method public isCameraFront()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCurrentCameraType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraNV21Byte:[B

    if-nez p2, :cond_0

    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraNV21Byte:[B

    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraNV21Byte:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;->onPreviewFrame()V

    :cond_1
    return-void
.end method

.method public openCamera()V
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCurrentCameraType:I

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->openCamera(I)V

    return-void
.end method

.method public openCamera(I)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraNV21Byte:[B

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, p1, :cond_0

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCurrentCameraType:I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_2

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    iput v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCurrentCameraType:I

    move v4, v3

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_3

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->getCameraOrientation(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraOrientation:I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-static {p1, v4, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->setFocusModes(Landroid/hardware/Camera$Parameters;)V

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraWidth:I

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraHeight:I

    invoke-static {p1, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->choosePreviewSize(Landroid/hardware/Camera$Parameters;II)[I

    move-result-object v1

    aget v2, v1, v3

    iput v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraWidth:I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraHeight:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->cameraStartPreview()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->isCameraFront()Z

    move-result v0

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraOrientation:I

    invoke-interface {p1, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;->onCameraChange(ZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "No cameras"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->releaseCamera()V

    :cond_4
    :goto_2
    return-void
.end method

.method public openCameraFront()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCurrentCameraType:I

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->openCamera()V

    return-void
.end method

.method public releaseCamera()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraNV21Byte:[B

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCamera:Landroid/hardware/Camera;

    :cond_0
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

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCameraListener(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->cameraListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper$CameraListener;

    return-void
.end method

.method public setCameraTextureId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mCameraTextureId:I

    return-void
.end method

.method public updateTexImage([F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraHelper;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method
