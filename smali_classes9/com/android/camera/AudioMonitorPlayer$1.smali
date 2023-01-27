.class Lcom/android/camera/AudioMonitorPlayer$1;
.super Ljava/lang/Object;
.source "AudioMonitorPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AudioMonitorPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AudioMonitorPlayer;


# direct methods
.method constructor <init>(Lcom/android/camera/AudioMonitorPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "MiuiAudioMonitor"

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$000(Lcom/android/camera/AudioMonitorPlayer;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const-string v1, "STAR PLAY AUDIO ..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$100(Lcom/android/camera/AudioMonitorPlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    new-instance v10, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const v5, 0xbb80

    const/4 v6, 0x4

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v3}, Lcom/android/camera/AudioMonitorPlayer;->access$000(Lcom/android/camera/AudioMonitorPlayer;)I

    move-result v8

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-static {v1, v10}, Lcom/android/camera/AudioMonitorPlayer;->access$102(Lcom/android/camera/AudioMonitorPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$200(Lcom/android/camera/AudioMonitorPlayer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$100(Lcom/android/camera/AudioMonitorPlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v1}, Lcom/android/camera/AudioMonitorPlayer;->access$100(Lcom/android/camera/AudioMonitorPlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v3}, Lcom/android/camera/AudioMonitorPlayer;->access$300(Lcom/android/camera/AudioMonitorPlayer;)[S

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {v4}, Lcom/android/camera/AudioMonitorPlayer;->access$000(Lcom/android/camera/AudioMonitorPlayer;)I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioTrack;->write([SII)I

    goto :goto_0

    :cond_1
    const-string v1, "play AudioTrack.getMinBufferSize is error when play audio :"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/AudioMonitorPlayer$1;->this$0:Lcom/android/camera/AudioMonitorPlayer;

    invoke-static {p0}, Lcom/android/camera/AudioMonitorPlayer;->access$000(Lcom/android/camera/AudioMonitorPlayer;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "exception when play audio :"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
