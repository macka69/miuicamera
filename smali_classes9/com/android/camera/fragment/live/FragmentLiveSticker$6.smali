.class Lcom/android/camera/fragment/live/FragmentLiveSticker$6;
.super Ljava/lang/Object;
.source "FragmentLiveSticker.java"

# interfaces
.implements Lcom/android/camera/network/net/base/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSticker;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$2;-><init>(Lcom/android/camera/fragment/live/FragmentLiveSticker$6;Ljava/util/List;)V

    invoke-static {v1}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$1;-><init>(Lcom/android/camera/fragment/live/FragmentLiveSticker$6;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "getStickerList %d "

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentLiveSticker"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/fragment/live/FragmentLiveSticker;->access$200()[Lcom/android/camera/sticker/LiveStickerInfo;

    move-result-object v0

    array-length v0, v0

    rsub-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lcom/android/camera/sticker/LiveStickerInfo;

    invoke-direct {v4}, Lcom/android/camera/sticker/LiveStickerInfo;-><init>()V

    const v5, 0x7f0802e1

    iput v5, v4, Lcom/android/camera/sticker/LiveStickerInfo;->iconId:I

    const-string v5, "https://mi.com/"

    iput-object v5, v4, Lcom/android/camera/sticker/LiveStickerInfo;->url:Ljava/lang/String;

    const-string v5, "0123456789abcdef0123456789abcdef"

    iput-object v5, v4, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/camera/network/resource/LiveResource;->id:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v3, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;

    invoke-direct {v3, p0, p3}, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$3;-><init>(Lcom/android/camera/fragment/live/FragmentLiveSticker$6;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    iget p1, p1, Lcom/android/camera/network/net/base/ErrorCode;->CODE:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    const-string p1, "errorCode %d msg: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentLiveSticker"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
