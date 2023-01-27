.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# virtual methods
.method public abstract cancelDownloadSync(I)Z
.end method

.method public abstract deferredDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract getDownloadSizeThresholdWhenUsingMobileData()J
.end method

.method public abstract isDeferredDownloadOnlyWhenUsingWifiData()Z
.end method

.method public abstract startDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;",
            ")V"
        }
    .end annotation
.end method
