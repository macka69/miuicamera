.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$rqZK8huG9KkgYm_BsZXdK0hdri0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$rqZK8huG9KkgYm_BsZXdK0hdri0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$rqZK8huG9KkgYm_BsZXdK0hdri0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$printTexId$29(Ljava/lang/StringBuilder;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
