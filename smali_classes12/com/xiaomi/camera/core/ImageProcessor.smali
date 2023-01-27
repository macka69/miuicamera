.class public abstract Lcom/xiaomi/camera/core/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;,
        Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;,
        Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;,
        Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMAGE_BUFFER_QUEUE_SIZE:I = 0x4

.field public static final DISPATCH_STATUS_OK:I = 0x0

.field public static final DISPATCH_STATUS_SESSION_ERROR:I = -0x1

.field private static final MSG_CHECK_TIMEOUT_TASK:I = 0x3

.field private static final MSG_IMAGE_DOFILTER:I = 0x2

.field private static final MSG_IMAGE_RECEIVED:I = 0x1

.field private static final PROCESS_TASK_TIMEOUT_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "ImageProcessor"


# instance fields
.field protected mBlockVariable:Landroid/os/ConditionVariable;

.field mDepthImageReaderHolder:Landroid/media/ImageReader;

.field mEffectImageReaderHolder:Landroid/media/ImageReader;

.field mEffectImageReaderHolder2:Landroid/media/ImageReader;

.field mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

.field private mImageBufferQueueSize:I

.field mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

.field private mImageReaderHandler:Landroid/os/Handler;

.field private final mImageReaderThread:Landroid/os/HandlerThread;

.field private final mInFlightTaskList:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsBokehMode:Z

.field private mIsNeedStopWork:Z

.field private mMaxParallelRequestNumber:I

.field mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field mRawImageReaderHolder:Landroid/media/ImageReader;

.field private final mTaskDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/core/TaskData;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTaskDataLock:Ljava/lang/Object;

.field mTaskSession:Lcom/xiaomi/engine/TaskSession;

.field mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

.field private mWorkHandler:Landroid/os/Handler;

