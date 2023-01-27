.class Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "CameraItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/render/CameraItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShrinkAnimListener"
.end annotation


# instance fields
.field final mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private final srcRenderArea:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public animatePreview(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const v1, 0x3d4ccccd

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->shrinkRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-direct {v1, v2, v0, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    sget-object p1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->animatePreview(I)V

    if-eqz p5, :cond_0

    if-nez p3, :cond_0

    const-string p1, "CameraItem"

    const-string p2, "onUpdate: isCompleted"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$402(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$502(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    :cond_0
    return-void
.end method
