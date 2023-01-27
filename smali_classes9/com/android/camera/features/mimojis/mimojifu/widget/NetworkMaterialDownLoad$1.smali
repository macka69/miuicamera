.class Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;
.super Lcom/android/camera/resource/SimpleNetworkDownloadRequest;
.source "NetworkMaterialDownLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->downloadMaterial(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/SimpleNetworkDownloadRequest<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/resource/SimpleNetworkDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResponseProgress(JJ)V
    .locals 2

    const-wide/16 v0, 0x5a

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-int p1, p1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->access$000(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;->onProgress(I)V

    return-void
.end method
