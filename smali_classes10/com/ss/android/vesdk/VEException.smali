.class public Lcom/ss/android/vesdk/VEException;
.super Ljava/lang/RuntimeException;
.source "VEException.java"


# instance fields
.field private msgDes:Ljava/lang/String;

.field private ret:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VESDK exception ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/ss/android/vesdk/VEException;->ret:I

    iput-object p2, p0, Lcom/ss/android/vesdk/VEException;->msgDes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsgDes()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VEException;->msgDes:Ljava/lang/String;

    return-object p0
.end method

.method public getRetCd()I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/VEException;->ret:I

    return p0
.end method
