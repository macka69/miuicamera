.class public final synthetic Lcom/android/camera/multi/-$$Lambda$SampleDownloader$ncBVkFmM2PXz5sy7x75JO50kdjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/multi/SampleDownloader;

.field public final synthetic f$1:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/multi/SampleDownloader;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/multi/-$$Lambda$SampleDownloader$ncBVkFmM2PXz5sy7x75JO50kdjE;->f$0:Lcom/android/camera/multi/SampleDownloader;

    iput-object p2, p0, Lcom/android/camera/multi/-$$Lambda$SampleDownloader$ncBVkFmM2PXz5sy7x75JO50kdjE;->f$1:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    iput p3, p0, Lcom/android/camera/multi/-$$Lambda$SampleDownloader$ncBVkFmM2PXz5sy7x75JO50kdjE;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/multi/-$$Lambda$SampleDownloader$ncBVkFmM2PXz5sy7x75JO50kdjE;->f$0:Lcom/android/camera/multi/SampleDownloader;

    iget-object v1, p0, Lcom/android/camera/multi/-$$Lambda$SampleDownloader$ncBVkFmM2PXz5sy7x75JO50kdjE;->f$1:Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;

    iget p0, p0, Lcom/android/camera/multi/-$$Lambda$SampleDownloader$ncBVkFmM2PXz5sy7x75JO50kdjE;->f$2:I

    check-cast p1, Lcom/android/camera/multi/PluginInfo;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/camera/multi/SampleDownloader;->lambda$startDownload$3$SampleDownloader(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;ILcom/android/camera/multi/PluginInfo;)V

    return-void
.end method
