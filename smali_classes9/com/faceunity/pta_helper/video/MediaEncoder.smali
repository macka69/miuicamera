.class public abstract Lcom/faceunity/pta_helper/video/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;,
        Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;
    }
.end annotation


# static fields
.field protected static final TIMEOUT_USEC:I = 0x2710

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field protected curentTime:J

.field protected interval:J

.field protected isEncode:Z

.field protected mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected volatile mIsCapturing:Z

.field protected mIsEOS:Z

.field protected final mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMuxerStarted:Z

.field protected volatile mRequestStop:Z

.field protected mTrackIndex:I

.field protected final mWeakMuxer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected oldTime:J

.field protected prevOutputPTSUs:J

.field protected timeListener:Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/faceunity/pta_helper/video/MediaEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/MediaEncoder;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->prevOutputPTSUs:J

    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->curentTime:J

    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->oldTime:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(Lcom/faceunity/pta_helper/video/MediaEncoder;)V

    iput-object p2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    iget-object p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    new-instance p2, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaExtractorWrapper is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaDecoderListener is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final c()V
    .locals 2

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected drain()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    return-void

    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v5, -0x2

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    invoke-virtual {v1}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->isStarted()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_5

    const-wide/16 v4, 0x64

    :try_start_2
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    monitor-exit v1

    return-void

    :cond_5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "format changed twice"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-ltz v4, :cond_2

    aget-object v5, v0, v4

    if-eqz v5, :cond_b

    iget-object v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_8
    iget-object v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_a

    iget-boolean v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mTrackIndex:I

    iget-object v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v3, v5, v6}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->prevOutputPTSUs:J

    move v3, v2

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "drain:muxer hasn\'t started"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    iget-object v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    iput-boolean v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    return-void

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "encoderOutputBuffer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_c
    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11

    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    if-gtz p2, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_4
    return-void
.end method

.method public frameAvailableSoon()Z
    .locals 3

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->getOutputPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPTSUs()J
    .locals 8

    iget-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->curentTime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->curentTime:J

    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->oldTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    iget-wide v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->prevOutputPTSUs:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    sub-long/2addr v4, v0

    add-long/2addr v0, v4

    :cond_1
    iget-wide v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->oldTime:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    add-long v0, v4, v6

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    iput-wide v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->curentTime:J

    return-wide v0
.end method

.method abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected release()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/faceunity/pta_helper/video/MediaEncoder;->a:Ljava/lang/String;

    const-string v3, "failed releasing MediaCodec"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;->onError(Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/faceunity/pta_helper/video/MediaEncoder;->a:Ljava/lang/String;

    const-string v3, "failed stopping muxer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    :try_start_2
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    invoke-interface {v0, p0}, Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/faceunity/pta_helper/video/MediaEncoder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    sget-object v0, Lcom/faceunity/pta_helper/video/MediaEncoder;->a:Ljava/lang/String;

    const-string v1, "failed onStopped"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    iput v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    iget v3, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    iget v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->b:I

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->drain()V

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->signalEndOfInputStream()V

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->drain()V

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->release()V

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->drain()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iput-boolean v4, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    monitor-exit v2

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->interval:J

    return-void
.end method

.method public setListener(Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->timeListener:Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;

    return-void
.end method

.method protected signalEndOfInputStream()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->isEncode:Z

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/faceunity/pta_helper/video/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method startRecording()V
    .locals 2

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    iget-object p0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
