.class public interface abstract Lorg/libsdl/app/AudioRecorderInterface;
.super Ljava/lang/Object;
.source "AudioRecorderInterface.java"

# interfaces
.implements Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;


# virtual methods
.method public abstract addPCMData([BI)I
.end method

.method public abstract closeWavFile(Z)I
.end method

.method public abstract initAudioConfig(II)I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public abstract initWavFile(IID)I
.end method

.method public abstract lackPermission()V
.end method

.method public abstract onProcessData([BI)I
.end method

.method public abstract recordStatus(Z)V
.end method
