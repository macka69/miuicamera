.class Lcom/android/camera/fragment/live/FragmentLiveSticker$6$2;
.super Ljava/lang/Object;
.source "FragmentLiveSticker.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSticker$6;->onResponse([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$6;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker$6;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$2;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$6;

    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$6$2;->val$list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/sticker/LiveStickerInfo;

    invoke-static {}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->getInstance()Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera/network/resource/LiveResource;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;->getDownloadState(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/camera/sticker/LiveStickerInfo;->downloadState:I

    invoke-virtual {v1}, Lcom/android/camera/sticker/LiveStickerInfo;->getDownloadState()I

    iget-object v2, v1, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/live/FragmentLiveSticker;->access$200()[Lcom/android/camera/sticker/LiveStickerInfo;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    iget-object v4, v4, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->STICKER_RESOURCE_DIR:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove deprecated sticker "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentLiveSticker"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
