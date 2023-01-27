.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;
.super Ljava/lang/Object;
.source "FPSUtil.java"


# static fields
.field private static final NANO_IN_ONE_MILLI_SECOND:I = 0xf4240

.field private static final TAG:Ljava/lang/String; = "FPSUtil"

.field private static mFPSFrameRate:I

.field private static mLastFrameTimeStamp:J

.field private static mStartTime:J


# instance fields
.field private mLimitFrameRate:I

.field private mLimitMinTime:J

.field private mLimitMinTime30:J

.field private mLimitStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xfe502b

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitMinTime:J

    const-wide/32 v0, 0x1fca056

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitMinTime30:J

    return-void
.end method

.method public static fps()D
    .locals 5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLastFrameTimeStamp:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v2

    float-to-double v2, v3

    sput-wide v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLastFrameTimeStamp:J

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method public static fpsAVG(I)D
    .locals 5

    sget-wide v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    sput p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mFPSFrameRate:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mStartTime:J

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mFPSFrameRate:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mFPSFrameRate:I

    const p0, 0x4e6e6b28    # 1.0E9f

    int-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-wide v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float p0, v1

    div-float/2addr v0, p0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static resetAVG()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mFPSFrameRate:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mStartTime:J

    return-void
.end method


# virtual methods
.method public limit()V
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    const v1, 0x927c0

    if-le v0, v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    :cond_1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitMinTime:J

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitStartTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {v4, v5, p0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public limit30()V
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    const v1, 0x927c0

    if-le v0, v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    :cond_1
    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitMinTime30:J

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitStartTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {v4, v5, p0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitFrameRate:I

    return-void
.end method

.method public setLimitMinTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FPSUtil;->mLimitMinTime:J

    return-void
.end method
