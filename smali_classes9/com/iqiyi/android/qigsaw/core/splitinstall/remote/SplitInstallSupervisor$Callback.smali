.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;
.super Ljava/lang/Object;
.source "SplitInstallSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCancelInstall(ILandroid/os/Bundle;)V
.end method

.method public abstract onDeferredInstall(Landroid/os/Bundle;)V
.end method

.method public abstract onDeferredUninstall(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Landroid/os/Bundle;)V
.end method

.method public abstract onGetSession(ILandroid/os/Bundle;)V
.end method

.method public abstract onGetSessionStates(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartInstall(ILandroid/os/Bundle;)V
.end method
