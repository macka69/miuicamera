.class public interface abstract Lcom/android/camera/videoplayer/manager/VideoPlayerManager;
.super Ljava/lang/Object;
.source "VideoPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/camera/videoplayer/meta/MetaData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/camera/videoplayer/ui/VideoPlayerView;",
            "Landroid/content/res/AssetFileDescriptor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/camera/videoplayer/ui/VideoPlayerView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resetMediaPlayer()V
.end method

.method public abstract resumeMediaPlayer()V
.end method

.method public abstract stopAnyPlayback()V
.end method

.method public abstract terminate()V
.end method
