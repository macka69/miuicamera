.class public interface abstract Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;
.super Ljava/lang/Object;
.source "VoiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/record/VoiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordListener"
.end annotation


# virtual methods
.method public abstract onAudioSessionId(I)V
.end method

.method public abstract onRecordCreateError()V
.end method

.method public abstract onRecordRelease()V
.end method

.method public abstract onRecording([BI)V
.end method

.method public abstract onRecordingEnd()V
.end method

.method public abstract onRecordingFailed()V
.end method

.method public abstract onRecordingStart()V
.end method
