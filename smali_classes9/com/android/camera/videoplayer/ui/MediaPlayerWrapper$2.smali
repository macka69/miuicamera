.class Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$2;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->onPrepareError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$2;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$2;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$100(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">> run, onVideoPreparedMainThread"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$2;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$200(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, -0x3ec

    invoke-interface {v0, v1, v2}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onErrorMainThread(II)V

    invoke-static {}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$2;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-static {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$100(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<< run, onVideoPreparedMainThread"

    invoke-static {p0, v0}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
