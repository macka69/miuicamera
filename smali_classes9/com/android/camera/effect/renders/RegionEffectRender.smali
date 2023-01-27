.class public abstract Lcom/android/camera/effect/renders/RegionEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "RegionEffectRender.java"


# instance fields
.field private mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field private mThresholdHeight:I

.field private mThresholdWidth:I

.field protected mUniformEffectParameterH:I

.field protected mUniformEffectRectH:I

.field protected mUniformInvertRectH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->init()V

    return-void
.end method

.method private getChangeMatrix()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    iget p0, p0, Lcom/android/camera/effect/renders/Render;->mJpegOrientation:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 p0, -0x41000000    # -0.5f

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 p0, 0x3f000000    # 0.5f

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method private getEffectArray(Z)[F
    .locals 12

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->getChangeMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    new-array p1, v5, [F

    iget-object p0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v5, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    aput v7, p1, v4

    iget v4, v5, Landroid/graphics/PointF;->y:F

    aput v4, p1, v3

    iget-object v3, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    aput v4, p1, v2

    iget v2, v3, Landroid/graphics/PointF;->y:F

    aput v2, p1, v1

    iget p0, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    aput p0, p1, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v7, p1

    move-object v9, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object p0

    new-array p1, v5, [F

    iget-object v5, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    aput v6, p1, v4

    iget v4, v5, Landroid/graphics/PointF;->y:F

    aput v4, p1, v3

    iget-object v3, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    aput v4, p1, v2

    iget v2, v3, Landroid/graphics/PointF;->y:F

    aput v2, p1, v1

    iget p0, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    aput p0, p1, v0

    return-object p1
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mThresholdWidth:I

    const v1, 0x7f070252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mThresholdHeight:I

    return-void
.end method

.method private setEffectRectF(Landroid/graphics/RectF;)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, p0, v3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    aput v3, p0, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, p0, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    aput p1, p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    const/4 p1, 0x0

    aput p1, p0, v3

    aput p1, p0, v2

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, p0, v1

    aput p1, p0, v0

    :goto_0
    return-void
.end method


# virtual methods
.method protected getEffectRect(Z)[F
    .locals 9

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/effect/renders/Render;->mMirror:Z

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    rem-int/lit16 p1, p1, 0xb4

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    aget v6, v5, v3

    sub-float v6, v4, v6

    aget v7, v5, v2

    aget v8, v5, v1

    sub-float/2addr v4, v8

    aget v5, v5, v0

    invoke-direct {p1, v6, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    aget v6, v5, v3

    aget v7, v5, v2

    sub-float v7, v4, v7

    aget v8, v5, v1

    aget v5, v5, v0

    sub-float/2addr v4, v5

    invoke-direct {p1, v6, v7, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    aget v5, v4, v3

    aget v6, v4, v2

    aget v7, v4, v1

    aget v4, v4, v0

    invoke-direct {p1, v5, v6, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->getChangeMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mSnapshotEffectRect:[F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, p0, v3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    aput v3, p0, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, p0, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    aput p1, p0, v0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectController;->getEffectRectF()Landroid/graphics/RectF;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mThresholdWidth:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mThresholdHeight:I

    if-le v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    :goto_1
    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    return-object p0
.end method

.method protected getInvertFlag(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget p0, p0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result p0

    return p0
.end method

.method protected initEffectRect(Z)V
    .locals 4

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectRectH:I

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getEffectRect(Z)[F

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformInvertRectH:I

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getInvertFlag(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectParameterH:I

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getEffectArray(Z)[F

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {v0, p1, p0, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    return-void
.end method

.method protected initShader()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uEffectRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectRectH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformInvertRectH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uEffectArray"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectParameterH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->initEffectRect(Z)V

    return-void
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object p1, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    return-void
.end method
