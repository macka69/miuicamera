.class Lcom/android/camera/fragment/live/FragmentLiveSticker$7$2;
.super Ljava/lang/Object;
.source "FragmentLiveSticker.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSticker$7;->onFinish(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$7;

.field final synthetic val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker$7;Lcom/android/camera/sticker/LiveStickerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$2;->this$1:Lcom/android/camera/fragment/live/FragmentLiveSticker$7;

    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$2;->val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->STICKER_RESOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$7$2;->val$sticker:Lcom/android/camera/sticker/LiveStickerInfo;

    iget-object p0, p0, Lcom/android/camera/sticker/LiveStickerInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/FileUtils;->STICKER_RESOURCE_DIR:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/module/impl/component/FileUtils;->UnZipFileFolder(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
