.class public Lcom/android/camera/dualvideo/render/RenderUtil;
.super Ljava/lang/Object;
.source "RenderUtil.java"


# static fields
.field public static final ANIM_DURATION_100:I = 0x64

.field public static final ANIM_DURATION_200:I = 0xc8

.field public static final ANIM_DURATION_300:I = 0x12c

.field public static final ANIM_VALUE_MAX:I = 0x3e8

.field public static final ANIM_VALUE_MIN:I = 0x0

.field public static final BACK_PREVIEW:Landroid/util/Size;

.field public static final BLUR_SIZE:Landroid/util/Size;

.field public static final FRONT_PREVIEW:Landroid/util/Size;

.field public static final GRID_LINE_COLOR:I = 0x6affffff

.field public static final GRID_LINE_WIDTH:I

.field public static final OUTPUT_SIZE:Landroid/util/Size;

.field public static final REMOTE_SIZE:Landroid/util/Size;

.field public static final SELECT_FRAME_LINE_WIDTH:I

.field public static final SUB_CAMERA_SKIP_FRAMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RenderUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x400b851f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/dualvideo/render/RenderUtil;->SELECT_FRAME_LINE_WIDTH:I

    const v0, 0x3f3ae148

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/dualvideo/render/RenderUtil;->GRID_LINE_WIDTH:I

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->BACK_PREVIEW:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v4, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->REMOTE_SIZE:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->BLUR_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blurTex(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "blur tex  cost time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualVideoUtil"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static centerCropHorizontal([FF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p0, v2, p1, v0, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public static centerCropVertical([FF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p0, v2, v0, p1, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public static centerScaleMatrix([FLcom/android/camera/dualvideo/render/LayoutType;)[F
    .locals 1

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->getExpandRatio(Lcom/android/camera/dualvideo/render/LayoutType;)F

    move-result p1

    const v0, 0x3f8147ae

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->expandTex([FF)V

    :cond_0
    return-object p0
.end method

.method public static compare(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/render/CameraItemInterface;)I
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->getWeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/LayoutType;->getWeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/LayoutType;->getWeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x6

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/LayoutType;->getWeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p0, p1

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/FaceType;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    new-instance v2, Lcom/android/camera/effect/FrameBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    invoke-interface {p0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p2, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-static {p3}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrixNoCrop(Lcom/android/camera/dualvideo/render/FaceType;)[F

    move-result-object p3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p1, p2, p3, v4}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    invoke-interface {p0, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-interface {p0}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    invoke-virtual {v2}, Lcom/android/camera/effect/FrameBuffer;->delete()V

    return-void
.end method

.method public static drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V
    .locals 4

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    sget p1, Lcom/android/camera/dualvideo/render/RenderUtil;->GRID_LINE_WIDTH:I

    int-to-float p2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    sub-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    const p2, 0x6affffff

    invoke-direct {p1, v1, p2}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p0, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public static drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V
    .locals 3

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr p1, v2

    sget p2, Lcom/android/camera/dualvideo/render/RenderUtil;->GRID_LINE_WIDTH:I

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iput p1, v1, Landroid/graphics/Rect;->right:I

    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    const p2, 0x6affffff

    invoke-direct {p1, v1, p2}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p0, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public static enableStencilTest(I)V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0xb90

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v1, 0x400

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v1, 0x200

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/16 p0, 0x1e02

    invoke-static {p0, p0, p0}, Landroid/opengl/GLES20;->glStencilOp(III)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    const/16 p0, 0x202

    invoke-static {p0, v2, v0}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/16 p0, 0x1e00

    invoke-static {p0, p0, p0}, Landroid/opengl/GLES20;->glStencilOp(III)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_0
    return-void
.end method

.method public static expandTex([FF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    sub-float v1, v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p0, v2, p1, p1, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public static flipCenter([F)V
    .locals 9

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public static genNotCenterCropTransMatrix(FF)[F
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1, p0, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-object v0
.end method

.method public static generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {p0, v0}, Lcom/android/camera/dualvideo/render/RenderUtil;->transByFaceType(Lcom/android/camera/dualvideo/render/FaceType;[F)V

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerScaleMatrix([FLcom/android/camera/dualvideo/render/LayoutType;)[F

    invoke-static {p2, p3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getCropRatio(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)F

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerCropVertical([FF)V

    return-object v0
.end method

.method public static generatePreviewTransMatrixBasic(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerScaleMatrix([FLcom/android/camera/dualvideo/render/LayoutType;)[F

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/RenderUtil;->getCropRatio(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)F

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerCropVertical([FF)V

    return-object v0
.end method

.method public static generatePreviewTransMatrixNoCrop(Lcom/android/camera/dualvideo/render/FaceType;)[F
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {p0, v0}, Lcom/android/camera/dualvideo/render/RenderUtil;->transByFaceType(Lcom/android/camera/dualvideo/render/FaceType;[F)V

    return-object v0
.end method

.method public static getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p0, :cond_1

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/graphics/drawable/VectorDrawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unsupported drawable type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBitmap(Landroid/graphics/drawable/VectorDrawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    return-object v0
.end method

.method public static getCropRatio(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v2

    if-le p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    const p0, 0x3c23d70a

    sub-float p0, p1, p0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_2

    return v0

    :cond_2
    div-float/2addr v1, p1

    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static getExpandRatio(Lcom/android/camera/dualvideo/render/LayoutType;)F
    .locals 3

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getMinZoom()F

    move-result v0

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$F3bRKsTPFYne_m6NdwSDG2boyHQ;

    invoke-direct {v2, p0}, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$F3bRKsTPFYne_m6NdwSDG2boyHQ;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$5poIyRtvjWF50HQccbtZBho4O4E;

    invoke-direct {v1, v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$5poIyRtvjWF50HQccbtZBho4O4E;-><init>(F)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static getFrontCameraRotation()I
    .locals 3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getRecordType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$83zGXpIzsYoPdnrZ8FLsCqreIpE;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$83zGXpIzsYoPdnrZ8FLsCqreIpE;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$GjGNn0yfmAaAx3y787A4ZotLC3A;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderUtil$GjGNn0yfmAaAx3y787A4ZotLC3A;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/dualvideo/util/Assert;->check(Z)V

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public static getSelectFrame(Z)Landroid/graphics/Bitmap;
    .locals 10

    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->getUIStyle()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v3, Lcom/android/camera/dualvideo/render/RenderUtil;->SELECT_FRAME_LINE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v3, Lcom/android/camera/dualvideo/render/RenderUtil;->SELECT_FRAME_LINE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v4, v3

    sub-int/2addr p0, v3

    int-to-float v5, p0

    sub-int p0, v0, v3

    int-to-float v6, p0

    div-int/lit8 v0, v0, 0x3c

    int-to-float v8, v0

    move v3, v4

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static getSelectIndexBG()Landroid/graphics/Bitmap;
    .locals 10

    const v0, 0x41cb999a

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v6, v0

    sget v0, Lcom/android/camera/dualvideo/render/RenderUtil;->SELECT_FRAME_LINE_WIDTH:I

    int-to-float v7, v0

    int-to-float v8, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v6

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static getSubPreviewSize()Landroid/util/Size;
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->BACK_PREVIEW:Landroid/util/Size;

    return-object v0
.end method

.method private static getTextPaint(I)Landroid/text/TextPaint;
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    const v2, 0x415170a4

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setColor(I)V

    const-string p0, "mipro-regular"

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method static synthetic lambda$getExpandRatio$0(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getExpandRatio$1(FLcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mPresentZoom:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getRecordType$2(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getRecordType$3(Lcom/android/camera/dualvideo/util/UserSelectData;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmRecordLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    return-object p0
.end method

.method public static mixArea(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private static renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    new-instance v6, Lcom/android/camera/effect/FrameBuffer;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    invoke-interface {p0}, Lcom/android/gallery3d/ui/GLCanvas;->prepareBlurRenders()V

    invoke-interface {p0, v6}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    new-instance v7, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p0, v7}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-interface {p0}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    invoke-virtual {v6}, Lcom/android/camera/effect/FrameBuffer;->delete()V

    return-void
.end method

.method public static shrinkRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    new-instance v1, Landroid/graphics/Rect;

    sub-float v3, p1, v0

    float-to-int v3, v3

    sub-float v4, p0, v2

    float-to-int v4, v4

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr p0, v2

    float-to-int p0, p0

    invoke-direct {v1, v3, v4, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->getTextPaint(I)Landroid/text/TextPaint;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    const p1, 0x418b999a

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private static transByFaceType(Lcom/android/camera/dualvideo/render/FaceType;[F)V
    .locals 11

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderUtil$1;->$SwitchMap$com$android$camera$dualvideo$render$FaceType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v6, -0x41000000    # -0.5f

    const/4 v7, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v8, v2, v2, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p1, v8, v10, v9, v10}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {p1, v8, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v8, v2, v2, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    invoke-static {p1, v8, v9, v10, v10}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {p1, v8, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    :cond_2
    invoke-static {p1, v8, v2, v2, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/dualvideo/render/RenderUtil;->getFrontCameraRotation()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    invoke-static {p1, v8, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :goto_0
    return-void
.end method
