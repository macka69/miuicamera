.class public Lcom/android/camera/features/gif/GifMediaPlayer;
.super Ljava/lang/Object;
.source "GifMediaPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MimojiGifMediaPlayer"

.field private static volatile mIsLibLoaded:Z

.field private static final sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;


# instance fields
.field private mCheckErrorState:I

.field private mConcatProgressBar:Landroid/widget/ProgressBar;

.field private mContext:Landroid/content/Context;

.field private mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

.field private mDuration:J

.field private mEffectNotifier:Lcom/xiaomi/Video2GifEditer/EffectNotifier;

.field private mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

.field private mEnableReverseFilter:Z

.field private mEnableSpeedFilter:Z

.field private mEnableSubtitleFilter:Z

.field private mEnableVideoSegmentFilter:Z

.field private mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsComposing:Z

.field private mIsHideVideoSegment:Z

.field private mIsNeedShowProgress:Z

.field private mIsSurFaceReady:Z

.field private mLoadHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

.field public mMediaProcessCallback:Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;

.field private mPreviewCoverView:Landroid/widget/ImageView;

.field private mReverseFilterID:J

.field private mSourceID:J

.field private mSpeedFilterID:J

.field private mSubtitleFilterID:J

.field private mSurface:Landroid/view/Surface;

.field private mTextureView:Landroid/view/TextureView;

.field private mVideoPath:Ljava/lang/String;

.field private mVideoSegmentFilterID:J

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/features/gif/GifMediaPlayer$1;

    invoke-direct {v0}, Lcom/android/camera/features/gif/GifMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCheckErrorState:I

    new-instance v1, Lcom/android/camera/features/gif/GifMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/features/gif/GifMediaPlayer$2;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    iput-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectNotifier:Lcom/xiaomi/Video2GifEditer/EffectNotifier;

    new-instance v1, Lcom/android/camera/features/gif/GifMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/android/camera/features/gif/GifMediaPlayer$3;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    iput-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaProcessCallback:Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "gif"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsSurFaceReady:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    iput-boolean p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsHideVideoSegment:Z

    sput-boolean v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    sget-object p1, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V

    return-void
.end method

