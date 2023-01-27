.class public Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;
.super Ljava/lang/Object;
.source "TEBufferedAudioRecorder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEBufferedAudioRecorder"

.field protected static channelConfigOffset:I = 0x0

.field protected static channelConfigSuggested:[I = null

.field protected static sampleRateOffset:I = -0x1

.field protected static sampleRateSuggested:[I


# instance fields
.field audio:Landroid/media/AudioRecord;

.field audioCaller:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

.field audioFormat:I

.field bufferSizeInBytes:I

.field channelConfig:I

.field isRecording:Z

.field sampleRateInHz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateSuggested:[I

    const/4 v0, -0x1

    sput v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigOffset:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigSuggested:[I

    return-void

    :array_0
    .array-data 4
        0xac44
        0x1f40
        0x2b11
        0x3e80
        0x5622
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x10
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/ss/android/ttve/audio/TEAudioWriterInterface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    iput v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfig:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioFormat:I

    iput-boolean v1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->isRecording:Z

    iput-object p1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioCaller:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSampleRateInHz()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    return p0
.end method

.method public init(I)V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, " "

    iget-object v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const-string v3, "TEBufferedAudioRecorder"

    if-eqz v0, :cond_0

    const-string v0, "second time audio init(), skip"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, -0x1

    :try_start_0
    sget v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigOffset:I

    if-eq v0, v4, :cond_1

    sget v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    if-eq v0, v4, :cond_1

    sget-object v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigSuggested:[I

    sget v5, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigOffset:I

    aget v0, v0, v5

    iput v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfig:I

    sget-object v5, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateSuggested:[I

    sget v6, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    aget v5, v5, v6

    iput v5, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    iget v6, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioFormat:I

    invoke-static {v5, v0, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    new-instance v0, Landroid/media/AudioRecord;

    iget v7, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    iget v8, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfig:I

    iget v9, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioFormat:I

    iget v10, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    move-object v5, v0

    move/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4f7f\u7528\u9884\u8bbe\u914d\u7f6e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u5b9e\u4f8b\u5316audio recorder\u5931\u8d25\uff0c\u91cd\u65b0\u6d4b\u8bd5\u914d\u7f6e\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-nez v0, :cond_5

    sput v4, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigOffset:I

    sget-object v5, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigSuggested:[I

    array-length v6, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v6, :cond_5

    aget v0, v5, v8

    iput v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfig:I

    sget v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigOffset:I

    const/4 v10, 0x1

    add-int/2addr v0, v10

    sput v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfigOffset:I

    sput v4, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    sget-object v11, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateSuggested:[I

    array-length v12, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_3

    aget v14, v11, v13

    sget v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    add-int/2addr v0, v10

    sput v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    :try_start_1
    iget v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfig:I

    iget v15, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioFormat:I

    invoke-static {v14, v0, v15}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u8bd5\u7528hz "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfig:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioFormat:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    if-lez v0, :cond_2

    iput v14, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    new-instance v0, Landroid/media/AudioRecord;

    iget v15, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    iget v4, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->channelConfig:I

    iget v7, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioFormat:I

    iget v10, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    move/from16 v17, v15

    move-object v15, v0

    move/from16 v16, p1

    move/from16 v18, v4

    move/from16 v19, v7

    move/from16 v20, v10

    invoke-direct/range {v15 .. v20}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_4

    :cond_2
    sget v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    sput v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    iput v4, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apply audio record sample rate "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " failed: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    sput v0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateOffset:I

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move v10, v7

    const/4 v4, -0x1

    goto/16 :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-eqz v9, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/4 v4, -0x1

    goto/16 :goto_1

    :cond_5
    :goto_5
    iget v0, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    if-gtz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!Init audio recorder failed, hz "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init audio recorder succeed, apply audio record sample rate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " buffer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->bufferSizeInBytes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startRecording(Ljava/lang/String;DII)V
    .locals 9

    const-string v0, "TEBufferedAudioRecorder"

    const-string v1, "audio startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->isRecording:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->isRecording:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioCaller:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    iget v3, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->sampleRateInHz:I

    const/4 v4, 0x2

    move-object v2, p1

    move-wide v5, p2

    move v7, p4

    move v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/ss/android/ttve/audio/TEAudioWriterInterface;->initWavFile(Ljava/lang/String;IIDII)I

    move-result p1

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init wav file failed, ret = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TEBufferedAudioRecorder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;

    invoke-direct {p2, p0}, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder$1;-><init>(Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopRecording()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->isRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->isRecording:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_1
    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioCaller:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    invoke-interface {p0}, Lcom/ss/android/ttve/audio/TEAudioWriterInterface;->closeWavFile()I

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "TEBufferedAudioRecorder"

    const-string v2, "\u672a\u542f\u52a8\u97f3\u9891\u6a21\u5757\u4f46\u8c03\u7528stopRecording"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unInit()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audio:Landroid/media/AudioRecord;

    :cond_1
    iget-object p0, p0, Lcom/ss/android/ttve/audio/TEBufferedAudioRecorder;->audioCaller:Lcom/ss/android/ttve/audio/TEAudioWriterInterface;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/ss/android/ttve/audio/TEAudioWriterInterface;->destroy()V

    :cond_2
    return-void
.end method
