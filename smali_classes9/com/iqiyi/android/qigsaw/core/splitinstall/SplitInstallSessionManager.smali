.class interface abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;
.super Ljava/lang/Object;
.source "SplitInstallSessionManager.java"


# virtual methods
.method public abstract changeSessionState(II)V
.end method

.method public abstract emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V
.end method

.method public abstract getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;
.end method

.method public abstract getSessionStates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isActiveSessionsLimitExceeded()Z
.end method

.method public abstract isIncompatibleWithExistingSession(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract removeSessionState(I)V
.end method

.method public abstract setSessionState(ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V
.end method
