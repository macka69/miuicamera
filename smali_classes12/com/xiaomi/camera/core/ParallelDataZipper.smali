.class public Lcom/xiaomi/camera/core/ParallelDataZipper;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;,
        Lcom/xiaomi/camera/core/ParallelDataZipper$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParallelDataZipper"


# instance fields
.field private final mCaptureDataArray:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/camera/core/CaptureData;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureDataBeanArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ParallelDataZipperThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ParallelDataZipper;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/core/ParallelDataZipper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/core/ParallelDataZipper;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getFirstFrameTimestamp(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/core/ParallelDataZipper;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->handleDataBeanIfReady(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    return-void
.end method

.method private filterCaptureDataBeanWithNoData(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getFirstTimestamp()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isHasCaptureData()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "filterCaptureDataBeanWithNoData: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private getFirstFrameTimestamp(J)J
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFirstFrameTimestamp: return current timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Long;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    array-length v2, v0

    if-eqz v2, :cond_5

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-object p0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-gt v1, v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result v2

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, p1, v4

    if-gez v2, :cond_3

    aget-object p0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_5

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData;->getBurstNum()I

    move-result p0

    if-le p0, v3, :cond_5

    array-length p0, v0

    sub-int/2addr p0, v3

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_5
    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFirstFrameTimestamp: return the owner timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method public static getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper$InstanceHolder;->INSTANCE:Lcom/xiaomi/camera/core/ParallelDataZipper;

    return-object v0
.end method

.method private getStreamNumberByTimestamp(J)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getFirstFrameTimestamp(J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStreamNumberByTimestamp: returned an error result with timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private handleDataBeanIfReady(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 6

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "handleDataBeanIfReady: dataBean with timestamp %d is ready"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->tryToCallback(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$printDataForDebug$3()V
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v5, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "printDataForDebug: mCaptureDataArray key: %d values: %s"

    invoke-static {v6, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "printDataForDebug: mCaptureDataBeanArray key: %d values: %s"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private synthetic lambda$releaseData$0(J)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getFirstFrameTimestamp(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/core/CaptureData;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureDataBeanList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v3

    iget-object p2, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    sget-object p2, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseData: CaptureDataBean.timestamp > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataAbandoned(Lcom/xiaomi/camera/core/CaptureData;)V

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    const-string v1, "releaseData: CaptureData is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->close()V

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_3
    :goto_1
    sget-object p1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearTimeStampData: X | mCaptureDataBeanArray.size > "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataBeanArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | mCaptureDataArray.size > "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$tryToCallback$1(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$tryToCallback$2(Ljava/util/Map$Entry;)Lcom/xiaomi/camera/core/CaptureData;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/core/CaptureData;

    return-object p0
.end method

.method private tryToCallback(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V
    .locals 8

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getSequenceId()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getCaptureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getFirstFrameTimestamp(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData;

    if-nez v6, :cond_0

    sget-object v6, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    const-string v7, "we may find the incorrect capture data"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$bOnLgAhueECGFQyvTHWJZ4EO0GQ;

    invoke-direct {v7, v1}, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$bOnLgAhueECGFQyvTHWJZ4EO0GQ;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v6, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$D1jy5x1gQ0GizPmwXvX2J6Cv2H0;->INSTANCE:Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$D1jy5x1gQ0GizPmwXvX2J6Cv2H0;

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/xiaomi/camera/core/CaptureData;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v4

    :cond_0
    if-eqz v6, :cond_5

    invoke-virtual {v6, p1}, Lcom/xiaomi/camera/core/CaptureData;->putCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isPartialProcess()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v6}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    :cond_1
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->getDataListener()Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/camera/core/CaptureData;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1, v6}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1, v6}, Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;->onParallelDataAbandoned(Lcom/xiaomi/camera/core/CaptureData;)V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No task found with sequenceId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " timestamp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->close()V

    sget-boolean p1, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez p1, :cond_7

    :cond_6
    :goto_1
    return-void

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateCaptureDataBean(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 9

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->filterCaptureDataBeanWithNoData(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCaptureDataBean: no data beans size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getStreamNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setStreamNum(I)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isRequireTuningData()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setRequireTuningData(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isSatFusionShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsSatFusionShot(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setHasCaptureData(Z)V

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->isHdrSR()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->setIsHdrSrShot(Z)V

    sget-object v3, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/CaptureData;->getCaptureTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "updateCaptureDataBean: update CaptureDataBean[%d]  with captureData[%d]"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->handleDataBeanIfReady(Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public isAnyFrontProcessingByProcessor(Lcom/xiaomi/camera/core/ImageProcessor;)Z
    .locals 4

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mCaptureDataArray:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/core/CaptureData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->getImageProcessor()Lcom/xiaomi/camera/core/ImageProcessor;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: isAnyFrontProcessingByProcessor: ImageProcessor is null! captureData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/CaptureData;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized join(Landroid/media/Image;IIZ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaomi/camera/core/ParallelDataZipper$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/camera/core/ParallelDataZipper$3;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Landroid/media/Image;IZI)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized join(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 2
    .param p1    # Lcom/xiaomi/protocol/ICustomCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/camera/core/ParallelDataZipper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper$2;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Thread already die!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$printDataForDebug$3$ParallelDataZipper()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->lambda$printDataForDebug$3()V

    return-void
.end method

.method public synthetic lambda$releaseData$0$ParallelDataZipper(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->lambda$releaseData$0(J)V

    return-void
.end method

.method public printDataForDebug()V
    .locals 2

    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$oT8PKXwSPKfwGOiHqUDeiokmUCg;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$oT8PKXwSPKfwGOiHqUDeiokmUCg;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public releaseData(J)V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseData: E. timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$T1q7kPafXZKafiz02g0sh7ONDEY;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$T1q7kPafXZKafiz02g0sh7ONDEY;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized startTask(Lcom/xiaomi/camera/core/CaptureData;)V
    .locals 2
    .param p1    # Lcom/xiaomi/camera/core/CaptureData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelDataZipper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/camera/core/ParallelDataZipper$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper$1;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper;Lcom/xiaomi/camera/core/CaptureData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Thread already die!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
