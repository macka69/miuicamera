.class public Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;
.super Ljava/lang/Object;
.source "MimojiDumpUtil.java"


# static fields
.field public static final DUMP_MIMOJI_CREATE:Z

.field public static final DUMP_MIMOJI_FPS:Z

.field public static final DUMP_MIMOJI_PERFORMANCE:Z

.field private static final NANO_IN_ONE_MILLI_SECOND:I = 0xf4240

.field public static final STATE_END:I = 0x1

.field public static final STATE_START:I = 0x0

.field public static final SUPPORT_MIMOJI_VERSION_TEST:I

.field public static final TAG:Ljava/lang/String; = "MimojiDumpUtil"

.field private static instance:Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;


# instance fields
.field private mLastFrameTimeStamp:J

.field private mTempType:I

.field private mTimeCreateAvatar:J

.field private mTimeRecordVideo:J

.field private mTimeShotToGallery:J

.field private mTimeShotToShot:J

.field private mTimeShotToView:J

.field private mTimeSwitchAvatar:J

.field private mTimeTakePicture:J

.field private mTimeThumbnail:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "camera.support.mimoji.version"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->SUPPORT_MIMOJI_VERSION_TEST:I

    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "camera.debug.mimoji.performance"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_PERFORMANCE:Z

    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "camera.debug.mimoji.create"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_CREATE:Z

    const-string v0, "camera.debug.mimoji.fps"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_FPS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mLastFrameTimeStamp:J

    return-void
.end method

.method private checkFpsDumpEnable()Z
    .locals 0

    sget-boolean p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_FPS:Z

    return p0
.end method

.method private checkPerformanceDumpEnable()Z
    .locals 0

    sget-boolean p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_PERFORMANCE:Z

    return p0
.end method

.method public static final getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->instance:Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->instance:Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->instance:Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    return-object v0
.end method


# virtual methods
.method public dumpAvatarThumbnail(II)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkPerformanceDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeThumbnail:J

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeThumbnail:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeThumbnail:J

    sub-long/2addr v0, v4

    if-nez p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " edit "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " emoticon "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object p2, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Thumbnail , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  ms "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeThumbnail:J

    :cond_3
    return-void
.end method

.method public dumpAvatarThumbnail(JI)V
    .locals 5

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeThumbnail:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-string v2, "  ms "

    if-nez p3, :cond_0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v3, 0x7d0

    cmp-long p3, v0, v3

    if-gez p3, :cond_1

    sget-object p3, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Thumbnail , edit  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeThumbnail:J

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v3, 0x1f40

    cmp-long p3, v0, v3

    if-gez p3, :cond_1

    sget-object p3, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Thumbnail , emoticon\uff08all\uff09  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeThumbnail:J

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeThumbnail:J

    return-void
.end method

.method public dumpCreateAvatar(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkPerformanceDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeCreateAvatar:J

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeCreateAvatar:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeCreateAvatar:J

    sub-long/2addr v0, v4

    sget-object p1, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CreateAvatar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  ms "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeCreateAvatar:J

    :cond_2
    return-void
.end method

.method public dumpCreateFile(Landroid/graphics/Bitmap;[BI)V
    .locals 4

    sget-boolean p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->DUMP_MIMOJI_CREATE:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/FaceUnity/Bin_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".bin"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->bytesToFile([BLjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/FaceUnity/Jpg_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->saveJPEGFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public dumpFps()D
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkFpsDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x4e6e6b28    # 1.0E9f

    iget-wide v3, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mLastFrameTimeStamp:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mLastFrameTimeStamp:J

    sget-object p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " fps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method public dumpRecordVideo(II)V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkPerformanceDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeRecordVideo:J

    iput p2, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTempType:I

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-wide v1, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeRecordVideo:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeRecordVideo:J

    sub-long/2addr v1, v5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    iget p2, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTempType:I

    :cond_2
    if-eq p2, v0, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const-string p1, " edit "

    goto :goto_0

    :cond_3
    const-string p1, " emoticon (gif+picture) "

    goto :goto_0

    :cond_4
    const-string p1, " emoticon (gif) "

    goto :goto_0

    :cond_5
    const-string p1, " gif "

    :goto_0
    sget-object p2, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " RecordVideo , "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  ms "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v3, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeRecordVideo:J

    :cond_6
    return-void
.end method

.method public dumpShotToGalleryTime(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkPerformanceDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToGallery:J

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToGallery:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToGallery:J

    sub-long/2addr v0, v4

    sget-object p1, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ShotToViewGallery : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  ms "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToGallery:J

    :cond_2
    return-void
.end method

.method public dumpShotToShotTime(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkPerformanceDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToShot:J

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToShot:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToShot:J

    sub-long/2addr v0, v4

    sget-object p1, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ShotToShotTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  ms "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToShot:J

    :cond_2
    return-void
.end method

.method public dumpShotToViewTime(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkPerformanceDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToView:J

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToView:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToView:J

    sub-long/2addr v0, v4

    sget-object p1, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ShotToViewTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  ms "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeShotToView:J

    :cond_2
    return-void
.end method

.method public dumpSwitchAvatar(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpSwitchAvatar(II)V

    return-void
.end method

.method public dumpSwitchAvatar(II)V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkPerformanceDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeSwitchAvatar:J

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-wide v1, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeSwitchAvatar:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeSwitchAvatar:J

    sub-long/2addr v1, v5

    const-string/jumbo p1, "stateUpdate "

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const-string p1, "  time "

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | TemplatePath+ConfigPath "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | ConfigPath "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " | TemplatePath "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object p2, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SwitchAvatar , "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  ms "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v3, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeSwitchAvatar:J

    :cond_5
    return-void
.end method

.method public dumpTakePicture(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->checkPerformanceDumpEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeTakePicture:J

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeTakePicture:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeTakePicture:J

    sub-long/2addr v0, v4

    sget-object p1, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " TakePicture : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  ms "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->mTimeTakePicture:J

    :cond_2
    return-void
.end method
