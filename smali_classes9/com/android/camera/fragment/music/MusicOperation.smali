.class public Lcom/android/camera/fragment/music/MusicOperation;
.super Ljava/lang/Object;
.source "MusicOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicOperation"


# instance fields
.field private mCountTimer:Ljava/util/Timer;

.field private mMusicPlayDuration:J

.field private mMusicPlayElapsedTime:J

.field private mMusicSeekToTime:J

.field private mMusicStartPlayTime:J

.field private mPaused:Z

.field private mPlayTotalTime:J

.field private mSongId:Ljava/lang/String;

.field private mSongListId:Ljava/lang/String;

.field private mStartTime:J

.field private mTotalDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayDuration:J

    return-void
.end method

.method static synthetic lambda$onSelectedToUse$2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$onSelectedToUse$3(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$startRequest$0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$startRequest$1(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private startRequest()V
    .locals 9

    const-string v0, "-"

    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongListId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    sub-long/2addr v5, v7

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    iput-wide v3, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    :cond_1
    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mTotalDuration:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "report_type"

    const-string v3, "800100"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "from_source"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "user_id"

    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getIdentityID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "song_id"

    iget-object v4, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "song_list_id"

    iget-object v4, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongListId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->toHumanString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bitrate"

    const-string v4, "MP3-64K-FTD-P"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "is_online"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "device_type"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v5, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    iget-wide v5, p0, Lcom/android/camera/fragment/music/MusicOperation;->mTotalDuration:J

    long-to-int p0, v5

    div-int/lit16 p0, p0, 0x3e8

    const-string v5, "duration_of_play"

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "song_duration"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "play_count"

    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "entrance"

    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "is_share"

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "ip"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_id"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "song_from"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "function_type"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "city_code"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "errcode"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "ua"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "AB"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "stay_duration"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "data"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;

    invoke-direct {v0, p0}, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;-><init>(Ljava/lang/String;)V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcom/android/camera/fragment/music/-$$Lambda$MusicOperation$g2jvfP-CSoiZqI3MFYabeoISUMc;->INSTANCE:Lcom/android/camera/fragment/music/-$$Lambda$MusicOperation$g2jvfP-CSoiZqI3MFYabeoISUMc;

    sget-object v1, Lcom/android/camera/fragment/music/-$$Lambda$MusicOperation$sSBSPxHNe0piznXP6OhjjySOQKE;->INSTANCE:Lcom/android/camera/fragment/music/-$$Lambda$MusicOperation$sSBSPxHNe0piznXP6OhjjySOQKE;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public endPlaySession()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/music/MusicOperation;->startRequest()V

    return-void
.end method

.method public getMusicPlayElapsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    return-wide v0
.end method

.method public getMusicSeekToTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicSeekToTime:J

    return-wide v0
.end method

.method public onNewSessionStartPlay(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    iput-wide p1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mTotalDuration:J

    return-void
.end method

.method public onPausePlay()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPaused:Z

    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mPlayTotalTime:J

    iput-wide v2, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    :cond_0
    return-void
.end method

.method public onResumePlay()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mStartTime:J

    return-void
.end method

.method public onSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongListId:Ljava/lang/String;

    return-void
.end method

.method public onSelectedToUse()V
    .locals 6

    const-string v0, "-"

    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongListId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "report_type"

    const-string v3, "800200"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "from_source"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ip"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "user_id"

    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->getIdentityID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "object_id"

    iget-object p0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mSongId:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "object_type"

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo p0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->toHumanString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_type"

    const/4 v4, 0x3

    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "action"

    const/4 v4, 0x4

    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "entrance"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "bitrate"

    const-string v3, "MP3-64K-FTD-P"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "city_code"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "ua"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "AB"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "data"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;

    invoke-direct {v0, p0}, Lcom/android/camera/resource/tmmusic/TMMusicOperationPost;-><init>(Ljava/lang/String;)V

    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/android/camera/resource/BaseObservableRequest;->startObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcom/android/camera/fragment/music/-$$Lambda$MusicOperation$8uYOUIqhdZvxplRM40x2eKQ6Pgc;->INSTANCE:Lcom/android/camera/fragment/music/-$$Lambda$MusicOperation$8uYOUIqhdZvxplRM40x2eKQ6Pgc;

    sget-object v1, Lcom/android/camera/fragment/music/-$$Lambda$MusicOperation$-UfE1BGe9eZ1j8nXEUNe2LpvO94;->INSTANCE:Lcom/android/camera/fragment/music/-$$Lambda$MusicOperation$-UfE1BGe9eZ1j8nXEUNe2LpvO94;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_1
    return-void
.end method

.method public resetTimer()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    return-void
.end method

.method public setMusicSeekToTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicSeekToTime:J

    return-void
.end method

.method public startTimer(Ljava/util/TimerTask;)V
    .locals 5

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mCountTimer:Ljava/util/Timer;

    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayDuration:J

    iget-wide v3, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicStartPlayTime:J

    sget-object p1, Lcom/android/camera/fragment/music/MusicOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTimer remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayDuration:J

    iget-wide v3, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopTimer()V
    .locals 6

    iget-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicStartPlayTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    sget-object v0, Lcom/android/camera/fragment/music/MusicOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopTimer mMusicPlayElapsedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/fragment/music/MusicOperation;->mMusicPlayElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mCountTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/music/MusicOperation;->mCountTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
