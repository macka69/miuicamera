.class public Lcom/android/camera/fragment/music/MusicCut;
.super Ljava/lang/Object;
.source "MusicCut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCut"


# instance fields
.field private SAMPLE_SIZE:I

.field private mBitRate:I

.field private mLoopNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x19000

    iput v0, p0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    return-void
.end method

.method private addADTStoPacket([BI)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, -0x1

    aput-byte v0, p1, p0

    const/4 p0, 0x1

    const/4 v0, -0x7

    aput-byte v0, p1, p0

    const/16 p0, 0x50

    int-to-byte p0, p0

    const/4 v0, 0x2

    aput-byte p0, p1, v0

    shr-int/lit8 p0, p2, 0xb

    const/16 v0, 0x80

    add-int/2addr v0, p0

    int-to-byte p0, v0

    const/4 v0, 0x3

    aput-byte p0, p1, v0

    and-int/lit16 p0, p2, 0x7ff

    shr-int/2addr p0, v0

    int-to-byte p0, p0

    const/4 v0, 0x4

    aput-byte p0, p1, v0

    and-int/lit8 p0, p2, 0x7

    const/4 p2, 0x5

    shl-int/2addr p0, p2

    add-int/lit8 p0, p0, 0x1f

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    const/4 p0, 0x6

    const/4 p2, -0x4

    aput-byte p2, p1, p0

    return-void
.end method

.method private convertKbpsToBpm(I)J
    .locals 2

    int-to-long p0, p1

    const-wide/16 v0, 0x400

    mul-long/2addr p0, v0

    const-wide/16 v0, 0x8

    div-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private getAudioTrack(Landroid/media/MediaExtractor;)I
    .locals 2

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public clipMp3(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Music cut failed"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".aac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/android/camera/fragment/music/MusicCut;->getAudioTrack(Landroid/media/MediaExtractor;)I

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v1, :cond_0

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    return v5

    :cond_0
    :try_start_2
    invoke-virtual {v6, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget v1, v0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v9, p2

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lcom/android/camera/fragment/music/MusicCut;->SAMPLE_SIZE:I

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v8, 0x3e8

    mul-long v10, p3, v8

    mul-long v8, v8, p5

    move v4, v5

    :goto_0
    :try_start_3
    iget v12, v0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    if-ge v4, v12, :cond_6

    invoke-virtual {v6, v10, v11, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_1
    invoke-virtual {v6, v1, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-lez v14, :cond_1

    goto :goto_2

    :cond_1
    if-gtz v12, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    move v14, v5

    :goto_3
    if-eqz v14, :cond_4

    const/4 v15, 0x7

    goto :goto_4

    :cond_4
    move v15, v5

    :goto_4
    add-int v5, v12, v15

    new-array v13, v5, [B

    if-eqz v14, :cond_5

    invoke-direct {v0, v13, v5}, Lcom/android/camera/fragment/music/MusicCut;->addADTStoPacket([BI)V

    :cond_5
    invoke-virtual {v1, v13, v15, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v7, v4

    :goto_5
    move-object v4, v6

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v7, v4

    :goto_6
    move-object v4, v6

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v7, v4

    :goto_7
    :try_start_5
    sget-object v1, Lcom/android/camera/fragment/music/MusicCut;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_7
    if-eqz v7, :cond_8

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    const/4 v1, 0x0

    return v1

    :catchall_3
    move-exception v0

    :goto_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_9
    if-eqz v7, :cond_a

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_a
    throw v0
.end method

.method public getLoopNum()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    return p0
.end method

.method public setLoopNum(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/music/MusicCut;->mLoopNum:I

    return-void
.end method
