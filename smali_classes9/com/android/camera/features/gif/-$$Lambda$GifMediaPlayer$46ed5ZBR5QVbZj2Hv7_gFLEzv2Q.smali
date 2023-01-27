.class public final synthetic Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$46ed5ZBR5QVbZj2Hv7_gFLEzv2Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/gif/GifMediaPlayer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$46ed5ZBR5QVbZj2Hv7_gFLEzv2Q;->f$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    iput-boolean p2, p0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$46ed5ZBR5QVbZj2Hv7_gFLEzv2Q;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$46ed5ZBR5QVbZj2Hv7_gFLEzv2Q;->f$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-boolean p0, p0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$46ed5ZBR5QVbZj2Hv7_gFLEzv2Q;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$enableSpeedFilter$8$GifMediaPlayer(Z)V

    return-void
.end method
