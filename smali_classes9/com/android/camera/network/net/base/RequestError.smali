.class public Lcom/android/camera/network/net/base/RequestError;
.super Ljava/lang/Object;
.source "RequestError.java"


# instance fields
.field private mErrorCode:Lcom/android/camera/network/net/base/ErrorCode;

.field private mResponseData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/network/net/base/RequestError;->mErrorCode:Lcom/android/camera/network/net/base/ErrorCode;

    iput-object p3, p0, Lcom/android/camera/network/net/base/RequestError;->mResponseData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/android/camera/network/net/base/ErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/net/base/RequestError;->mErrorCode:Lcom/android/camera/network/net/base/ErrorCode;

    return-object p0
.end method

.method public getResponseData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/net/base/RequestError;->mResponseData:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/network/net/base/RequestError;->mErrorCode:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
