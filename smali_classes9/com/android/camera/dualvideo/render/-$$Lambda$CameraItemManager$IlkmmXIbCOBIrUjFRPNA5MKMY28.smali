.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$IlkmmXIbCOBIrUjFRPNA5MKMY28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$IlkmmXIbCOBIrUjFRPNA5MKMY28;->f$0:Lcom/android/camera/dualvideo/render/CameraItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$IlkmmXIbCOBIrUjFRPNA5MKMY28;->f$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$addCameraItem$41(Lcom/android/camera/dualvideo/render/CameraItem;)V

    return-void
.end method
