.class Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "CameraItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/render/CameraItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderTypeChangeAnimListener"
.end annotation


# instance fields
.field private final dstRenderArea:Landroid/graphics/Rect;

.field private final srcRenderArea:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/RegionHelper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public animatePreview(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderArea:Landroid/graphics/Rect;

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    invoke-static {v0, v1, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->mixArea(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-static {v1, v2, v3, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    sget-object p1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->animatePreview(I)V

    if-eqz p5, :cond_0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$402(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    :cond_0
    return-void
.end method
