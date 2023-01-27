.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;
.super Ljava/lang/Object;
.source "FBOUtils.java"


# instance fields
.field private fboHeight:I

.field private fboId:[I

.field private fboTex:[I

.field private fboWidth:I

.field private mFboId:[I

.field private mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

.field private mOriginViewPort:[I

.field private num:I

.field private programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

.field private renderBufferId:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    new-instance v1, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    return-void
.end method

.method private createFBO(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboWidth:I

    if-ne v1, v10, :cond_0

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboHeight:I

    if-eq v1, v11, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->deleteFBO()V

    :cond_1
    iput v10, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboWidth:I

    iput v11, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboHeight:I

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-nez v1, :cond_2

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    new-array v3, v1, [I

    iput-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    new-array v3, v1, [I

    iput-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    const/4 v12, 0x0

    invoke-static {v1, v2, v12}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    invoke-static {v1, v2, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    invoke-static {v1, v2, v12}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    move v13, v12

    :goto_0
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    array-length v2, v1

    if-ge v13, v2, :cond_2

    aget v1, v1, v13

    const v14, 0x8d40

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget v1, v1, v13

    const/16 v15, 0xde1

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    aget v1, v1, v13

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v1, 0x81a5

    invoke-static {v2, v1, v10, v11}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v1, 0x8ce0

    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget v3, v3, v13

    invoke-static {v14, v1, v15, v3, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v1, 0x8d00

    iget-object v3, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    aget v3, v3, v13

    invoke-static {v14, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    invoke-static {v15, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    invoke-static {v14, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public deleteFBO()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->num:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->renderBufferId:[I

    :cond_1
    :goto_0
    return-void
.end method

.method public drawFBO(III[F[F)I
    .locals 3

    invoke-direct {p0, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->createFBO(II)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/16 v1, 0xba2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    aget v0, v0, v2

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v2, v2, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    invoke-direct {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;-><init>()V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    invoke-virtual {p2, p1, p4, p5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;->drawFrame(I[F[F)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    aget p2, p1, v2

    const/4 p3, 0x1

    aget p3, p1, p3

    const/4 p4, 0x2

    aget p4, p1, p4

    const/4 p5, 0x3

    aget p1, p1, p5

    invoke-static {p2, p3, p4, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget p0, p0, v2

    return p0
.end method

.method public drawFBO(Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;)I
    .locals 5

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->createFBO(II)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    const/16 v1, 0xba2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboId:[I

    aget v0, v0, v2

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mFboId:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mOriginViewPort:[I

    aget v0, p1, v2

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-static {v0, v1, v3, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->fboTex:[I

    aget p0, p0, v2

    return p0
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->deleteFBO()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;->destroy()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->mMimojiRender:Lcom/android/camera/features/mimojis/commen/widget/MimojiRender;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->release()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->programTextureOES:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTextureOES;

    :cond_1
    return-void
.end method
