.class public Lcom/faceunity/pta_helper/video/MediaAudioEncoder;
.super Lcom/faceunity/pta_helper/video/MediaEncoder;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;
    }
.end annotation


# static fields
.field public static final FRAMES_PER_BUFFER:I = 0x19

.field public static final SAMPLES_PER_FRAME:I = 0x400

.field private static final a:Ljava/lang/String;

.field private static final c:[I


# instance fields
.field private b:Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->a:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x5
        0x7
        0x6
    .end array-data
.end method

.method public constructor <init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/faceunity/pta_helper/video/MediaEncoder;-><init>(Lcom/faceunity/pta_helper/video/MediaMuxerWrapper;Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->b:Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;

    return-void
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->c:[I

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected prepare()V
    .locals 9
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

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x0

    const-string v4, "audio/mp4a-latm"

    if-ge v2, v1, :cond_2

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v7, v0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_1

    aget-object v8, v6, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_3

    sget-object p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->a:Ljava/lang/String;

    const-string v0, "Unable to find an appropriate codec for audio/mp4a-latm"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const v0, 0xac44

    const/4 v1, 0x1

    invoke-static {v4, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const/4 v2, 0x2

    const-string v5, "aac-profile"

    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x10

    const-string v5, "channel-mask"

    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v2, 0xfa00

    const-string v5, "bitrate"

    invoke-virtual {v0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "channel-count"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaEncoder;->mListener:Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0, p0}, Lcom/faceunity/pta_helper/video/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/faceunity/pta_helper/video/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->a:Ljava/lang/String;

    const-string v1, "prepare:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method

.method protected release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->b:Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;

    invoke-super {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->release()V

    return-void
.end method

.method protected startRecording()V
    .locals 2

    invoke-super {p0}, Lcom/faceunity/pta_helper/video/MediaEncoder;->startRecording()V

    iget-object v0, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->b:Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;-><init>(Lcom/faceunity/pta_helper/video/MediaAudioEncoder;B)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/MediaAudioEncoder;->b:Lcom/faceunity/pta_helper/video/MediaAudioEncoder$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
