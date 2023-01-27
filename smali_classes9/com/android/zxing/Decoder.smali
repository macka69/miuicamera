.class public abstract Lcom/android/zxing/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Decoder"


# instance fields
.field mDecodeAutoInterval:J

.field mDecodeDisposable:Lio/reactivex/disposables/Disposable;

.field mDecodeMaxCount:I

.field volatile mDecoding:Z

.field mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mEnable:Z

.field private mLastDecodeTime:J

.field mSubjects:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/android/zxing/PreviewImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/zxing/Decoder;->mDecodeMaxCount:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/zxing/Decoder;->mDecodeAutoInterval:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mEnable:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public abstract init(I)V
.end method

.method protected isNeedImage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needPreviewFrame()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/zxing/Decoder;->mEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/android/zxing/Decoder;->mDecodeMaxCount:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, Lcom/android/zxing/Decoder;->mDecodeMaxCount:I

    if-lt v0, v2, :cond_2

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/zxing/Decoder;->mLastDecodeTime:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/zxing/Decoder;->mDecodeAutoInterval:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    return v1

    :cond_3
    iput-wide v2, p0, Lcom/android/zxing/Decoder;->mLastDecodeTime:J

    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preview frame buffer received... mDecodingCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/zxing/Decoder;->mDecodingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Decoder"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onPreviewFrame(Landroid/media/Image;)V
    .locals 0

    return-void
.end method

.method public abstract onPreviewFrame(Lcom/android/zxing/PreviewImage;)V
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mEnable:Z

    return-void
.end method

.method public abstract reset()V
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/zxing/Decoder;->mEnable:Z

    return-void
.end method

.method public abstract startDecode()V
.end method

.method public stopDecode()V
    .locals 2

    const-string v0, "Decoder"

    const-string v1, "Stop decode."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/Decoder;->mDecodeDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/Decoder;->mDecoding:Z

    return-void
.end method
