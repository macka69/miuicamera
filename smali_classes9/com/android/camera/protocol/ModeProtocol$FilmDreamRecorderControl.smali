.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$FilmDreamRecorderControl;
.super Ljava/lang/Object;
.source "ModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilmDreamRecorderControl"
.end annotation


# virtual methods
.method public abstract canFinishRecording()Z
.end method

.method public abstract canRecordingStop()Z
.end method

.method public abstract isInited()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract startRecording()V
.end method

.method public abstract stopPlayWhenSave()V
.end method

.method public abstract stopRecording()V
.end method
