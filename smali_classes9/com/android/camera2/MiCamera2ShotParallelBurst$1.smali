.class Lcom/android/camera2/MiCamera2ShotParallelBurst$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelBurst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;


# direct methods
.method constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1108(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result p1

    const-string v0, "/"

    const-string v1, "onCaptureCompleted: "

    const-string v2, "ShotParallelBurst"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setSubPhysicalResult(Landroid/os/Parcelable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result p1

    const-string v0, "onCaptureCompleted: finished all frame"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v3

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->onCaptureShutter()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3, v1, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result p1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v3

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->onCaptureShutter()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3, v1, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    invoke-static {p3}, Lcom/android/camera2/CaptureResultParser;->isSREnable(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v1, Ljava/lang/Boolean;

    const-string/jumbo v3, "xiaomi.superResolution.enabled"

    invoke-direct {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted: isSRRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted: isSREnabled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p3, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureCompleted: hdrEnabled = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: fusion = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->trimPoolBuffer()V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureFailed: reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " timestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ShotParallelBurst"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->onCaptureShutter()V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 7
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ANCHOR_FRAME_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p3, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_0
    move-wide v1, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "begin to choose anchor frame "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getSoundTimeWhenAnchor()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long p2, v1, v4

    if-lez p2, :cond_3

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/camera2/QuickViewParam;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v5}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v5

    invoke-direct {p1, v4, v5, v0, v3}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-interface {p2, p1, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1, v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$102(Lcom/android/camera2/MiCamera2ShotParallelBurst;Z)Z

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;

    move-result-object v0

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iget v3, p1, Lcom/android/camera/CameraSize;->width:I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Lcom/android/camera/CameraSize;

    move-result-object p0

    iget v4, p0, Lcom/android/camera/CameraSize;->height:I

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/zxing/CacheImageDecoder;->saveAnchorFrameThumbnail(JII[ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/camera2/QuickViewParam;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v2

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v4

    invoke-direct {v1, v2, v4, p1, v0}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-interface {p2, v1, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p0, v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$102(Lcom/android/camera2/MiCamera2ShotParallelBurst;Z)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->processCaptureFail()V

    return-void
.end method

.method public onCaptureShutter()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isMultiFrameCaptureShutterDelay()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/camera2/QuickViewParam;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v2

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3, v3}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_2
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 15
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-wide/from16 v9, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " frameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " isFirst="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    const-string v11, "ShotParallelBurst"

    invoke-static {v4, v11, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->enableSat()V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_7

    new-instance v14, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v5

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v7

    move-object v1, v14

    move-wide/from16 v3, p3

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->IMAGE_NAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2ShotParallel;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getSoundTimeWhenAnchor()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStarted: soundTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v13

    :goto_0
    new-instance v2, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v4, v4, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {v2, v4}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    new-instance v4, Lcom/android/camera2/QuickViewParam;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v5

    iget-object v6, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v6

    invoke-direct {v4, v5, v6, v1, v13}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-virtual {v2, v4}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget v2, v2, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object v1

    invoke-interface {v12, v14, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setIsSatFusionShot(Z)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setHdrSR(Z)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v2

    invoke-static {v2}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraSize;->width:I

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v4, v4, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRawInputSize(II)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setActiveRegion(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setZoomRatio(F)V

    :cond_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    :goto_1
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I

    move-result v2

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEnabled(Z)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$900(Lcom/android/camera2/MiCamera2ShotParallelBurst;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrEvValues([I)V

    :cond_5
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v2, v9, v10}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$1002(Lcom/android/camera2/MiCamera2ShotParallelBurst;J)J

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_2

    :cond_6
    const-string v1, "onCaptureStarted: null task data"

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v1, "onCaptureStarted: null picture callback"

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelBurst;

    invoke-static {v0, v13}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->access$302(Lcom/android/camera2/MiCamera2ShotParallelBurst;Z)Z

    :cond_8
    return-void
.end method
