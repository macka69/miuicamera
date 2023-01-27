.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoSkyModule$iFU7DWqckL9cKyLhIF0Mt8XQZj4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/magicvideosky/MediaEffectCamera;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/magicvideosky/MediaEffectCamera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$iFU7DWqckL9cKyLhIF0Mt8XQZj4;->f$0:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$iFU7DWqckL9cKyLhIF0Mt8XQZj4;->f$0:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-static {p0}, Lcom/android/camera/module/VideoSkyModule;->lambda$releaseVideoSkySDK$2(Lcom/xiaomi/magicvideosky/MediaEffectCamera;)V

    return-void
.end method