.field private final mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;Lcom/xiaomi/engine/BufferFormat;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getProcessorName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string v2, "_%s_%dx%d_%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create ImageProcessor_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WorkerThread"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReaderThread"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    new-instance p1, Lcom/xiaomi/camera/core/FilterProcessor;

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mBlockVariable:Landroid/os/ConditionVariable;

    invoke-direct {p1, v0}, Lcom/xiaomi/camera/core/FilterProcessor;-><init>(Landroid/os/ConditionVariable;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/core/FilterProcessor;->init(Landroid/util/Size;)V

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/engine/GraphDescriptorBean;->getOperationModeID()I

    move-result p1

    const p2, 0x8002

    if-ne p1, p2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsBokehMode:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/camera/core/ImageProcessor;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/core/ImageProcessor;Lcom/xiaomi/camera/core/TaskData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->processImageInner(Lcom/xiaomi/camera/core/TaskData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/core/ImageProcessor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ImageProcessor;->calculateAndRemoveTimeoutTask(J)V

    return-void
.end method

.method private calculateAndRemoveTimeoutTask(J)V
    .locals 10

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v1, :cond_1

    iget-object v5, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    iget-wide v6, v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    sub-long v6, p1, v6

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-direct {p0, v5}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseInFlightTaskLocked(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V

    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v6, "task %d is timeout. cost: %dms"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    iget-wide v8, v5, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->processStartTime:J

    sub-long v8, p1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v4, v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->dumpBugReportLog()V

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isAlive()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mockProcessImage(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 6

    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "mockProcessImage: skip image processor"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageStart(Lcom/xiaomi/camera/core/TaskData;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-direct {p0, v4}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    new-instance v1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;

    invoke-direct {v1, p1, v0, v2}, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;-><init>(Landroid/media/Image;IZ)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V

    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/camera/core/ImageProcessor;->onProcessImageDone(J)V

    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "mockProcessImage: dataBeans is empty!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processImageInner(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->mockProcessImage(Lcom/xiaomi/camera/core/TaskData;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->onPreProcessImage(Lcom/xiaomi/camera/core/TaskData;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->processImage(Lcom/xiaomi/camera/core/TaskData;)V

    :goto_0
    return-void
.end method

.method private releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getMainImage()Landroid/media/Image;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getSubImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTuningImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onOriginalImageClosed(Landroid/media/Image;)V

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_5
    return-void
.end method

.method private releaseInFlightTaskLocked(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/TaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-direct {p0, v2}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/camera/core/ImageProcessor;->removeInFlightTask(J)V

    return-void
.end method

.method private removeInFlightTask(J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendProcessImageMessage()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v0, "sendProcessImageMessage"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    if-nez p0, :cond_1

    const-string p0, "Thread"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v1, v2

    const-string p0, "%s already die!"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Lcom/android/camera/CameraSize;)Ljava/util/List;
    .param p2    # Lcom/android/camera/CameraSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            "Lcom/android/camera/CameraSize;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public configOutputConfigurations2(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferFormat()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageBufferQueueSize()I

    move-result v3

    invoke-static {v1, v2, p1, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    new-instance v1, Lcom/xiaomi/camera/core/ImageProcessor$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/core/ImageProcessor$2;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->getImageReaderHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public dispatchFilterTask(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V
    .locals 2
    .param p1    # Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Thread already die!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchTask(Lcom/xiaomi/camera/core/TaskData;)I
    .locals 3
    .param p1    # Lcom/xiaomi/camera/core/TaskData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-nez p1, :cond_0

    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTask: taskSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected doFilter(Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;)V
    .locals 10
    .param p1    # Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iget v3, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->target:I

    iget-object v4, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    invoke-interface {v4, v1, v2}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->getParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    if-eqz v3, :cond_0

    if-ne v5, v3, :cond_5

    :cond_0
    invoke-static {}, Lcom/mi/config/Device;->isG7()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v7

    if-eq v5, v7, :cond_1

    const/4 v7, 0x3

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v8

    if-ne v7, v8, :cond_3

    :cond_1
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v7

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCameraId()I

    move-result v8

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v7, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    const/16 v7, 0x12c

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_0
    invoke-static {v0, v8, v7}, Lcom/xiaomi/camera/algoup/NoiseReduction;->doChromaNR(Landroid/media/Image;II)I

    :cond_3
    sget-boolean v7, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_RENDER:Z

    if-nez v7, :cond_4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v7

    invoke-static {v7}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doFilter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    invoke-virtual {v1, v4, v0, v3}, Lcom/xiaomi/camera/core/FilterProcessor;->doFilterSync(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/media/Image;I)Landroid/media/Image;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v2, "prop skip render"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getAlgoType()I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doFilter: no task data found for image "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v6, v5

    :goto_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    invoke-interface {v1, v0, v3, p1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;IZ)V

    goto :goto_3

    :cond_7
    iget-boolean p1, p1, Lcom/xiaomi/camera/core/ImageProcessor$FilterTaskData;->isPoolImage:Z

    if-eqz p1, :cond_8

    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFilter: release pool image "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    :cond_8
    move v6, v5

    :goto_3
    sget-boolean p1, Lcom/xiaomi/camera/core/PostProcessor;->SKIP_IMAGEPROCESSOR:Z

    if-nez p1, :cond_c

    if-eqz v6, :cond_c

    if-eqz v3, :cond_b

    if-eq v3, v5, :cond_a

    const/4 p1, 0x2

    if-eq v3, p1, :cond_9

    sget-object p1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessDepthImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessRawImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mNeedProcessNormalImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToStopWork()V

    return-void
.end method

.method protected getImageBufferQueueSize()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    return p0
.end method

.method protected getImageReaderHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getProcessorName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskSession()Lcom/xiaomi/engine/TaskSession;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTaskSession2()Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskSession2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAlgorithmEngineBusy()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBokekMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsBokehMode:Z

    return p0
.end method

.method abstract isIdle()Z
.end method

.method protected isImageValid(Landroid/media/Image;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method protected onPreProcessImage(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v9, "onPreProcessImage: timestamp=%d, startTime=%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v9, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v9, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;JJ)V

    invoke-virtual {v9, p1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->addTaskData(Lcom/xiaomi/camera/core/TaskData;)V

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->addTaskData(Lcom/xiaomi/camera/core/TaskData;)V

    sget-object v5, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v6, "onPreProcessImage: timestamp=%d, taskDataNum=%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v1, v1, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->taskDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreProcessImage: no record found with timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "onPreProcessImage: worker thread is dead"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected onProcessImageDone(J)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ImageProcessor;->removeInFlightTask(J)V

    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlgorithmEngineBusy()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessImageDone: taskSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

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

.method protected onProcessImageStart(Lcom/xiaomi/camera/core/TaskData;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_0
    return-void
.end method

.method public onTaskSessionDied()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskSessionDied: E. processor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    iput-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mInFlightTaskList:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;

    iget-wide v4, v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseInFlightTaskLocked(Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;)V

    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTaskSessionDied: remove in flight task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/xiaomi/camera/core/ImageProcessor$TaskRecord;->timestamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEngineProcessingImageSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/TaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->containsFirstFrame()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getDataBeans()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-direct {p0, v5}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    sget-object v4, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTaskSessionDied: remove pending task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/TaskData;->getFirstTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "onTaskSessionDied: X"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method abstract processImage(Lcom/xiaomi/camera/core/TaskData;)V
.end method

.method protected queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    const/4 p0, 0x2

    invoke-static {p1, p2, p0}, Lcom/xiaomi/camera/base/ImageUtil;->queueImageToPool(Lcom/xiaomi/camera/imagecodec/ImagePool;Landroid/media/Image;I)Landroid/media/Image;

    move-result-object p0

    return-object p0
.end method

.method public releaseResource()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder:Landroid/media/ImageReader;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mRawImageReaderHolder:Landroid/media/ImageReader;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mDepthImageReaderHolder:Landroid/media/ImageReader;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mEffectImageReaderHolder2:Landroid/media/ImageReader;

    :cond_3
    return-void
.end method

.method public setImageBufferQueueSize(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageBufferQueueSize:I

    return-void
.end method

.method public setMaxParallelRequestNumber(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mMaxParallelRequestNumber:I

    :cond_0
    return-void
.end method

.method public setTaskSession(Lcom/xiaomi/engine/TaskSession;)V
    .locals 4
    .param p1    # Lcom/xiaomi/engine/TaskSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "setTaskSession: worker thread has died"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTaskSession2(Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;)V
    .locals 4
    .param p1    # Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskSession2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->sendProcessImageMessage()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string p1, "setTaskSession: worker thread has died"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startWork()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/xiaomi/camera/core/ImageProcessor$1;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/core/ImageProcessor$1;-><init>(Lcom/xiaomi/camera/core/ImageProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "startWork: %s started"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized stopWork()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopWork: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "ImageProcessor: %s stopped"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mWorkHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mImageReaderHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v0}, Lcom/xiaomi/engine/TaskSession;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->getTaskSession()Lcom/xiaomi/engine/TaskSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/engine/TaskSession;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mTaskSession2:Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->releaseResource()V

    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopWork: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopWorkWhenIdle()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/camera/core/ImageProcessor;->TAG:Ljava/lang/String;

    const-string v1, "stopWorkWhenIdle"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsNeedStopWork:Z

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->tryToStopWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryToStopWork()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/core/ImageProcessor;->mIsNeedStopWork:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ImageProcessor;->stopWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
