.class public Lcom/xiaomi/engine/FrameData;
.super Ljava/lang/Object;
.source "FrameData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/engine/FrameData$FrameStatusCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameData"


# instance fields
.field private mBufferImage:Landroid/media/Image;

.field private mCaptureRequestMetadataNative:Landroid/os/Parcelable;

.field private mCaptureResultMetadataNative:Landroid/os/Parcelable;

.field private mFrameNumber:J

.field private mFrameStatusCallback:Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

.field private mImageFlag:I

.field private mPhysicalResultMetadataNative:Landroid/os/Parcelable;

.field private mSequenceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIJLandroid/os/Parcelable;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    iput p2, p0, Lcom/xiaomi/engine/FrameData;->mSequenceId:I

    iput-wide p3, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    iput-object p5, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    iput-object p6, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    return-void
.end method

.method public constructor <init>(IIJLandroid/os/Parcelable;Landroid/os/Parcelable;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    iput p2, p0, Lcom/xiaomi/engine/FrameData;->mSequenceId:I

    iput-wide p3, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    iput-object p5, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    iput-object p6, p0, Lcom/xiaomi/engine/FrameData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    iput-object p7, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public getBufferImage()Landroid/media/Image;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    return-object p0
.end method

.method public getCaptureRequestMetaDataNative()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/engine/FrameData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    return-object p0
.end method

.method public getCaptureResultMetaDataNative()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    return-object p0
.end method

.method public getFrameCallback()Lcom/xiaomi/engine/FrameData$FrameStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/engine/FrameData;->mFrameStatusCallback:Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

    return-object p0
.end method

.method public getFrameNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    return-wide v0
.end method

.method public getImageFlag()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    return p0
.end method

.method public getPhysicalResultMetadata()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/engine/FrameData;->mPhysicalResultMetadataNative:Landroid/os/Parcelable;

    return-object p0
.end method

.method public getSequenceId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/engine/FrameData;->mSequenceId:I

    return p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/engine/FrameData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: close Image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mFrameStatusCallback:Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    invoke-interface {v0, p0}, Lcom/xiaomi/engine/FrameData$FrameStatusCallback;->onFrameImageClosed(Landroid/media/Image;)V

    :cond_0
    return-void
.end method

.method public setBufferImage(Landroid/media/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    return-void
.end method

.method public setCaptureRequestMetaDataNative(Landroid/os/Parcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    return-void
.end method

.method public setCaptureResultMetaDataNative(Landroid/os/Parcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    return-void
.end method

.method public setFrameCallback(Lcom/xiaomi/engine/FrameData$FrameStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mFrameStatusCallback:Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

    return-void
.end method

.method public setFrameNumber(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    return-void
.end method

.method public setImageFlag(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    return-void
.end method

.method public setPhysicalResultMetadata(Landroid/os/Parcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mPhysicalResultMetadataNative:Landroid/os/Parcelable;

    return-void
.end method

.method public setSequenceId(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/engine/FrameData;->mSequenceId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameData{ mImageFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureResultMetadataNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureRequestMetadataNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/engine/FrameData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBufferImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
