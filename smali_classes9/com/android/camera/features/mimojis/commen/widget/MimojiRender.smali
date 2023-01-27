.class public Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "MimojiRender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MimojiRender"


# instance fields
.field mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

.field private mRenderHeight:F

.field private mRenderWidth:F

.field private mRenderX:F

.field private mRenderY:F

.field protected mvp:[F

.field protected tex:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mvp:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/16 p1, 0x10

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mvp:[F

    return-void
.end method

.method public static matrixForCrop([FFFFF)V
    .locals 3

    div-float v0, p1, p2

    div-float/2addr p3, p4

    cmpg-float p4, v0, p3

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-gez p4, :cond_0

    div-float/2addr p1, p3

    sub-float p3, p2, p1

    mul-float/2addr v0, p2

    div-float/2addr p3, v0

    div-float/2addr p1, p2

    move p4, p3

    move p2, v1

    move p3, v2

    goto :goto_0

    :cond_0
    mul-float/2addr p2, p3

    sub-float p3, p1, p2

    mul-float/2addr v0, p1

    div-float/2addr p3, v0

    div-float/2addr p2, p1

    move p1, v1

    move p4, v2

    :goto_0
    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput v2, p0, p2

    const/4 p2, 0x2

    aput v2, p0, p2

    const/4 p2, 0x3

    aput v2, p0, p2

    const/4 p2, 0x4

    aput v2, p0, p2

    const/4 p2, 0x5

    aput p1, p0, p2

    const/4 p1, 0x6

    aput v2, p0, p1

    const/4 p1, 0x7

    aput v2, p0, p1

    const/16 p1, 0x8

    aput v2, p0, p1

    const/16 p1, 0x9

    aput v2, p0, p1

    const/16 p1, 0xa

    aput v1, p0, p1

    const/16 p1, 0xb

    aput v2, p0, p1

    const/16 p1, 0xc

    aput p3, p0, p1

    const/16 p1, 0xd

    aput p4, p0, p1

    const/16 p1, 0xe

    aput v2, p0, p1

    const/16 p1, 0xf

    aput v1, p0, p1

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    :cond_0
    invoke-super {p0}, Lcom/android/camera/effect/renders/ShaderRender;->destroy()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/ShaderRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unsupported target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    int-to-float v2, v0

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    int-to-float v3, v0

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureWidth:I

    int-to-float v4, v0

    iget p1, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureHeight:I

    int-to-float v5, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->drawTexture(IFFFF)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected drawTexture(IFFFF)V
    .locals 9

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_4

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v0, p2, p3

    if-nez v0, :cond_2

    div-float v0, p5, p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    div-float v0, v1, v0

    :goto_0
    move v6, v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    neg-float v5, v6

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    invoke-static {v0, p4, p5, p2, p3}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->matrixForCrop([FFFFF)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->tex:[F

    sget-object p3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p2, p1, p0, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    goto :goto_2

    :cond_2
    div-float v0, p3, p2

    div-float v1, p5, p4

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->changeMVPMatrix([FFFFF)[F

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mvp:[F

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    sget-object p3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    :goto_2
    return-void
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initShader()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    iput v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->getLocations()V

    return-void
.end method

.method protected initSupportAttriList()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected initVertexData()V
    .locals 0

    return-void
.end method

.method public setViewportSize(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mRenderWidth:F

    int-to-float p1, p2

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->mRenderHeight:F

    return-void
.end method
