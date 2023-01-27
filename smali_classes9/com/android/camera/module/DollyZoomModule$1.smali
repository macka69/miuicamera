.class Lcom/android/camera/module/DollyZoomModule$1;
.super Ljava/util/TimerTask;
.source "DollyZoomModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/DollyZoomModule;->startRecordingCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/DollyZoomModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/DollyZoomModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/DollyZoomModule$1;->this$0:Lcom/android/camera/module/DollyZoomModule;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(J)V
    .locals 3

    invoke-static {}, Lcom/android/camera/module/DollyZoomModule;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecordingCount duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/DollyZoomModule$1;->this$0:Lcom/android/camera/module/DollyZoomModule;

    invoke-static {v2}, Lcom/android/camera/module/DollyZoomModule;->access$200(Lcom/android/camera/module/DollyZoomModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule$1;->this$0:Lcom/android/camera/module/DollyZoomModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$1$31tvxcxgV0IsEisJbPpuSxyC5Tk;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$1$31tvxcxgV0IsEisJbPpuSxyC5Tk;-><init>(J)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
