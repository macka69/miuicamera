.class public Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer;


# instance fields
.field protected final mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getAudioSessionId()I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object p0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result p0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result p0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p0

    return p0
.end method

.method public isLooping()Z
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isLooping()Z

    move-result p0

    return p0
.end method

.method public isPlayable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setKeepInBackground(Z)V

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$3;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$3;-><init>(Ltv/danmaku/ijk/media/player/MediaPlayerProxy;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$2;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$2;-><init>(Ltv/danmaku/ijk/media/player/MediaPlayerProxy;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$6;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$6;-><init>(Ltv/danmaku/ijk/media/player/MediaPlayerProxy;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    :goto_0
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$7;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$7;-><init>(Ltv/danmaku/ijk/media/player/MediaPlayerProxy;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    :goto_0
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$1;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$1;-><init>(Ltv/danmaku/ijk/media/player/MediaPlayerProxy;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    :goto_0
    return-void
.end method

.method public setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$4;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$4;-><init>(Ltv/danmaku/ijk/media/player/MediaPlayerProxy;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    :goto_0
    return-void
.end method

.method public setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$8;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$8;-><init>(Ltv/danmaku/ijk/media/player/MediaPlayerProxy;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    :goto_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$5;

    invoke-direct {v1, p0, p1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy$5;-><init>(Ltv/danmaku/ijk/media/player/MediaPlayerProxy;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    :goto_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    return-void
.end method
