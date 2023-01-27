.class public Lcom/android/camera/module/encoder/LiveMediaRecorder;
.super Ljava/lang/Object;
.source "LiveMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;,
        Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;
    }
.end annotation


# static fields
.field public static final ERR_INIT_RECORD:I = 0x1

.field public static final ERR_INVALID_ARGS:I = 0x0

.field public static final ERR_START_RECORD:I = 0x2

.field public static final START_OFFSET_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "LiveMediaRecorder"


# instance fields
.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mEnableAudio:Z

.field private mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field private mMediaAudioEncoder:Lcom/android/camera/module/encoder/MediaAudioEncoder;

.field private mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

.field private mMimeType:Ljava/lang/String;

.field private mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field private mOrientationCompensation:I

.field private mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

.field private mVideoSize:Lcom/android/camera/CameraSize;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cleanupEmptyFile()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no video file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z

    :goto_0
    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete empty video file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method private releaseLastMediaRecorder()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseLastMediaRecorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    :cond_1
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->cleanupEmptyFile()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected deleteVideoFile(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete invalid video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;)Z
    .locals 8

    const-string/jumbo v4, "video/avc"

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZF)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/ContentValues;ILandroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;ZF)Z
    .locals 14

    move-object v1, p0

    move-object v0, p1

    move/from16 v2, p2

    move-object/from16 v10, p5

    move/from16 v11, p7

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    move-object/from16 v5, p4

    iput-object v5, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMimeType:Ljava/lang/String;

    iput v2, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mOrientationCompensation:I

    iput-object v10, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    move/from16 v3, p6

    iput-boolean v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mEnableAudio:Z

    const-string v3, "_data"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/Util;->getResolution(Landroid/content/ContentValues;)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    const/4 v12, 0x0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v12}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onError(I)V

    :cond_0
    return v12

    :cond_1
    const/4 v13, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseLastMediaRecorder()V

    new-instance v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    new-instance v0, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    iget-object v6, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v8, v3, Lcom/android/camera/CameraSize;->width:I

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v9, v3, Lcom/android/camera/CameraSize;->height:I

    move-object v3, v0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/module/encoder/MediaVideoEncoder;-><init>(Landroid/opengl/EGLContext;Ljava/lang/String;Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;II)V

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    invoke-virtual {v0, v11}, Lcom/android/camera/module/encoder/MediaEncoder;->setRecordSpeed(F)V

    iget-boolean v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mEnableAudio:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v3, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-direct {v0, v3, v10}, Lcom/android/camera/module/encoder/MediaAudioEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V

    iput-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaAudioEncoder:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v0, v11}, Lcom/android/camera/module/encoder/MediaEncoder;->setRecordSpeed(F)V

    :cond_2
    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->prepare()V

    sget-object v0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget v2, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mOrientationCompensation:I

    invoke-virtual {v0, v2}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v13

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/module/encoder/LiveMediaRecorder;->TAG:Ljava/lang/String;

    const-string v3, "initializeRecorder: "

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, v13}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onError(I)V

    :cond_3
    return v12
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawAttribute;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/encoder/MediaVideoEncoder;->frameAvailableSoon(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMediaVideoEncoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1, p1, v2}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mDrawExtTexAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/encoder/MediaVideoEncoder;->frameAvailableSoon(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseMediaRecorder()V

    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseLastMediaRecorder()V

    return-void
.end method

.method public startRecorder(J)Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1c2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->startRecording(J)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {p2}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    iget-object p2, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onError(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseMediaRecorder()V

    :cond_2
    return p1
.end method

.method public stopRecorder(JZ)Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->onStop()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->releaseMediaRecorder()V

    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    const/4 p2, 0x1

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/encoder/LiveMediaRecorder;->deleteVideoFile(Ljava/lang/String;)V

    move p1, p2

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mRecorderListener:Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/module/encoder/LiveMediaRecorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-interface {p1, p3, p0}, Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;->save(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_5
    return p2
.end method
