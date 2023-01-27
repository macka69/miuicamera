.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$bwbkrU8L3_7TFHXLGXwWWUMG0BM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera2/Camera2Proxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$bwbkrU8L3_7TFHXLGXwWWUMG0BM;->f$0:Lcom/android/camera2/Camera2Proxy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$bwbkrU8L3_7TFHXLGXwWWUMG0BM;->f$0:Lcom/android/camera2/Camera2Proxy;

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$applyZoomForDevices$30(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V

    return-void
.end method
