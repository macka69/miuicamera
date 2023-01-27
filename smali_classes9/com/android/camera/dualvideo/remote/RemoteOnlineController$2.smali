.class Lcom/android/camera/dualvideo/remote/RemoteOnlineController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RemoteOnlineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/RemoteOnlineController;-><init>(Lcom/android/camera/ActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/remote/RemoteOnlineController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/RemoteOnlineController$2;->this$0:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi connection lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/RemoteOnlineController$2;->this$0:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->access$100(Lcom/android/camera/dualvideo/remote/RemoteOnlineController;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/RemoteOnlineController$2;->this$0:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-static {p0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->access$100(Lcom/android/camera/dualvideo/remote/RemoteOnlineController;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    move-result-object p0

    const p1, 0xdead

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 1

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WiFi connection unavailable"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
