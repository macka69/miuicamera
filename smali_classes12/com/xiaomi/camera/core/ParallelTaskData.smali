.class public Lcom/xiaomi/camera/core/ParallelTaskData;
.super Ljava/lang/Object;
.source "ParallelTaskData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;
    }
.end annotation


# static fields
.field private static final GROUPSHOT_ORIGINAL_SUFFIX:Ljava/lang/String; = "_ORG"

.field private static final TAG:Ljava/lang/String; = "ParallelTaskData"


# instance fields
.field private currentModuleIndex:I

.field private isAbandoned:Z

.field private isAdaptiveSnapshotSize:Z

.field private isCinematicAspectRatio:Z

.field private isHWMFNRProcessing:Z

.field private isLiveShotTask:Z

.field private isNeedThumbnail:Z

.field private isPictureFilled:Z

.field private isSquare:Z

.field private mActiveRegion:Landroid/graphics/Rect;

.field public mAddToProcessorCallback:Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;

.field private mAlgoType:I

.field private mBurstNum:I

.field private mCameraId:I

.field private mCaptureId:Ljava/lang/String;

.field private mCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field private mCaptureTime:J

.field private mCoordinatesOfTheRegionUnderWatermarks:[I

.field private mCoverFrameTimestamp:J

.field private mDataOfTheRegionUnderWatermarks:[B

.field private mDataParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

.field private mDateTakenTime:J

.field private mDocumentBean:Lcom/android/zxing/DocumentDecoder$DocumentBean;

.field private mImageName:Ljava/lang/String;

.field private mInTimerBurstShotting:Z

.field public mIsFrontProcessing:Z

.field private mIsHdrSR:Z

.field private mIsParallelVTCameraSnapshot:Z

.field private mIsSatFusionShot:Z

.field private mIsSaveToHiddenFolder:Z

.field private mIsShot2Gallery:Z

.field private mJpegImageData:[B

.field private mMemDebug:Z

.field private mOriginalProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

.field private mParallelType:I

.field private mPortraitDepthData:[B

.field private mPortraitRawData:[B

.field private mRaw2YuvDone:Z

.field private mRawImageData:[B

.field private mRawInputHeight:I

.field private mRawInputWidth:I

.field private mRequireTuningData:Z

.field private mSavePath:Ljava/lang/String;

.field private mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

.field private mTimestamp:J

.field private mTuningImage:Landroid/media/Image;

.field private mVideoPath:Ljava/lang/String;

.field private mZoomRatio:F

.field private needCropAfterFilter:Z

.field private noGaussian:Z

.field private previewThumbnailHash:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IJILjava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(IJILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->currentModuleIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isHWMFNRProcessing:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned:Z

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCameraId:I

    iput-wide p2, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mTimestamp:J

    iput p4, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mParallelType:I

    iput-object p5, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mSavePath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDateTakenTime:J

    iput-wide p6, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureTime:J

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->currentModuleIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isHWMFNRProcessing:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned:Z

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mParallelType:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mParallelType:I

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsShot2Gallery:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsShot2Gallery:Z

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsSaveToHiddenFolder:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsSaveToHiddenFolder:Z

    iget-wide v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mTimestamp:J

    iput-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mTimestamp:J

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mSavePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mSavePath:Ljava/lang/String;

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail:Z

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mVideoPath:Ljava/lang/String;

    iget-wide v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoverFrameTimestamp:J

    iput-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoverFrameTimestamp:J

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->isLiveShotTask:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isLiveShotTask:Z

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->isPictureFilled:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isPictureFilled:Z

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataOfTheRegionUnderWatermarks:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataOfTheRegionUnderWatermarks:[B

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoordinatesOfTheRegionUnderWatermarks:[I

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoordinatesOfTheRegionUnderWatermarks:[I

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mCameraId:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCameraId:I

    iget-wide v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mDateTakenTime:J

    iput-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDateTakenTime:J

    iget-wide v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureTime:J

    iput-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureTime:J

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mRequireTuningData:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRequireTuningData:Z

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mTuningImage:Landroid/media/Image;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mTuningImage:Landroid/media/Image;

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->noGaussian:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->noGaussian:Z

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mMemDebug:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mMemDebug:Z

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsHdrSR:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsHdrSR:Z

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mOriginalProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mOriginalProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mRaw2YuvDone:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRaw2YuvDone:Z

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawInputWidth:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawInputWidth:I

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawInputHeight:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawInputHeight:I

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mActiveRegion:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mActiveRegion:Landroid/graphics/Rect;

    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mZoomRatio:F

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mZoomRatio:F

    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mAddToProcessorCallback:Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mAddToProcessorCallback:Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->needCropAfterFilter:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->needCropAfterFilter:Z

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->isSquare:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isSquare:Z

    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->isCinematicAspectRatio:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isCinematicAspectRatio:Z

    iget-object p1, p1, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureId:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkThread()V
    .locals 0

    return-void
.end method

.method public cloneTaskData(I)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 6

    new-instance v0, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_ORG"

    if-lez p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v1, Lcom/xiaomi/camera/core/ParallelTaskData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[1] cloneTaskData: path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSavePath(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    new-instance p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setSaveGroupshotPrimitive(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    return-object v0
.end method

.method public declared-synchronized fillJpegData([BI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->checkThread()V

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "algo fillJpegData: raw already set"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    if-nez v0, :cond_3

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "algo fillJpegData: depth already set"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    if-nez v0, :cond_5

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "algo fillJpegData: portrait raw already set"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    if-nez v1, :cond_7

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isPictureFilled:Z

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    :goto_0
    sget-object v0, Lcom/xiaomi/camera/core/ParallelTaskData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillJpegData: jpegData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; imageType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "algo fillJpegData: jpeg already set"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    return-void
.end method

.method public declared-synchronized fillVideoPath(Ljava/lang/String;J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskData;->checkThread()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mVideoPath:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mVideoPath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoverFrameTimestamp:J

    sget-object v0, Lcom/xiaomi/camera/core/ParallelTaskData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillVideoPath: isVideoEmpty = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "empty"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", timestamp = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "fillVideoPath: micro video already set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getActiveRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mActiveRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getAlgoType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mAlgoType:I

    return p0
.end method

.method public getBurstNum()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mBurstNum:I

    return p0
.end method

.method public getCameraId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCameraId:I

    return p0
.end method

.method public getCaptureId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureId:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-object p0
.end method

.method public getCaptureTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureTime:J

    return-wide v0
.end method

.method public getCoordinatesOfTheRegionUnderWatermarks()[I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoordinatesOfTheRegionUnderWatermarks:[I

    return-object p0
.end method

.method public declared-synchronized getCoverFrameTimestamp()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoverFrameTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentModuleIndex()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->currentModuleIndex:I

    return p0
.end method

.method public getDataOfTheRegionUnderWatermarks()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataOfTheRegionUnderWatermarks:[B

    return-object p0
.end method

.method public getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    return-object p0
.end method

.method public getDateTakenTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDateTakenTime:J

    return-wide v0
.end method

.method public getDocumentBean()Lcom/android/zxing/DocumentDecoder$DocumentBean;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDocumentBean:Lcom/android/zxing/DocumentDecoder$DocumentBean;

    return-object p0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mImageName:Ljava/lang/String;

    return-object p0
.end method

.method public getJpegImageData()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    return-object p0
.end method

.method public declared-synchronized getMicroVideoPath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mVideoPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOriginalProcessor()Lcom/xiaomi/camera/core/ImageProcessor;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mOriginalProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    return-object p0
.end method

.method public getParallelType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mParallelType:I

    return p0
.end method

.method public getPortraitDepthData()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    return-object p0
.end method

.method public getPortraitRawData()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    return-object p0
.end method

.method public getPreviewThumbnailHash()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->previewThumbnailHash:I

    return p0
.end method

.method public getRawImageData()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    return-object p0
.end method

.method public getRawInputHeight()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawInputHeight:I

    return p0
.end method

.method public getRawInputWidth()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawInputWidth:I

    return p0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mTimestamp:J

    return-wide v0
.end method

.method public getTuningImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mTuningImage:Landroid/media/Image;

    return-object p0
.end method

.method public getZoomRatio()F
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mZoomRatio:F

    return p0
.end method

.method public isAbandoned()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned:Z

    return p0
.end method

.method public isAdaptiveSnapshotSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isAdaptiveSnapshotSize:Z

    return p0
.end method

.method public isCinematicAspectRatio()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isCinematicAspectRatio:Z

    return p0
.end method

.method public isDataFilled(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method

.method public isHWMFNRProcessing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isHWMFNRProcessing:Z

    return p0
.end method

.method public isHdrSR()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsHdrSR:Z

    return p0
.end method

.method public isInTimerBurstShotting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mInTimerBurstShotting:Z

    return p0
.end method

.method public declared-synchronized isJpegDataReady()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mParallelType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v2

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    if-eqz v0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    sget-object v3, Lcom/xiaomi/camera/core/ParallelTaskData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isJpegDataReady: object = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; mParallelType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mParallelType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; mJpegImageData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; mRawImageData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; mPortraitRawData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; mPortraitDepthData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; isVideoEmpty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mVideoPath:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, "empty"

    iget-object v6, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :cond_2
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; result = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized isLiveShotTask()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isLiveShotTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMemDebug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mMemDebug:Z

    return p0
.end method

.method public isNeedCropAfterFilter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->needCropAfterFilter:Z

    return p0
.end method

.method public isNeedThumbnail()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail:Z

    return p0
.end method

.method public isParallelVTCameraSnapshot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsParallelVTCameraSnapshot:Z

    return p0
.end method

.method public declared-synchronized isPictureFilled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isPictureFilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRaw2YuvDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRaw2YuvDone:Z

    return p0
.end method

.method public isRequireTuningData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRequireTuningData:Z

    return p0
.end method

.method public isSatFusionShot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsSatFusionShot:Z

    return p0
.end method

.method public isSaveToHiddenFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsSaveToHiddenFolder:Z

    return p0
.end method

.method public isShot2Gallery()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsShot2Gallery:Z

    return p0
.end method

.method public isSquare()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isSquare:Z

    return p0
.end method

.method public noGaussian()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->noGaussian:Z

    return p0
.end method

.method public refillJpegData([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isPictureFilled:Z

    return-void
.end method

.method public releaseImageData()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mJpegImageData:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawImageData:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitRawData:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mPortraitDepthData:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isPictureFilled:Z

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataOfTheRegionUnderWatermarks:[B

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoordinatesOfTheRegionUnderWatermarks:[I

    iput-boolean v1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRequireTuningData:Z

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mTuningImage:Landroid/media/Image;

    iput-boolean v1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsSatFusionShot:Z

    return-void
.end method

.method public setAbandoned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isAbandoned:Z

    return-void
.end method

.method public setActiveRegion(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mActiveRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setAdaptiveSnapshotSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isAdaptiveSnapshotSize:Z

    return-void
.end method

.method public setAddToProcessorListener(Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mAddToProcessorCallback:Lcom/xiaomi/camera/core/ParallelTaskData$OnParallelTaskDataAddToProcessorListener;

    return-void
.end method

.method public setAlgoType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mAlgoType:I

    return-void
.end method

.method public setBurstNum(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mBurstNum:I

    return-void
.end method

.method public setCaptureId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureId:Ljava/lang/String;

    return-void
.end method

.method public setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCaptureResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-void
.end method

.method public setCinematicAspectRatio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isCinematicAspectRatio:Z

    return-void
.end method

.method public setCoordinatesOfTheRegionUnderWatermarks([I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mCoordinatesOfTheRegionUnderWatermarks:[I

    return-void
.end method

.method public setCurrentModuleIndex(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->currentModuleIndex:I

    return-void
.end method

.method public setDataOfTheRegionUnderWatermarks([B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDataOfTheRegionUnderWatermarks:[B

    return-void
.end method

.method public setDocumentBean(Lcom/android/zxing/DocumentDecoder$DocumentBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mDocumentBean:Lcom/android/zxing/DocumentDecoder$DocumentBean;

    return-void
.end method

.method public setHWMFNRProcessing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isHWMFNRProcessing:Z

    return-void
.end method

.method public setHdrSR(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsHdrSR:Z

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mImageName:Ljava/lang/String;

    return-void
.end method

.method public setInTimerBurstShotting(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mInTimerBurstShotting:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mInTimerBurstShotting:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setIsSatFusionShot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsSatFusionShot:Z

    return-void
.end method

.method public declared-synchronized setLiveShotTask(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isLiveShotTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMemDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mMemDebug:Z

    return-void
.end method

.method public setNeedCropAfterFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->needCropAfterFilter:Z

    return-void
.end method

.method public setNeedThumbnail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isNeedThumbnail:Z

    return-void
.end method

.method public setNoGaussian(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->noGaussian:Z

    return-void
.end method

.method public setOriginalProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mOriginalProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    return-void
.end method

.method public setParallelVTCameraSnapshot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsParallelVTCameraSnapshot:Z

    return-void
.end method

.method public declared-synchronized setPictureFilled(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isPictureFilled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPreviewThumbnailHash(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->previewThumbnailHash:I

    return-void
.end method

.method public setRaw2YuvDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRaw2YuvDone:Z

    return-void
.end method

.method public setRawInputSize(II)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawInputWidth:I

    iput p2, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRawInputHeight:I

    return-void
.end method

.method public setRequireTuningData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mRequireTuningData:Z

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method public setSaveToHiddenFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsSaveToHiddenFolder:Z

    return-void
.end method

.method public setServiceStatusListener(Lcom/android/camera/LocalParallelService$ServiceStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mServiceStatusListener:Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    return-void
.end method

.method public setShot2Gallery(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsShot2Gallery:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mIsShot2Gallery:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSquare(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->isSquare:Z

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mTimestamp:J

    return-void
.end method

.method public setTuningImage(Landroid/media/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mTuningImage:Landroid/media/Image;

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskData;->mZoomRatio:F

    return-void
.end method
