.class public Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;
.super Ljava/lang/Object;
.source "BaseNetResponse.java"


# instance fields
.field private message:Ljava/lang/String;

.field private status_code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus_code()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;->status_code:I

    return p0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus_code(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;->status_code:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseNetResponse{status_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;->status_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
