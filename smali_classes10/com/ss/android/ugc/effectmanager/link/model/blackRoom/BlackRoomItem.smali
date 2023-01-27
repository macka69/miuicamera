.class public abstract Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;
.super Ljava/lang/Object;
.source "BlackRoomItem.java"


# instance fields
.field protected inBlackRoom:Z

.field protected lockedCount:I

.field protected startLockTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->lockedCount:I

    return-void
.end method


# virtual methods
.method public abstract getItemName()Ljava/lang/String;
.end method

.method public getLockedCount()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->lockedCount:I

    return p0
.end method

.method public isInBlackRoom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->inBlackRoom:Z

    return p0
.end method

.method public lockToBlackRoom()Z
    .locals 3

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->isInBlackRoom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->inBlackRoom:Z

    iget v1, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->lockedCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->lockedCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->startLockTime:J

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resetStatus()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->inBlackRoom:Z

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->lockedCount:I

    return-void
.end method

.method public startLockTime()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->startLockTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlackRoomItem{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lockedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->lockedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inBlackRoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->inBlackRoom:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlockFromBlackRoom()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->inBlackRoom:Z

    return-void
.end method
