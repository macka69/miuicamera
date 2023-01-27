.class public interface abstract Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;
.super Ljava/lang/Object;
.source "FastmotionTextureVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FastmotionTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerCallback"
.end annotation


# virtual methods
.method public abstract onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end method

.method public abstract onCompletion(Landroid/media/MediaPlayer;)V
.end method

.method public abstract onError(Landroid/media/MediaPlayer;II)Z
.end method

.method public abstract onInfo(Landroid/media/MediaPlayer;II)Z
.end method

.method public abstract onPrepared(Landroid/media/MediaPlayer;)V
.end method

.method public abstract onSurfaceReady(Landroid/view/Surface;)V
.end method

.method public abstract onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
.end method

.method public abstract stop()V
.end method
