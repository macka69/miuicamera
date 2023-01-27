.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDeferredInstallTask;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;
.source "SplitDeferredInstallTask.java"


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method isStartInstallOperation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
