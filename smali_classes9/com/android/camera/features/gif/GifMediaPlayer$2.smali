.class Lcom/android/camera/features/gif/GifMediaPlayer$2;
.super Ljava/lang/Object;
.source "GifMediaPlayer.java"

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/gif/GifMediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$OnReadyNow$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$100(Lcom/android/camera/features/gif/GifMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$102(Lcom/android/camera/features/gif/GifMediaPlayer;Z)Z

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OnHaveFace()V
    .locals 0

    return-void
.end method

.method public OnReadyNow()V
    .locals 2

    const-string v0, "MimojiGifMediaPlayer"

    const-string v1, "mimoji void OnReadyNow[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$000(Lcom/android/camera/features/gif/GifMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2$8NOe89_jCz6PTB3y3LX1DCS2uJ4;

    invoke-direct {v1, p0}, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2$8NOe89_jCz6PTB3y3LX1DCS2uJ4;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnReceiveFailed()V
    .locals 0

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$OnReadyNow$0$GifMediaPlayer$2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifMediaPlayer$2;->lambda$OnReadyNow$0()V

    return-void
.end method
