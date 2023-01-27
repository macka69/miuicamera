.class final Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;
.super Ljava/lang/Thread;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/pta_helper/video/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;


# direct methods
.method private constructor <init>(Lcom/faceunity/pta_helper/video/MediaAudioEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/faceunity/pta_helper/video/MediaAudioEncoder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;-><init>(Lcom/faceunity/pta_helper/video/MediaAudioEncoder;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14
    .annotation build Lcom/faceunity/pta_helper/NotProguard;
    .end annotation

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x6400

    const/16 v2, 0x400

    const/4 v3, 0x1

    if-ge v1, v0, :cond_0

    div-int/2addr v0, v2

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v1, v0, 0x1

    :cond_0
    invoke-static {}, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->a()[I

    move-result-object v0

    array-length v10, v0

    const/4 v4, 0x0

    const/4 v11, 0x0

    move v12, v4

    move-object v4, v11

    :goto_0
    if-ge v12, v10, :cond_2

    aget v5, v0, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v13, Landroid/media/AudioRecord;

    const v6, 0xac44

    const/16 v7, 0x10

    const/4 v8, 0x2

    move-object v4, v13

    move v9, v1

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v4, v3, :cond_1

    move-object v13, v11

    :cond_1
    move-object v4, v13

    goto :goto_1

    :catch_0
    move-object v4, v11

    :goto_1
    if-nez v4, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_6

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mRequestStop:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/faceunity/pta_helper/video/MediaEncoder;->mIsEOS:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v4, v0, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    iget-object v3, v3, Lcom/faceunity/pta_helper/video/MediaEncoder;->timeListener:Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    iget-object v3, v3, Lcom/faceunity/pta_helper/video/MediaEncoder;->timeListener:Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;

    iget-object v5, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    invoke-virtual {v5}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Lcom/faceunity/pta_helper/video/MediaEncoder$TimeListener;->onTime(J)V

    :cond_4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    iget-object v5, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    invoke-virtual {v5}, Lcom/faceunity/pta_helper/video/MediaEncoder;->getPTSUs()J

    move-result-wide v5

    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/faceunity/pta_helper/video/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    invoke-virtual {v1}, Lcom/faceunity/pta_helper/video/MediaEncoder;->frameAvailableSoon()Z

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;->a:Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->frameAvailableSoon()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    throw p0

    :cond_7
    invoke-static {}, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to initialize AudioRecord"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioThread#run"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
