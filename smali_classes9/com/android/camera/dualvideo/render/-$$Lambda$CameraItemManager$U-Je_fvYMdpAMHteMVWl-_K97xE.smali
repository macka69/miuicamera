.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$U-Je_fvYMdpAMHteMVWl-_K97xE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$U-Je_fvYMdpAMHteMVWl-_K97xE;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$U-Je_fvYMdpAMHteMVWl-_K97xE;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$saveSelectedStatus$25(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
