.class public Lcom/android/camera/multi/reporter/SampleSplitLoadReporter;
.super Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;
.source "SampleSplitLoadReporter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SampleSplitLoadReporter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;",
            ">;J)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;->onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onLoadFailed: cost = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SampleSplitLoadReporter"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadOK(Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;J)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;->onLoadOK(Ljava/lang/String;Ljava/util/List;J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onLoadOK: cost = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SampleSplitLoadReporter"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
