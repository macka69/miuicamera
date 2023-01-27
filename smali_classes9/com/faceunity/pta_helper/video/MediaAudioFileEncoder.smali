.class public Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;
.super Lcom/faceunity/pta_helper/video/MediaEncoder;
.source "MediaAudioFileEncoder.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/media/MediaExtractor;

.field private c:Ljava/lang/String;

.field private d:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_helper/video/MediaEncoder;-><init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;)V

    iput-object p3, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected drain()V
    .locals 0

    return-void
.end method

.method protected prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    sget-object v2, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTrackCount: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7d000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->d:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v1, v2}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p0}, Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/faceunity/pta_helper/video/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->a:Ljava/lang/String;

    const-string v1, "prepare:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method protected release()V
    .locals 1

    invoke-super {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->release()V

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    invoke-virtual {v2}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter v2

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->isStarted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x64

    :try_start_2
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    sget-object v0, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->a:Ljava/lang/String;

    const-string/jumbo v4, "start wait"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    move v0, v6

    :goto_2
    iget-object v9, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    iget-object v10, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v13

    iget-object v9, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iget-object v11, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    iget-object v11, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->advance()Z

    move-result v11

    if-eqz v11, :cond_5

    if-lez v13, :cond_5

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide/from16 v17, v7

    move v7, v3

    goto :goto_3

    :cond_2
    move-wide/from16 v17, v7

    move v7, v0

    :goto_3
    const-wide/16 v11, 0x3e8

    :try_start_4
    div-long/2addr v9, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v17

    sub-long/2addr v9, v11

    cmp-long v0, v9, v4

    if-lez v0, :cond_3

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_4
    iget-object v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->timeListener:Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v8

    invoke-interface {v0, v8, v9}, Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;->onTime(J)V

    :cond_4
    iget-object v11, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v14

    invoke-virtual/range {v11 .. v16}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    iget-object v8, v1, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->d:Ljava/nio/ByteBuffer;

    iget-object v9, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v0, v8, v9}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v0, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->prevOutputPTSUs:J

    move v0, v7

    move-wide/from16 v7, v17

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/faceunity/pta_helper/video/MediaAudioFileEncoder;->release()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method protected signalEndOfInputStream()V
    .locals 0

    return-void
.end method
