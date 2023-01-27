.class Lcom/xiaomi/camera/videocast/VideoCastService$3;
.super Lcom/xiaomi/camera/rcs/network/NetworkStateCallback;
.source "VideoCastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/videocast/VideoCastService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/videocast/VideoCastService;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/videocast/VideoCastService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertingResult(II)V
    .locals 3

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$200(Lcom/xiaomi/camera/videocast/VideoCastService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {v0}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$100(Lcom/xiaomi/camera/videocast/VideoCastService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->getServiceState(Landroid/content/Context;)Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->START_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.camera.videocast.action.SERVICE_STATE_CHANGED"

    if-ne v0, p2, :cond_1

    sget-object p2, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STARTING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    sget-object p2, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->ADVERTISING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-static {p1, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->updateTile()V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$300(Lcom/xiaomi/camera/videocast/VideoCastService;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->STOP_ADVERTISING_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result v0

    if-ne v0, p2, :cond_3

    sget-object p2, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STOPPING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    sget-object p2, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-static {p1, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->updateTile()V

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    const p2, 0x7f11091d

    invoke-static {p1, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$400(Lcom/xiaomi/camera/videocast/VideoCastService;I)V

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    sget-object p2, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-static {p1, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->updateTile()V

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(I)V

    :goto_0
    return-void
.end method

.method public onConnectionInitiated(IILjava/lang/String;[B[B)V
    .locals 2

    iget-object p4, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$502(Lcom/xiaomi/camera/videocast/VideoCastService;Z)Z

    invoke-static {p3}, Lcom/android/camera/dualvideo/remote/RemoteDevice;->getNameFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionInitiated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$600(Lcom/xiaomi/camera/videocast/VideoCastService;)Lcom/xiaomi/camera/videocast/VideoCastService$ServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p5, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConnectionResult(IILjava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$502(Lcom/xiaomi/camera/videocast/VideoCastService;Z)Z

    sget-object p1, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->GENERAL_SUCCESS:Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->getCode()I

    move-result p1

    if-ne p4, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "com.xiaomi.camera.action.VIDEO_CAST"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-virtual {p3}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p3, 0x8000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p3, 0x800000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "ShowCameraWhenLocked"

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "StartActivityWhenLocked"

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "device_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onDisconnection(II)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/android/camera/CameraAppImpl;

    invoke-virtual {p1}, Lcom/android/camera/CameraAppImpl;->isVideoCastActivityResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    const p2, 0x7f11091f

    invoke-static {p1, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$400(Lcom/xiaomi/camera/videocast/VideoCastService;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    invoke-static {p1}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$500(Lcom/xiaomi/camera/videocast/VideoCastService;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    const p2, 0x7f11053a

    invoke-static {p1, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$400(Lcom/xiaomi/camera/videocast/VideoCastService;I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$502(Lcom/xiaomi/camera/videocast/VideoCastService;Z)Z

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onPayloadReceived(II[B)V
    .locals 0

    if-eqz p3, :cond_1

    array-length p0, p3

    if-lez p0, :cond_1

    array-length p0, p3

    const/16 p1, 0x1f4

    if-ge p0, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPayloadReceived: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const p2, 0xff01

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    const/16 p3, 0xa2

    if-ne p2, p3, :cond_1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {p2, p0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getLayoutType(Lorg/json/JSONObject;I)I

    move-result p3

    if-eq p3, p0, :cond_0

    invoke-interface {p1, p3}, Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;->setVideoCastLayoutType(I)V

    :cond_0
    invoke-static {p2, p0}, Lcom/xiaomi/camera/rcs/RemoteControlExtension;->getRecordingState(Lorg/json/JSONObject;I)I

    move-result p2

    if-eq p2, p0, :cond_1

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;->setVideoCastRecordingState(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPayloadReceived"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceError(I)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaomi/mi_connect_sdk/api/ResultCode;->fromInt(I)Lcom/xiaomi/mi_connect_sdk/api/ResultCode;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-static {p1, v0}, Lcom/xiaomi/camera/videocast/VideoCastService;->setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->updateTile()V

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.camera.videocast.action.SERVICE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    return-void
.end method

.method public onServiceUnbind()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceUnbind"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->IDLE:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/videocast/VideoCastService;->setServiceState(Landroid/content/Context;Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;)V

    invoke-static {}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->updateTile()V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.camera.videocast.action.SERVICE_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/VideoCastService$3;->this$0:Lcom/xiaomi/camera/videocast/VideoCastService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    return-void
.end method
