.class public Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;
    }
.end annotation


# static fields
.field private static final IFRAME_INTERVAL:I = 0x2

.field private static TAG:Ljava/lang/String; = "videoencoder"


# instance fields
.field private VIDEO_MIME_TYPE:Ljava/lang/String;

.field private audioFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;",
            ">;"
        }
    .end annotation
.end field

.field private encoderCallback:Landroid/media/MediaCodec$Callback;

.field private mAsync:Z

.field private mAudioTrackIndex:I

.field private mBitrate:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCallBack:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;

.field private mDump:Z

.field private mDumpPath:Ljava/lang/String;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderFrames:J

.field private mFps:I

.field private mHeight:I

.field private mInputSurface:Landroid/view/Surface;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mNum:I

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mPath:Ljava/lang/String;

.field private mRotation:I

.field private mTrackIndex:I

.field private mWidth:I

.field private videoFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAudioTrackIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBitrate:I

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mRotation:I

    const-string v1, "video/avc"

    iput-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoderFrames:J

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mNum:I

    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mDump:Z

    const-string v0, "/sdcard/voip-data/dump.h264"

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mDumpPath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAsync:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->audioFrames:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->videoFrames:Ljava/util/Queue;

    const-string v0, "hevc"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video/hevc"

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " video encoder setup with width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitrate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " codecName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iput-object p8, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mCallBack:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;

    iput p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mWidth:I

    iput p2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mHeight:I

    iput p3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mFps:I

    iput-object p6, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mPath:Ljava/lang/String;

    iput p4, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBitrate:I

    iput p5, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mRotation:I

    iget-boolean p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mDump:Z

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mDumpPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " found exception at dump "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance p1, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$1;-><init>(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)V

    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->encoderCallback:Landroid/media/MediaCodec$Callback;

    invoke-direct {p0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->setupEncoder()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mCallBack:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoderFrames:J

    return-wide v0
.end method

.method static synthetic access$208(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)J
    .locals 4

    iget-wide v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoderFrames:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoderFrames:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)Landroid/media/MediaMuxer;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->videoFrames:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mDump:Z

    return p0
.end method

.method static synthetic access$800(Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;)Ljava/io/FileOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mOutputStream:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method private setupEncoder()V
    .locals 5

    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAsync:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlUtil.mPictureRotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mPictureRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mWidth:I

    iget v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mFps:I

    const v2, 0x7f000789

    const-string v3, "color-format"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBitrate:I

    const/4 v3, 0x2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mWidth:I

    iget v4, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mHeight:I

    mul-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x4

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBitrate:I

    :cond_1
    iget v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBitrate:I

    const-string v4, "bitrate"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "capture-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v2, 0xf4240

    div-int/2addr v2, v1

    const-string v4, "repeat-previous-frame-after"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " video encoder setup with mwidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mheight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBitrate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBitrate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frameRate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " codecName "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " set video encoder format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->VIDEO_MIME_TYPE:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAsync:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->encoderCallback:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create encoder and start path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mRotation:I

    invoke-virtual {v0, v2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    sget-object v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->location:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v2, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->location:[F

    aget v2, v2, v3

    sget-object v3, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->location:[F

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find exception at set up encoder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mCallBack:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;

    invoke-interface {v0, v1}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;->onVideoEncoderError(I)V

    invoke-virtual {p0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->release()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addMediaTrack(Landroid/media/MediaFormat;)V
    .locals 4

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAudioTrackIndex:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    :goto_0
    iget p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAudioTrackIndex:I

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    :cond_1
    iget-boolean p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->audioFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const-string v0, " time:"

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->audioFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track audio info.size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAudioTrackIndex:I

    iget-object v2, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->audioFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->videoFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->videoFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track video info.size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    iget-object v3, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v3, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->videoFrames:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public drainEncoder(Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAsync:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "sending EOS to encoder"

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, "MediaCodec.INFO_TRY_AGAIN_LATER"

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v0, "no output available, spinning to await EOS"

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_5

    const-string v0, "MediaCodec.INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoder output format changed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "format changed twice"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-gez v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    const-string v3, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v3}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_7
    iget-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v7, 0x4

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    if-eqz v6, :cond_8

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v3

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    iget-object v8, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v6, v1, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes to muxer, ts="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTrackIndex "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mTrackIndex:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNum "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mNum:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mNum:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mNum:I

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "muxer hasn\'t started"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drainEncoder mBufferInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mCallBack:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encode EOF mEncoderNums "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoderFrames:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mCallBack:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;

    invoke-interface {p0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;->onVideoEncoderEOF()V

    :cond_a
    if-nez p1, :cond_b

    const-string p0, "reached end of stream unexpectedly"

    invoke-static {p0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogW(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string p0, "end of stream reached"

    invoke-static {p0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoderOutputBuffer "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAsync:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    :cond_1
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public release()V
    .locals 2

    const-string v0, "releasing encoder objects"

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    const-string v0, "to stop muxter"

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    const-string v0, "to release muxter"

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mCallBack:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mCallBack:Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;

    invoke-interface {v0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;->onVideoEncoderEOF()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iput-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    :cond_2
    return-void
.end method

.method public stopEncoder()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopEncoder mAsync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAsync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAsync:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public writeAudioSample(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxerStarted:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->audioFrames:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add audio info.size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget p0, p0, Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;->mAudioTrackIndex:I

    iget-object v1, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, p0, v1, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method
