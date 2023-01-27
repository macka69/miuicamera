.class public final synthetic Lcom/android/camera/multi/-$$Lambda$SampleDownloader$KUqcSF2Kp-9eejDGkpmEBHHpRiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/multi/-$$Lambda$SampleDownloader$KUqcSF2Kp-9eejDGkpmEBHHpRiQ;->f$0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/multi/-$$Lambda$SampleDownloader$KUqcSF2Kp-9eejDGkpmEBHHpRiQ;->f$0:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/android/camera/multi/SampleDownloader;->lambda$startDownload$0(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Ljava/lang/Long;)V

    return-void
.end method
