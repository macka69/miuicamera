.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;
.super Ljava/lang/Object;
.source "GifUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GifUtil"


# instance fields
.field private mGifEncoderWrapper:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

.field private mGifFileName:Ljava/lang/String;

.field private mOutFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGifFileName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifFileName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifFileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sendRecordingData(I[F)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifEncoderWrapper:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, v0, p2}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->encodeFrame(I[F[F)V

    :cond_0
    return-void
.end method

.method public startRecording(DLcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->stopRecording()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIF_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".gif"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecording\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji_gifutil"

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mOutFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mOutFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mOutFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifEncoderWrapper:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->setFps(D)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifEncoderWrapper:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-virtual {p0, p3}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->setListener(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;)V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifEncoderWrapper:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/GifUtil;->mGifEncoderWrapper:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    :cond_0
    return-void
.end method
