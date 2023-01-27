.class public interface abstract Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;
.super Ljava/lang/Object;
.source "IHandoffProcess.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_sdk/IHandoffProcess$Stub;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyHandoffEvent([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerClient(Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
