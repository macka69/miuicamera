.class public interface abstract Lcom/xiaomi/idm/transfile/IDMTransFile$IDMTransFileCallback;
.super Ljava/lang/Object;
.source "IDMTransFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/transfile/IDMTransFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDMTransFileCallback"
.end annotation


# virtual methods
.method public abstract onDataRec([BJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onDataSendProgress(Ljava/lang/String;JI)V
.end method

.method public abstract onEndDataRec(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onEndDataSend(Ljava/lang/String;I)V
.end method

.method public abstract onEndRecEvent(I)V
.end method

.method public abstract onEndSendEvent(I)V
.end method

.method public abstract onStartDataRec(Ljava/lang/String;JI)V
.end method

.method public abstract onStartDataSend(Ljava/lang/String;JI)V
.end method

.method public abstract onStartRecEvent(Ljava/lang/String;Ljava/util/List;JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;",
            ">;JI)V"
        }
    .end annotation
.end method

.method public abstract onStartSendEvent(Ljava/lang/String;Ljava/util/List;JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;",
            ">;JI)V"
        }
    .end annotation
.end method

.method public abstract onStatusCallback(ILjava/lang/String;)V
.end method
