.class Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2ShotParallelRawBurst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCaptureTimestamp:J

.field final synthetic this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;


# direct methods
.method constructor <init>(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->mCaptureTimestamp:J

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCaptureBufferLost: frameNumber="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShotParallelRawBurst"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6
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

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$508(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelRawBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCustomCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$600(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->setMainPhysicalResult(Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v3, v3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_RAW_BUFFER_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v4}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_RAW_BUFFER_SIZE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p3, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Size;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted: rawSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputWidth()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getRawInputHeight()I

    move-result v4

    if-eq v3, v4, :cond_2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "onCaptureCompleted: override raw size: %dx%d"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$400(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRawInputSize(II)V

    :cond_2
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {p2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$500(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result p2

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1, v2, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    :cond_3
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

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->mCaptureTimestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frameNumber="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelRawBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object p2, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    iget-wide p1, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->mCaptureTimestamp:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->mCaptureTimestamp:J

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureFailed(JI)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
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

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCaptureProgressed: frameNumber="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShotParallelRawBurst"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sequenceId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShotParallelRawBurst"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sequenceId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frameNumber="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShotParallelRawBurst"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 13
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " frameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " isFirst="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "ShotParallelRawBurst"

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$000(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v12, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v3, v3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v3, v3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v7

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v3, v3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v3, v3, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v9

    move-object v3, v12

    move-wide/from16 v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    new-instance v3, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v4, v4, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-direct {v3, v4}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    new-instance v4, Lcom/android/camera2/QuickViewParam;

    invoke-direct {v4, v2, v2, v2, v2}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-virtual {v3, v4}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget v4, v4, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v3, v4}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v3, v3, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$100(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setBurstNum(I)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$200(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAlgoType(I)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v3}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$300(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRawInputSize(II)V

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v3, v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$402(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;Lcom/xiaomi/camera/core/ParallelTaskData;)Lcom/xiaomi/camera/core/ParallelTaskData;

    goto :goto_0

    :cond_0
    const-string v1, "onCaptureStarted: null task data"

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "onCaptureStarted: null picture callback"

    invoke-static {v11, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, v0, Lcom/android/camera2/MiCamera2ShotParallelRawBurst$1;->this$0:Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    invoke-static {v0, v2}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->access$002(Lcom/android/camera2/MiCamera2ShotParallelRawBurst;Z)Z

    :cond_2
    return-void
.end method
