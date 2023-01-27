.class abstract Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;
.super Ljava/lang/Object;
.source "GifMediaPlayer.java"

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MiMediaProcessCallback"
.end annotation


# instance fields
.field private target:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/features/gif/GifMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;Lcom/android/camera/features/gif/GifMediaPlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->target:Ljava/lang/String;

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$MiMediaProcessCallback;->target:Ljava/lang/String;

    return-void
.end method
