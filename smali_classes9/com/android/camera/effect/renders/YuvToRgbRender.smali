.class public Lcom/android/camera/effect/renders/YuvToRgbRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "YuvToRgbRender.java"


# static fields
.field private static final DUMP_TEXTURE:Z = false

.field private static final FRAG:Ljava/lang/String; = "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D uYTexture; \nuniform sampler2D uUVTexture; \nuniform float uMtkPlatform; \nvoid main (void){ \n   float r, g, b, y, u, v; \n   y = texture2D(uYTexture, vTexCoord).r; \n   if(uMtkPlatform > 0.5){\n       u = texture2D(uUVTexture, vTexCoord).a - 0.5; \n       v = texture2D(uUVTexture, vTexCoord).r - 0.5;    }else {\n       v = texture2D(uUVTexture, vTexCoord).a - 0.5; \n       u = texture2D(uUVTexture, vTexCoord).r - 0.5; \n   }\n   r = y + 1.402 * v;\n   g = y - 0.34414 * u - 0.71414 * v;\n   b = y + 1.772 * u;\n   gl_FragColor = vec4(r, g, b, 1); \n} \n"

.field private static final TAG:Ljava/lang/String; = "YuvToRgbRender"

.field private static final TEXTURES:[F

.field private static final VERTICES:[F


# instance fields
.field private mUniformMTKPlatform:I

.field private mUniformUVTexture:I

.field private mUniformYTexture:I

.field private mYuvTextureIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/effect/renders/YuvToRgbRender;->VERTICES:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TEXTURES:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method private drawTexture([IFFFF)V
    .locals 3

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/Render;->updateViewport()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    iget-object p2, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p4, p5, p3}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    aget p2, p1, v0

    const/16 p3, 0xde1

    const/4 p4, -0x1

    if-eq p2, p4, :cond_0

    const p2, 0x84c0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget p2, p1, v0

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p2, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformYTexture:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    const/4 p2, 0x1

    aget p5, p1, p2

    if-eq p5, p4, :cond_1

    const p4, 0x84c1

    invoke-static {p4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget p1, p1, p2

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformUVTexture:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/YuvToRgbRender;->initShaderValue()V

    const/4 p1, 0x5

    const/4 p2, 0x4

    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object p0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {p0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 11

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/ShaderRender;->isAttriSupported(I)Z

    move-result v1

    const/4 v6, 0x0

    const-string/jumbo v2, "unsupported target "

    if-nez v1, :cond_0

    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v1

    const/16 v3, 0xb

    const/4 v7, 0x1

    if-eq v1, v3, :cond_1

    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v10, p1

    check-cast v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    iget-object v1, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    :cond_2
    iget-object v1, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v10}, Lcom/android/camera/effect/renders/YuvToRgbRender;->genMiYuvTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V

    sget-object v1, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "yuv image is not available!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v1, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    if-nez v1, :cond_4

    iget v1, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    if-nez v1, :cond_4

    invoke-virtual {p0, v10}, Lcom/android/camera/effect/renders/YuvToRgbRender;->genYUVTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v10}, Lcom/android/camera/effect/renders/YuvToRgbRender;->genBlockYUVTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V

    :goto_0
    iget v1, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    if-nez v1, :cond_5

    iget v1, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/YuvToRgbRender;->drawTexture([IFFFF)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    int-to-float v4, v4

    iget v5, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    int-to-float v5, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/YuvToRgbRender;->drawTexture([IFFFF)V

    :goto_1
    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v10, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    aput-object v3, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "draw: size=%s time=%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v7
.end method

.method public genBlockYUVTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V
    .locals 3

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOffsetY:I

    iget p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOffsetUV:I

    iget-object p0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/camera/effect/ShaderUtil;->loadYuvImageTextures(IIII[I)V

    return-void
.end method

.method public genMiYuvTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V
    .locals 3

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    iget v1, v0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iget v2, v0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    invoke-virtual {v0}, Lcom/android/camera/effect/MiYuvImage;->getYBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    invoke-virtual {p1}, Lcom/android/camera/effect/MiYuvImage;->getUVBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    invoke-static {v0, p1, v1, v2, p0}, Lcom/android/camera/effect/ShaderUtil;->loadYuvToTextures(Ljava/nio/Buffer;Ljava/nio/Buffer;II[I)V

    :cond_0
    return-void
.end method

.method public genYUVTextures(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)V
    .locals 5

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v2, v0, v1}, Lcom/xiaomi/camera/base/ImageUtil;->removePadding(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_1

    :cond_1
    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v1, 0x2

    invoke-static {p1, v3, v4}, Lcom/xiaomi/camera/base/ImageUtil;->removePadding(Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    invoke-static {v2, p1, v0, v1, p0}, Lcom/android/camera/effect/ShaderUtil;->loadYuvToTextures(Ljava/nio/Buffer;Ljava/nio/Buffer;II[I)V

    return-void
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 0

    const-string p0, "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D uYTexture; \nuniform sampler2D uUVTexture; \nuniform float uMtkPlatform; \nvoid main (void){ \n   float r, g, b, y, u, v; \n   y = texture2D(uYTexture, vTexCoord).r; \n   if(uMtkPlatform > 0.5){\n       u = texture2D(uUVTexture, vTexCoord).a - 0.5; \n       v = texture2D(uUVTexture, vTexCoord).r - 0.5;    }else {\n       v = texture2D(uUVTexture, vTexCoord).a - 0.5; \n       u = texture2D(uUVTexture, vTexCoord).r - 0.5; \n   }\n   r = y + 1.402 * v;\n   g = y - 0.34414 * u - 0.71414 * v;\n   b = y + 1.772 * u;\n   gl_FragColor = vec4(r, g, b, 1); \n} \n"

    return-object p0
.end method

.method protected initShader()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/YuvToRgbRender;->getFragShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uYTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformYTexture:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uUVTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformUVTexture:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uMtkPlatform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformMTKPlatform:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    sget-object v1, Lcom/android/camera/effect/renders/YuvToRgbRender;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object p0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mYuvTextureIds:[I

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "genTexture: %d %d"

    invoke-static {v3, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/effect/renders/YuvToRgbRender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mProgram = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected initShaderValue()V
    .locals 12

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v6, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    iget-object v11, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMatrix()[F

    move-result-object v1

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getXiaomiYuvFormat()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformMTKPlatform:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_2

    :cond_2
    :goto_1
    iget p0, p0, Lcom/android/camera/effect/renders/YuvToRgbRender;->mUniformMTKPlatform:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_2
    return-void
.end method

.method protected initSupportAttriList()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected initVertexData()V
    .locals 3

    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/YuvToRgbRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/android/camera/effect/renders/YuvToRgbRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/android/camera/effect/renders/YuvToRgbRender;->TEXTURES:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
