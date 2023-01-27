.class public Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;
.super Ljava/lang/Object;
.source "CaptureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/CaptureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureDataBean"
.end annotation


# instance fields
.field private mCaptureId:Ljava/lang/String;

.field private mFirstTimeStamp:J

.field private mHasCaptureData:Z

.field private mIsFirstResult:Z

.field private mIsHdrSrShot:Z

.field private mIsMainImageFromPool:Z

.field private mIsSatFusionShot:Z

.field private mIsSubImageFromPool:Z

.field private mIsTuningImageFromPool:Z

.field private mMainImage:Landroid/media/Image;

.field private mRequireTuningData:Z

.field private mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

.field private mStreamNum:I

.field private mSubImage:Landroid/media/Image;

.field private mTuningImage:Landroid/media/Image;


# direct methods
.method public constructor <init>(IZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    iput-boolean p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSatFusionShot:Z

    iput-boolean p4, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mHasCaptureData:Z

    iput-boolean p5, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsHdrSrShot:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mFirstTimeStamp:J

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    :cond_2
    return-void
.end method

.method public getCaptureId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mCaptureId:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mFirstTimeStamp:J

    return-wide v0
.end method

.method public getMainImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    return-object p0
.end method

.method public getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    return-object p0
.end method

.method public getStreamNum()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    return p0
.end method

.method public getSubImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTuningImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    return-object p0
.end method

.method public isDataReady()Z
    .locals 5

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/4 v3, 0x2

    iget v4, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-ne v2, v4, :cond_4

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public isFirstResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsFirstResult:Z

    return p0
.end method

.method public isHasCaptureData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mHasCaptureData:Z

    return p0
.end method

.method public isHdrSrShot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsHdrSrShot:Z

    return p0
.end method

.method public isMainImageFromPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsMainImageFromPool:Z

    return p0
.end method

.method public isRequireTuningData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    return p0
.end method

.method public isSatFusionShot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSatFusionShot:Z

    return p0
.end method

.method public isSubImageFromPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSubImageFromPool:Z

    return p0
.end method

.method public isTuningImageFromPool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsTuningImageFromPool:Z

    return p0
.end method

.method public setCaptureId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mCaptureId:Ljava/lang/String;

    return-void
.end method

.method public setCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    iput-boolean p2, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsFirstResult:Z

    return-void
.end method

.method public setFirstTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mFirstTimeStamp:J

    return-void
.end method

.method public setHasCaptureData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mHasCaptureData:Z

    return-void
.end method

.method public setImage(Landroid/media/Image;IZ)V
    .locals 1

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mMainImage:Landroid/media/Image;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsMainImageFromPool:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mSubImage:Landroid/media/Image;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSubImageFromPool:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iput-object p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mTuningImage:Landroid/media/Image;

    iput-boolean p3, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsTuningImageFromPool:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/core/CaptureData;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setImage: unknown target: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIsHdrSrShot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsHdrSrShot:Z

    return-void
.end method

.method public setIsSatFusionShot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mIsSatFusionShot:Z

    return-void
.end method

.method public setRequireTuningData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mRequireTuningData:Z

    return-void
.end method

.method public setStreamNum(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mStreamNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureDataBean{mResult=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mResult:Lcom/xiaomi/protocol/ICustomCaptureResult;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], mFirstTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->mFirstTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
