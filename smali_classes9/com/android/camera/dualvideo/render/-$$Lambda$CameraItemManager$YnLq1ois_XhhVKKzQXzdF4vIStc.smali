.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$YnLq1ois_XhhVKKzQXzdF4vIStc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$YnLq1ois_XhhVKKzQXzdF4vIStc;->f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$YnLq1ois_XhhVKKzQXzdF4vIStc;->f$0:Lcom/android/camera/dualvideo/render/CameraItemManager;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$updateTextureId$10$CameraItemManager(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
