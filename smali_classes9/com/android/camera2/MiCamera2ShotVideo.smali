.class public Lcom/android/camera2/MiCamera2ShotVideo;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotVideo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCamera2ShotVideo"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera2/MiCamera2ShotVideo;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    new-instance v0, Lcom/android/camera2/MiCamera2ShotVideo$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotVideo$1;-><init>(Lcom/android/camera2/MiCamera2ShotVideo;)V

    return-object v0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedHardwareLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getVideoSnapshotImageReader()Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Lcom/android/camera2/MiCamera2ShotVideo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getRecordSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getRecordSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3
    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideoShot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera2/MiCamera2ShotVideo;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotVideo;->notifyResultData([B)V

    return-void
.end method

.method protected notifyResultData([B)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera2/MiCamera2ShotVideo;->TAG:Ljava/lang/String;

    const-string p1, "notifyResultData: null picture callback"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onImageReceived(Landroid/media/Image;I)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    invoke-virtual {p0, p2}, Lcom/android/camera2/MiCamera2ShotVideo;->notifyResultData([B)V

    return-void
.end method

.method protected prepare()V
    .locals 0

    return-void
.end method

.method protected startSessionCapture()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotVideo;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotVideo;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/camera2/MiCamera2ShotVideo;->TAG:Ljava/lang/String;

    const-string v2, "Failed to capture a video snapshot, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    sget-object v1, Lcom/android/camera2/MiCamera2ShotVideo;->TAG:Ljava/lang/String;

    const-string v2, "Cannot capture a video snapshot"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method
