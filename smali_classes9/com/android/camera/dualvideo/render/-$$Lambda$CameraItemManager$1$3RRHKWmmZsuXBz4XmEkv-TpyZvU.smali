.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$3RRHKWmmZsuXBz4XmEkv-TpyZvU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/CameraItemManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$3RRHKWmmZsuXBz4XmEkv-TpyZvU;->f$0:Lcom/android/camera/dualvideo/render/CameraItemManager$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$3RRHKWmmZsuXBz4XmEkv-TpyZvU;->f$0:Lcom/android/camera/dualvideo/render/CameraItemManager$1;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager$1;->lambda$onUpdated$1$CameraItemManager$1(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
