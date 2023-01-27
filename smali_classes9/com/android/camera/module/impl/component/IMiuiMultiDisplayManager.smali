.class public interface abstract Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;
.super Ljava/lang/Object;
.source "IMiuiMultiDisplayManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCurrentFoldState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reverseDisplayStateWhileUnFold(ZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDisplayStateIgnoreFold(IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
