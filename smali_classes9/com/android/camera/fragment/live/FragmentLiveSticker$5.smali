.class Lcom/android/camera/fragment/live/FragmentLiveSticker$5;
.super Ljava/lang/Object;
.source "FragmentLiveSticker.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSticker;->onItemSelected(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

.field final synthetic val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker;Lcom/android/camera/sticker/LiveStickerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$5;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$5;->val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->STICKER_RESOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$5;->val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;

    iget-object v1, v1, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->STICKER_RESOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$5;->val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;

    iget-object p0, p0, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v1, 0x8000

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/android/camera/Util;->verifyZip(Ljava/lang/String;Ljava/lang/String;ILio/reactivex/ObservableEmitter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw p0
.end method
