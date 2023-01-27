.class public Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;
.super Ljava/lang/Object;
.source "SaliencyProcessOutputObject.java"


# instance fields
.field private bufferData:[B

.field private bufferSize:J

.field private height:I

.field public imgFormat:I

.field private imgHeight:I

.field private imgStride:I

.field private imgWidth:I

.field private isSegmentation:I

.field private left:I

.field private rotateAngle:I

.field private top:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->isSegmentation:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgHeight:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgWidth:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgStride:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->rotateAngle:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgFormat:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferSize:J

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->left:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->top:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->width:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->height:I

    return-void
.end method


# virtual methods
.method public getBufferData()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferData:[B

    return-object p0
.end method

.method public getBufferSize()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->height:I

    return p0
.end method

.method public getImgFormat()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgFormat:I

    return p0
.end method

.method public getImgHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgHeight:I

    return p0
.end method

.method public getImgStride()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgStride:I

    return p0
.end method

.method public getImgWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgWidth:I

    return p0
.end method

.method public getIsSegmentation()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->isSegmentation:I

    return p0
.end method

.method public getLeft()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->left:I

    return p0
.end method

.method public getRotateAngle()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->rotateAngle:I

    return p0
.end method

.method public getTop()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->top:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->width:I

    return p0
.end method

.method public setBufferData([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferData:[B

    return-void
.end method

.method public setBufferSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferSize:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->height:I

    return-void
.end method

.method public setImgFormat(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgFormat:I

    return-void
.end method

.method public setImgHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgHeight:I

    return-void
.end method

.method public setImgStride(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgStride:I

    return-void
.end method

.method public setImgWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgWidth:I

    return-void
.end method

.method public setIsSegmentation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->isSegmentation:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->left:I

    return-void
.end method

.method public setRotateAngle(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->rotateAngle:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->top:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaliencyProcessOutputObject{isSegmentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->isSegmentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotateAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->rotateAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->imgFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferData:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->bufferSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
