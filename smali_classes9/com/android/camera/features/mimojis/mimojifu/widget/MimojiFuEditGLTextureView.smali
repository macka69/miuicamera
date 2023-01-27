.class public Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;
.super Lcom/android/camera/ui/GLTextureView;
.source "MimojiFuEditGLTextureView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;
    }
.end annotation


# static fields
.field private static final DEBUG_FPS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceRotation:I

.field private final mEglConfigChooser:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFuTextureId:I

.field private mIsStopRender:Z

.field protected mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

.field protected mtx:[F

.field protected mvp:[F

.field protected renderH:I

.field protected renderW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$1;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mEglConfigChooser:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCountingStart:J

    const/16 p2, 0x5a

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mDeviceRotation:I

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mIsStopRender:Z

    const/16 p2, 0x10

    new-array v0, p2, [F

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mtx:[F

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mvp:[F

    sget p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->renderW:I

    sget p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->renderH:I

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/GLTextureView;->setEGLContextClientVersion(I)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mEglConfigChooser:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/GLTextureView;->setEGLConfigChooser(Lcom/android/camera/ui/GLTextureView$EGLConfigChooser;)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mtx:[F

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLTextureView;->setPreserveEGLContextOnPause(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private outputFps()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCountingStart:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCountingStart:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCount:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFrameCount:I

    return-void
.end method


# virtual methods
.method public onDeviceRotationChange(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mDeviceRotation:I

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p1, p1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mIsStopRender:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->Render([BIIII)I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mFuTextureId:I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mtx:[F

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mvp:[F

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/ui/GLTextureView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    int-to-float p2, p2

    int-to-float p3, p3

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->renderW:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->renderH:I

    int-to-float v1, v1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->changeMVPMatrix([FFFFF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mvp:[F

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mProgramTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    :cond_0
    return-void
.end method

.method public setStopRender(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mIsStopRender:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStopRender :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->mIsStopRender:Z

    return-void
.end method
