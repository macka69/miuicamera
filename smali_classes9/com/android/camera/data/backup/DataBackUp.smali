.class public interface abstract Lcom/android/camera/data/backup/DataBackUp;
.super Ljava/lang/Object;
.source "DataBackUp.java"


# virtual methods
.method public abstract backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;I)V
.end method

.method public abstract clearBackUp()V
.end method

.method public abstract getBackupRunning(I)Landroidx/collection/SimpleArrayMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract revertOrCreateRunning(Lcom/android/camera/data/data/runing/DataItemRunning;I)V
.end method

.method public abstract startBackup(Lcom/android/camera/data/provider/DataProvider$ProviderEvent;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/data/provider/DataProvider$ProviderEvent;",
            ">(TP;I)V"
        }
    .end annotation
.end method
