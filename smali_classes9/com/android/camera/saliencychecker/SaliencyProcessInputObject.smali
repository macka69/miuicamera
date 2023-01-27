.class public Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;
.super Ljava/lang/Object;
.source "SaliencyProcessInputObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/saliencychecker/SaliencyProcessInputObject$ImageFormat;
    }
.end annotation


# static fields
.field public static final NV12:I = 0x3

.field public static final NV21:I = 0x2

.field public static final RGB:I = 0x0

.field public static final RGBA:I = 0x1


# instance fields
.field private algoHandle:J

.field private bufferData:[B

.field private bufferSize:J

.field private height:I

.field private imgFormat:I

.field private imgHeight:I

.field private imgStride:I

.field private imgWidth:I

.field private left:I

.field private orientation:I

.field private rotateAngle:I

.field private top:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->algoHandle:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgHeight:I

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgWidth:I

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgStride:I

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->orientation:I

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->rotateAngle:I

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgFormat:I

    iput-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->bufferSize:J

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->left:I

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->top:I

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->width:I

    iput v2, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->height:I

    return-void
.end method


# virtual methods
.method public getAlgoHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->algoHandle:J

    return-wide v0
.end method

.method public getBufferData()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->bufferData:[B

    return-object p0
.end method

.method public getBufferSize()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->bufferSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->height:I

    return p0
.end method

.method public getImgFormat()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgFormat:I

    return p0
.end method

.method public getImgHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgHeight:I

    return p0
.end method

.method public getImgStride()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgStride:I

    return p0
.end method

.method public getImgWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgWidth:I

    return p0
.end method

.method public getLeft()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->left:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->orientation:I

    return p0
.end method

.method public getRotateAngle()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->rotateAngle:I

    return p0
.end method

.method public getTop()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->top:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->width:I

    return p0
.end method

.method public setAlgoHandle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->algoHandle:J

    return-void
.end method

.method public setBufferData([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->bufferData:[B

    return-void
.end method

.method public setBufferSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->bufferSize:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->height:I

    return-void
.end method

.method public setImgFormat(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgFormat:I

    return-void
.end method

.method public setImgHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgHeight:I

    return-void
.end method

.method public setImgStride(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgStride:I

    return-void
.end method

.method public setImgWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgWidth:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->left:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->orientation:I

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->rotateAngle:I

    return-void
.end method

.method public setRotateAngle(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->rotateAngle:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->top:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaliencyProcessInputObject{algoHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->algoHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", imgHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotateAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->rotateAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->imgFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->bufferData:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->bufferSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
