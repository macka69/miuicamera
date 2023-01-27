.class public interface abstract Lcom/xiaomi/camera/rcs/IRemoteControl;
.super Ljava/lang/Object;
.source "IRemoteControl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/IRemoteControl$Stub;,
        Lcom/xiaomi/camera/rcs/IRemoteControl$Default;
    }
.end annotation


# virtual methods
.method public abstract customClientRequest(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract customRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract injectKeyEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/KeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract injectMotionEvent(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopStreaming(Lcom/xiaomi/camera/rcs/IRemoteControlClient;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterRemoteController(Lcom/xiaomi/camera/rcs/IRemoteControlClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
