.class public interface abstract Lcom/xiaomi/camera/rcs/IRemoteControlClient;
.super Ljava/lang/Object;
.source "IRemoteControlClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;,
        Lcom/xiaomi/camera/rcs/IRemoteControlClient$Default;
    }
.end annotation


# virtual methods
.method public abstract customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract streamingServerStatus(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract streamingSessionStatus(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