.method private CreateFilterByType(I)J
    .locals 2

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/EffectType;->values()[Lcom/xiaomi/Video2GifEditer/EffectType;

    move-result-object p0

    aget-object p0, p0, p1

    sget-object p1, Lcom/android/camera/features/gif/GifMediaPlayer$4;->$SwitchMap$com$xiaomi$Video2GifEditer$EffectType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo p1, "speed"

    const-string v0, "2"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->SetptsExtFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide v0

    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->SetptsExtFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p1, v0, v1, p0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    move-wide p0, v0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/Video2GifEditer/EffectType;->SubtitleFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/xiaomi/Video2GifEditer/EffectType;->VideoSegmentFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide p0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/xiaomi/Video2GifEditer/EffectType;->ReverseFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->CreateEffect(Lcom/xiaomi/Video2GifEditer/EffectType;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method static synthetic access$000(Lcom/android/camera/features/gif/GifMediaPlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/features/gif/GifMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/features/gif/GifMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/features/gif/GifMediaPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/features/gif/GifMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->time:J

    return-wide v0
.end method

.method private dealAllFilter()V
    .locals 15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v6, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    :cond_0
    iget-wide v10, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long v0, v10, v1

    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v12, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    iput-wide v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableSpeedFilter:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v6, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_1

    :cond_2
    iget-wide v10, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long v0, v10, v1

    if-eqz v0, :cond_3

    iget-object v9, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v12, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    iput-wide v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    if-eqz v0, :cond_4

    iget-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_video_segment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/Video2GifEditer/EffectType;->VideoSegmentFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    iget-wide v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    invoke-static {v1, v2, v3, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$cx93u56IT8kK1VPT0Zc4Rn_jM9o;

    invoke-direct {v1, p0}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$cx93u56IT8kK1VPT0Zc4Rn_jM9o;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getMimojiItemType()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportMimojiVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "cartoon"

    const-string v1, "custom"

    if-eqz p0, :cond_6

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v2, p0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v3

    aget-object v2, p0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    aget-object p0, p0, v2

    goto :goto_2

    :cond_3
    array-length v2, p0

    sub-int/2addr v2, v3

    aget-object p0, p0, v2

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, " "

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "human"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "person"

    goto :goto_3

    :cond_6
    const-string p0, ""

    :cond_7
    move-object v0, v1

    :goto_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V
    .locals 2

    sget-boolean v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Lcom/xiaomi/MediaRecord/SystemUtil;->Init(Landroid/content/Context;I)V

    :cond_0
    invoke-static {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->loadLibrariesOnce(Lcom/android/camera/features/gif/MiLibLoader;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    new-instance p1, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-direct {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-virtual {p1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->ConstructMediaEffectGraph()V

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->SetAudioMute(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez p1, :cond_2

    new-instance p1, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    invoke-direct {p1, v1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;-><init>(Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p1, v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetPlayLoop(Z)V

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    sget-object p1, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingDisableAudioDeviceMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    invoke-virtual {p0, p1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ConstructMediaPlayer(Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$dealAllFilter$2()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iput-boolean v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isPreviewPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isPreviewPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->StartPreView()V

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0, v2}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetPlayLoop(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method private synthetic lambda$enableReverseFilter$5()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method private synthetic lambda$enableReverseFilter$6(Z)V
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mReverseFilterID:J

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$1qx_WHrZH09rAwe8ovz1x9onmM0;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$1qx_WHrZH09rAwe8ovz1x9onmM0;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$enableSpeedFilter$7()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method private synthetic lambda$enableSpeedFilter$8(Z)V
    .locals 14

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    goto :goto_0

    :cond_0
    iget-wide v9, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    cmp-long p1, v9, v0

    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v11, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->RemoveEffect(JJZ)Z

    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSpeedFilterID:J

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$TNvQpUPaGYLIH-Bg7K1I_y8qwaM;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$TNvQpUPaGYLIH-Bg7K1I_y8qwaM;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$enableVideoSegmentFilter$3()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method private synthetic lambda$enableVideoSegmentFilter$4(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "show_video_segment"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/xiaomi/Video2GifEditer/EffectType;->VideoSegmentFilter:Lcom/xiaomi/Video2GifEditer/EffectType;

    iget-wide v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    invoke-static {p1, v1, v2, v0}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetParamsForEffect(Lcom/xiaomi/Video2GifEditer/EffectType;JLjava/util/Map;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$u7OZOnXfij9GbWBfc58p4R091vk;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$u7OZOnXfij9GbWBfc58p4R091vk;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onError$11()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->coverGifError()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$10(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;->coverGifSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$openVideoUrl$0(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    invoke-direct {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->initPlayer(Lcom/android/camera/features/gif/MiLibLoader;)V

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "MimojiGifMediaPlayer"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    if-nez p1, :cond_0

    const-string p0, "mimoji void playCameraRecord[]  mSurface == nul"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddVideoSource(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    iget-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsHideVideoSegment:Z

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->CreateFilterByType(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    iget-wide v5, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSourceID:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->AddEffect(JJZ)Z

    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectNotifier:Lcom/xiaomi/Video2GifEditer/EffectNotifier;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->SetFilterCallback(JLcom/xiaomi/Video2GifEditer/EffectNotifier;)V

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->dealAllFilter()V

    goto :goto_1

    :cond_3
    const-string p1, "mimoji void playCameraRecord[] null"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$setIsComposing$1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$startVideo2Gif$9()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "show_video_segment"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    invoke-static {v2, v3, v1}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVideoSegmentFilter(JLjava/util/Map;)I

    :cond_0
    iget-boolean v1, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddReverseFilter()I

    :cond_1
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subtile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v3}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MimojiGifMediaPlayer"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v2}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "textname"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "posx"

    const-string v3, "200"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "posy"

    const-string v3, "370"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "subtitle_width"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "subtitle_height"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "font_size"

    const-string v3, "36"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddSubtitleFilter(Ljava/util/Map;)I

    iget-object v1, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v1}, Lcom/android/camera/features/gif/GifEditLayout;->getResult()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v6, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v2, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableSpeedFilter:Z

    if-eqz v2, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    :cond_3
    move v15, v1

    iget-object v1, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MIMOJI_GIF"

    const-string v4, "gif"

    invoke-static {v3, v4}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaProcessCallback:Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;

    invoke-virtual {v2, v9}, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->setTarget(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->getMimojiItemType()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableVideoSegmentFilter:Z

    iget-boolean v4, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    iget-boolean v5, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableSpeedFilter:Z

    iget-wide v7, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mDuration:J

    invoke-static/range {v2 .. v8}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSaveGif(Ljava/lang/String;ZZZLjava/lang/String;J)V

    const/16 v2, 0x14

    const/16 v10, 0x5dc

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1388

    iget-object v0, v0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaProcessCallback:Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;

    move-object v7, v1

    move-object v8, v9

    move v9, v2

    move-object/from16 v16, v0

    invoke-static/range {v7 .. v16}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->ConvertGif(Ljava/lang/String;Ljava/lang/String;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    return-void
.end method

.method public static loadLibrariesOnce(Lcom/android/camera/features/gif/MiLibLoader;)V
    .locals 2

    const-class v0, Lcom/android/camera/features/gif/GifMediaPlayer;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/features/gif/GifMediaPlayer;->sLocalLibLoader:Lcom/android/camera/features/gif/MiLibLoader;

    :cond_0
    const-string/jumbo v1, "vvc++_shared"

    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_tracking"

    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_video2gif"

    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "mimoji_bokeh_845_video"

    invoke-interface {p0, v1}, Lcom/android/camera/features/gif/MiLibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onError()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$4A5PzT0_Un29QiQQAdDwgsKBtAs;

    invoke-direct {v1, p0}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$4A5PzT0_Un29QiQQAdDwgsKBtAs;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$oEX5mMxWzYr1NVTeqoJ3UJAs_N4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$oEX5mMxWzYr1NVTeqoJ3UJAs_N4;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseEffectPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->StopPreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->DestructMediaPlayer()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextureView:Landroid/view/TextureView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private releaseMediaGraph()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->DestructMediaEffectGraph()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    :cond_0
    return-void
.end method

.method private releaseVideoSegmentMediaGraph()V
    .locals 5

    iget-wide v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/xiaomi/Video2GifEditer/MediaEffect;->DestoryEffect(J)V

    iput-wide v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoSegmentFilterID:J

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelVideo2gif()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsComposing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->CancelGifConvert(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public enableReverseFilter(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableReverseFilter:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$Kue14fdjf7IxaFdw9LWfNx_O7Ys;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$Kue14fdjf7IxaFdw9LWfNx_O7Ys;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableSpeedFilter(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEnableSpeedFilter:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$46ed5ZBR5QVbZj2Hv7_gFLEzv2Q;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$46ed5ZBR5QVbZj2Hv7_gFLEzv2Q;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableVideoSegmentFilter(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsNeedShowProgress:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2daKTUvnvFzPi_6oUt-a9RX23sw;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2daKTUvnvFzPi_6oUt-a9RX23sw;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public isComposing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsComposing:Z

    return p0
.end method

.method public isEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsSurFaceReady:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreviewPaused()Z
    .locals 2

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->GetPreViewStatus()Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewPaused:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPreviewPlaying()Z
    .locals 2

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->GetPreViewStatus()Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/Video2GifEditer/PreViewStatus;->PreViewPlaying:Lcom/xiaomi/Video2GifEditer/PreViewStatus;

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public synthetic lambda$dealAllFilter$2$GifMediaPlayer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$dealAllFilter$2()V

    return-void
.end method

.method public synthetic lambda$enableReverseFilter$5$GifMediaPlayer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$enableReverseFilter$5()V

    return-void
.end method

.method public synthetic lambda$enableReverseFilter$6$GifMediaPlayer(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$enableReverseFilter$6(Z)V

    return-void
.end method

.method public synthetic lambda$enableSpeedFilter$7$GifMediaPlayer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$enableSpeedFilter$7()V

    return-void
.end method

.method public synthetic lambda$enableSpeedFilter$8$GifMediaPlayer(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$enableSpeedFilter$8(Z)V

    return-void
.end method

.method public synthetic lambda$enableVideoSegmentFilter$3$GifMediaPlayer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$enableVideoSegmentFilter$3()V

    return-void
.end method

.method public synthetic lambda$enableVideoSegmentFilter$4$GifMediaPlayer(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$enableVideoSegmentFilter$4(Z)V

    return-void
.end method

.method public synthetic lambda$onError$11$GifMediaPlayer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$onError$11()V

    return-void
.end method

.method public synthetic lambda$onSuccess$10$GifMediaPlayer(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$onSuccess$10(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$openVideoUrl$0$GifMediaPlayer(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$openVideoUrl$0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setIsComposing$1$GifMediaPlayer(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$setIsComposing$1(Z)V

    return-void
.end method

.method public synthetic lambda$startVideo2Gif$9$GifMediaPlayer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$startVideo2Gif$9()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "MimojiGifMediaPlayer"

    const-string p3, "mimoji void onSurfaceTextureAvailable[surface, width, height]"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    if-nez p2, :cond_1

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    iget-wide p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mDuration:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/gif/GifMediaPlayer;->openVideoUrl(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const-string p0, "MimojiGifMediaPlayer"

    const-string p1, "mimoji boolean onSurfaceTextureDestroyed[surface]"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p0, "MimojiGifMediaPlayer"

    const-string p1, "mimoji void onSurfaceTextureSizeChanged[surface, width, height]"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsSurFaceReady:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsSurFaceReady:Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mPreviewCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    :cond_0
    return-void
.end method

.method public openVideoUrl(Ljava/lang/String;J)V
    .locals 0

    iput-wide p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mDuration:J

    iget-object p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2CsR03cI5iiQ-G_M5RYaZM3AN8A;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2CsR03cI5iiQ-G_M5RYaZM3AN8A;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pausePlay()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    :cond_0
    return-void
.end method

.method public releaseMedia(Z)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->cancelVideo2gif()V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseEffectPlayer()V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseMediaGraph()V

    iget-object v2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    :cond_0
    if-nez p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseVideoSegmentMediaGraph()V

    iget-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mSurface:Landroid/view/Surface;

    :cond_1
    sget-boolean p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/xiaomi/MediaRecord/SystemUtil;->UnInit()V

    sput-boolean v2, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsLibLoaded:Z

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji void releaseMedia[fromInit] "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "   time:  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MimojiGifMediaPlayer"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumePlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MimojiGifMediaPlayer"

    const-string v0, " resumePlay unenable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isPreviewPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->ResumePreView()Z

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->onError()V

    return-void
.end method

.method public setConcatProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public setGifEditLayout(Lcom/android/camera/features/gif/GifEditLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    return-void
.end method

.method public setIsComposing(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mIsComposing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCheckErrorState:I

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$1QFehoy5lCFGxcWgQ0hbiaWnxQQ;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$1QFehoy5lCFGxcWgQ0hbiaWnxQQ;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPreviewCoverView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mPreviewCoverView:Landroid/widget/ImageView;

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;J)V
    .locals 0

    iput-wide p2, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mDuration:J

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    return-void
.end method

.method public startVideo2Gif()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mCpuBoost:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->time:J

    invoke-virtual {p0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mEffectPlayer:Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/EffectMediaPlayer;->PausePreView()V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifEditLayout;->setIsAllowInput(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer;->mLoadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$pUWY4SILEZ3EDJyGtr003vbawvc;

    invoke-direct {v1, p0}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$pUWY4SILEZ3EDJyGtr003vbawvc;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "MimojiGifMediaPlayer"

    const-string v0, "mimoji void startVideo2Gif[] videpath null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
