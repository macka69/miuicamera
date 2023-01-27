.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;
.super Ljava/lang/Object;
.source "SplitUpdateReporter.java"


# virtual methods
.method public abstract onNewSplitInfoVersionLoaded(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onUpdateFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onUpdateOK(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
