.class final Lcom/google/android/play/core/splitinstall/GetSessionStateCallback;
.super Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;
.source "GetSessionStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl<",
        "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallService;",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    return-void
.end method


# virtual methods
.method public onGetSession(ILandroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->onGetSession(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-static {p2}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->createFrom(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setResult(Ljava/lang/Object;)Z

    return-void
.end method
