.class Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;
.super Ljava/lang/Object;
.source "BufferedAudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/BufferedAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecorderRunnable"
.end annotation


# instance fields
.field private speed:D

.field startFeeding:Z

.field final synthetic this$0:Lorg/libsdl/app/BufferedAudioRecorder;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/BufferedAudioRecorder;DZ)V
    .locals 0

    iput-object p1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->speed:D

    iput-boolean p4, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->startFeeding:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "BufferedAudioRecorder"

    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget v2, v1, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    new-array v2, v2, [B

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/libsdl/app/BufferedAudioRecorder;->isStopped:Z

    new-instance v4, Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget-object v5, v1, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioExternalCallback:Lorg/libsdl/app/AudioRecorderInterface;

    invoke-direct {v4, v5, v5}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;-><init>(Lorg/libsdl/app/AudioRecorderInterface;Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;)V

    iput-object v4, v1, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v1, v1, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v1}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->start()V

    iget-boolean v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->startFeeding:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v4, v1, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    iget v1, v1, Lorg/libsdl/app/BufferedAudioRecorder;->sampleRateInHz:I

    iget-wide v5, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->speed:D

    invoke-virtual {v4, v1, v5, v6}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->startFeeding(ID)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v1, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v1, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v1, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v1, v1, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v1, v1, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioExternalCallback:Lorg/libsdl/app/AudioRecorderInterface;

    invoke-interface {v1, v3}, Lorg/libsdl/app/AudioRecorderInterface;->recordStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v6, v3

    :catch_0
    :cond_2
    :goto_1
    iget-object v7, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-boolean v8, v7, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    if-eqz v8, :cond_8

    iget-object v8, v7, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v8, :cond_3

    iget v6, v7, Lorg/libsdl/app/BufferedAudioRecorder;->bufferSizeInBytes:I

    invoke-virtual {v8, v2, v3, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    :cond_3
    const/4 v7, -0x3

    if-eq v7, v6, :cond_7

    if-lez v6, :cond_5

    :try_start_1
    iget-object v7, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-boolean v7, v7, Lorg/libsdl/app/BufferedAudioRecorder;->isRecording:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v7, v7, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioExternalCallback:Lorg/libsdl/app/AudioRecorderInterface;

    invoke-interface {v7, v2, v6}, Lorg/libsdl/app/AudioRecorderInterface;->addPCMData([BI)I

    :cond_4
    iget-object v7, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v7, v7, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v7}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->isProcessing()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-boolean v7, v7, Lorg/libsdl/app/BufferedAudioRecorder;->isStopped:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v7, v7, Lorg/libsdl/app/BufferedAudioRecorder;->mProcessThread:Lcom/ss/android/medialib/audio/AudioDataProcessThread;

    invoke-virtual {v7, v2, v6}, Lcom/ss/android/medialib/audio/AudioDataProcessThread;->feed([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v7, v7, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v7

    if-eq v7, v5, :cond_6

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v1, v1, Lorg/libsdl/app/BufferedAudioRecorder;->mAudioExternalCallback:Lorg/libsdl/app/AudioRecorderInterface;

    invoke-interface {v1, v3}, Lorg/libsdl/app/AudioRecorderInterface;->recordStatus(Z)V

    move v1, v4

    :cond_6
    const-wide/16 v7, 0x32

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad audio buffer len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void

    :catch_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v2, v2, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    iget-object v2, v2, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_9
    iget-object p0, p0, Lorg/libsdl/app/BufferedAudioRecorder$AudioRecorderRunnable;->this$0:Lorg/libsdl/app/BufferedAudioRecorder;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/libsdl/app/BufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio recording failed!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
