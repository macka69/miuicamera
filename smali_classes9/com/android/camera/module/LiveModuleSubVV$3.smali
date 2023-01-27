.class Lcom/android/camera/module/LiveModuleSubVV$3;
.super Ljava/lang/Object;
.source "LiveModuleSubVV.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/LiveModuleSubVV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/LiveModuleSubVV;


# direct methods
.method constructor <init>(Lcom/android/camera/module/LiveModuleSubVV;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDevicePostureChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->onDevicePostureChanged()V

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 1

    invoke-static {}, Lcom/android/camera/module/LiveModuleSubVV;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onDeviceBecomeStable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-static {v0}, Lcom/android/camera/module/LiveModuleSubVV;->access$700(Lcom/android/camera/module/LiveModuleSubVV;)J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {v0}, Lcom/android/camera/module/LiveModuleSubVV;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {v0}, Lcom/android/camera/module/LiveModuleSubVV;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager2;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method

.method public onDeviceKeepStable()V
    .locals 0

    return-void
.end method

.method public onDeviceLieChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    int-to-float v1, v1

    :goto_0
    iput v1, v0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->isGradienterOn:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object v2, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, v1, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    invoke-static {v2, v1}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget p2, p2, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {p1, p2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p2

    add-int/2addr p2, p1

    rem-int/lit16 p2, p2, 0x168

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$3;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method public onDeviceRotationChanged([F)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    return-void
.end method
