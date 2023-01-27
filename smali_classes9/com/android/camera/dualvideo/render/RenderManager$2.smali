.class Lcom/android/camera/dualvideo/render/RenderManager$2;
.super Ljava/lang/Object;
.source "RenderManager.java"

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/render/RenderManager;->genOrUpdateRenderSource(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lio/reactivex/CompletableEmitter;)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/render/RenderManager;

.field final synthetic val$source:Lcom/android/camera/dualvideo/render/AuxRenderSource;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/render/RenderManager;Lcom/android/camera/dualvideo/render/AuxRenderSource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager$2;->this$0:Lcom/android/camera/dualvideo/render/RenderManager;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/RenderManager$2;->val$source:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageUpdated(Lcom/android/camera/dualvideo/util/RenderSourceType;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager$2;->val$source:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->canDraw()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager$2;->this$0:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-static {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->access$000(Lcom/android/camera/dualvideo/render/RenderManager;)Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;->onAuxSourceImageAvailable()V

    :cond_0
    return-void
.end method

.method public onNewStreamAvailable(Lcom/android/camera/dualvideo/util/RenderSourceType;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/dualvideo/render/RenderManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewStreamAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager$2;->this$0:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->isDrawBlur()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager$2;->this$0:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->updateTextureId()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderManager$2;->this$0:Lcom/android/camera/dualvideo/render/RenderManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->enableDrawBlur(Z)V

    :cond_0
    return-void
.end method
