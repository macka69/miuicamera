.class public Lcom/xiaomi/camera/core/CaptureData;
.super Ljava/lang/Object;
.source "CaptureData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureData"


# instance fields
.field private mAlgoSize:Landroid/util/Size;

.field private mAlgoType:I

.field private mAlreadyDataNum:I

.field private mBurstNum:I

.field private mCaptureDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

.field private mCaptureId:Ljava/lang/String;

.field private mCaptureTimestamp:J

.field private mCapturedByFrontCamera:Z

.field private mDataListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

.field private mDispatchedDataNum:I

.field private mHdrSRBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

.field private mIsAbandoned:Z

.field private mIsHdrSR:Z

.field private mIsMoonMode:Z

.field private mIsPartialProcess:Z

.field private mIsSatFusionShot:Z

.field private mMultiFrameProcessResult:Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

.field private mRequireTuningData:Z

.field private mSaveInputImage:Z

.field private mStreamNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIJLjava/lang/String;ZLcom/xiaomi/camera/core/ImageProcessor;)V
    .locals 1
    .param p8    # Lcom/xiaomi/camera/core/ImageProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureDataBeanList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlgoType:I

    iput p2, p0, Lcom/xiaomi/camera/core/CaptureData;->mStreamNum:I

    iput p3, p0, Lcom/xiaomi/camera/core/CaptureData;->mBurstNum:I

    iput-wide p4, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureTimestamp:J

    iput-boolean p7, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsAbandoned:Z

    iput-object p6, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureId:Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/camera/core/CaptureData;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/core/CaptureData;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAlgoSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlgoSize:Landroid/util/Size;

    return-object p0
.end method

.method public getAlgoType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlgoType:I

    return p0
.end method

.method public getBurstNum()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mBurstNum:I

    return p0
.end method

.method public getCaptureDataBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureDataBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getCaptureDataListener()Lcom/xiaomi/camera/core/CaptureDataListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    return-object p0
.end method

.method public getCaptureId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureId:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptureTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureTimestamp:J

    return-wide v0
.end method

.method public getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mDataListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    return-object p0
.end method

.method public getHDRSRResult()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mHdrSRBeans:Ljava/util/List;

    return-object p0
.end method

.method public getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    return-object p0
.end method

.method public getMultiFrameProcessResult()Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mMultiFrameProcessResult:Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    return-object p0
.end method

.method public getNextDispatchTaskData()Lcom/xiaomi/camera/core/TaskData;
    .locals 9

    sget-object v0, Lcom/xiaomi/camera/core/CaptureData;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/xiaomi/camera/core/CaptureData;->mDispatchedDataNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "getNextDispatchTaskData: E. dispatchedNum = %d, readyNum = %d"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mDispatchedDataNum:I

    iget v2, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget v2, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    iget v6, p0, Lcom/xiaomi/camera/core/CaptureData;->mDispatchedDataNum:I

    sub-int/2addr v2, v6

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget v2, p0, Lcom/xiaomi/camera/core/CaptureData;->mDispatchedDataNum:I

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget v6, p0, Lcom/xiaomi/camera/core/CaptureData;->mDispatchedDataNum:I

    iget v7, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureDataBeanList:Ljava/util/List;

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/xiaomi/camera/core/CaptureData;->mDispatchedDataNum:I

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    new-instance v3, Lcom/xiaomi/camera/core/TaskData;

    iget-object v6, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureDataBeanList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getFirstTimestamp()J

    move-result-wide v6

    invoke-direct {v3, v0, v2, v6, v7}, Lcom/xiaomi/camera/core/TaskData;-><init>(Ljava/util/List;ZJ)V

    sget-object v0, Lcom/xiaomi/camera/core/CaptureData;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/camera/core/CaptureData;->mDispatchedDataNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    const-string p0, "getNextDispatchTaskData: X. dispatchedNum = %d, readyNum = %d"

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    return-object v3
.end method

.method public getStreamNum()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mStreamNum:I

    return p0
.end method

.method public isAbandoned()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsAbandoned:Z

    return p0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mCapturedByFrontCamera:Z

    return p0
.end method

.method public isDataReady()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    iget p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mBurstNum:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHdrSR()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsHdrSR:Z

    return p0
.end method

.method public isMoonMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsMoonMode:Z

    return p0
.end method

.method public isPartialProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsPartialProcess:Z

    return p0
.end method

.method public isRequireTuningData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mRequireTuningData:Z

    return p0
.end method

.method public isSatFusionShot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsSatFusionShot:Z

    return p0
.end method

.method public isSaveInputImage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mSaveInputImage:Z

    return p0
.end method

.method public putCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 6

    iget v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlgoType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v2

    invoke-static {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->access$000(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureDataBeanList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureDataBeanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlreadyDataNum:I

    return-void
.end method

.method public setAlgoSize(Landroid/util/Size;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlgoSize:Landroid/util/Size;

    :cond_0
    return-void
.end method

.method public setCaptureId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureId:Ljava/lang/String;

    return-void
.end method

.method public setCapturedByFrontCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mCapturedByFrontCamera:Z

    return-void
.end method

.method public setDataListener(Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mDataListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    return-void
.end method

.method public setHDRSRResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mHdrSRBeans:Ljava/util/List;

    return-void
.end method

.method public setHdrSR(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsHdrSR:Z

    return-void
.end method

.method public setIsSatFusionShot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsSatFusionShot:Z

    return-void
.end method

.method public setMoonMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsMoonMode:Z

    return-void
.end method

.method public setMultiFrameProcessListener(Lcom/xiaomi/camera/core/CaptureDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    return-void
.end method

.method public setMultiFrameProcessResult(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mMultiFrameProcessResult:Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    return-void
.end method

.method public setPartialProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsPartialProcess:Z

    return-void
.end method

.method public setRequireTuningData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mRequireTuningData:Z

    return-void
.end method

.method public setSaveInputImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData;->mSaveInputImage:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/camera/core/CaptureData;->mAlgoType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/camera/core/CaptureData;->mStreamNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/camera/core/CaptureData;->mBurstNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/xiaomi/camera/core/CaptureData;->mCaptureTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData;->mIsAbandoned:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "CaptureData{algoType=%d, streamNum=%d, burstNum=%d, captureTimestamp=%d, isAbandoned=%b}"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
