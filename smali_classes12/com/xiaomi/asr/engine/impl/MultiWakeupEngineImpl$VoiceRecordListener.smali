.class Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;
.super Ljava/lang/Object;
.source "MultiWakeupEngineImpl.java"

# interfaces
.implements Lcom/xiaomi/asr/engine/record/VoiceRecord$RecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceRecordListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public onRecordCreateError()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$402(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordRelease()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onStopAudio()V

    :cond_0
    return-void
.end method

.method public onRecording([BI)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$1400(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRecordingEnd()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->closeFile()V

    :cond_0
    return-void
.end method

.method public onRecordingFailed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$402(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;Z)Z

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/asr/engine/WVPListener;->onConflictAudio()V

    :cond_0
    return-void
.end method

.method public onRecordingStart()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$300(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/WVPListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/asr/engine/WVPListener;->onStartAudio()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$700(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl$VoiceRecordListener;->this$0:Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;

    invoke-static {p0}, Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;->access$800(Lcom/xiaomi/asr/engine/impl/MultiWakeupEngineImpl;)Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;

    move-result-object p0

    const-string v0, "record"

    invoke-virtual {p0, v0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->createFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
