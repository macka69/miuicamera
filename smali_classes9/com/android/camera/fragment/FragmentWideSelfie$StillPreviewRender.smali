.class Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;
.super Ljava/lang/Object;
.source "FragmentWideSelfie.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentWideSelfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StillPreviewRender"
.end annotation


# instance fields
.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mHandler:Landroid/os/Handler;

.field private mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

.field mTransform:[F

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentWideSelfie;


# direct methods
.method private constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mTransform:[F

    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    new-instance p1, Lcom/android/gallery3d/ui/GLPaint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {p1, v1, v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>(FI)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie;Lcom/android/camera/fragment/FragmentWideSelfie$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;-><init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_0

    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v3

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v4

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v5, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {v5}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$200(Lcom/android/camera/fragment/FragmentWideSelfie;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {v6}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$200(Lcom/android/camera/fragment/FragmentWideSelfie;)Lcom/android/camera/ui/GLTextureView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    invoke-interface {v2, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    iget-object v8, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mTransform:[F

    invoke-virtual {v7, v8}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v7, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    iget-object v8, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mTransform:[F

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget-object v11, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v5

    int-to-float v15, v6

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->init(FFFFLcom/android/gallery3d/ui/GLPaint;)Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$300(Lcom/android/camera/fragment/FragmentWideSelfie;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-static {v1, v10}, Lcom/android/camera/fragment/FragmentWideSelfie;->access$302(Lcom/android/camera/fragment/FragmentWideSelfie;Z)Z

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender$1;

    invoke-direct {v2, v0}, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender$1;-><init>(Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public setPaintColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    return-void
.end method
