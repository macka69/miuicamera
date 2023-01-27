.class public final synthetic Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2CsR03cI5iiQ-G_M5RYaZM3AN8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/gif/GifMediaPlayer;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2CsR03cI5iiQ-G_M5RYaZM3AN8A;->f$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    iput-object p2, p0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2CsR03cI5iiQ-G_M5RYaZM3AN8A;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2CsR03cI5iiQ-G_M5RYaZM3AN8A;->f$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object p0, p0, Lcom/android/camera/features/gif/-$$Lambda$GifMediaPlayer$2CsR03cI5iiQ-G_M5RYaZM3AN8A;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->lambda$openVideoUrl$0$GifMediaPlayer(Ljava/lang/String;)V

    return-void
.end method
