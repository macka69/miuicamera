.class Lcom/android/camera/module/impl/component/FilmDreamImpl$1;
.super Ljava/lang/Object;
.source "FilmDreamImpl.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/FilmDreamImpl;->initPreview(IIILcom/android/camera/CameraScreenNail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$000(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraScreenNail;->notifyFrameAvailable(I)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$100(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    return-void
.end method
