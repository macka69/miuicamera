.class public Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;
.super Ljava/lang/Object;
.source "ReadyForPlaybackIndicator.java"


# static fields
.field private static final SHOW_LOGS:Z

.field private static final TAG:Ljava/lang/String; = "ReadyForPlaybackIndicator"


# instance fields
.field private mFailedToPrepareUiForPlayback:Z

.field private mSurfaceTextureAvailable:Z

.field private mVideoSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    sput-boolean v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->SHOW_LOGS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    return-void
.end method


# virtual methods
.method public isFailedToPrepareUiForPlayback()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    return p0
.end method

.method public isReadyForPlayback()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->isVideoSizeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->isSurfaceTextureAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyForPlayback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public isSurfaceTextureAvailable()Z
    .locals 3

    sget-boolean v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSurfaceTextureAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    return p0
.end method

.method public isVideoSizeAvailable()Z
    .locals 3

    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mVideoSize:Landroid/util/Pair;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoSizeAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public setFailedToPrepareUiForPlayback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    return-void
.end method

.method public setSurfaceTextureAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    return-void
.end method

.method public setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mVideoSize:Landroid/util/Pair;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
