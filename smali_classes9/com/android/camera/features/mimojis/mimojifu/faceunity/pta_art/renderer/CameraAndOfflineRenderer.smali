.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;
.source "CameraAndOfflineRenderer.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;


# static fields
.field public static final MODE_CAMERA:I = 0x1

.field public static final MODE_OFFLINE:I


# instance fields
.field private cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

.field private fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

.field private inputImageFormat:I

.field protected isChangeCameraStart:Z

.field private isOpenCamera:Z

.field protected isOpenCameraStart:Z

.field private mode:I

.field protected texMtx:[F


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->mode:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->texMtx:[F

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isChangeCameraStart:Z

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isOpenCameraStart:Z

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->setCameraListener(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$CameraListener;)V

    return-void
.end method

.method private onDrawCamera()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->getCameraNV21Byte()[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->drawToScreen()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->isCameraFront()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->rotateCameraImage(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->texMtx:[F

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->updateTexImage([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->getCameraNV21Byte()[B

    move-result-object v2

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTexId:I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->getCameraWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->getCameraHeight()I

    move-result v5

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->inputImageFormat:I

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;->onDrawFrame([BIIII)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFuTextureId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTexId:I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->getCameraWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->getCameraHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->texMtx:[F

    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->drawFBO(III[F[F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFuTextureId:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->drawToScreen()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->startIntent()V

    :catch_0
    return-void
.end method

.method private startIntent()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isOpenCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isOpenCamera:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public changeCamera()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isChangeCamera:Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->waitIfDraw()V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->changeCamera()V

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isChangeCameraStart:Z

    return-void
.end method

.method public drawToScreen()V
    .locals 3

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFuTextureId:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mtx:[F

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mvp:[F

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    :cond_0
    return-void
.end method

.method public onCameraChange(ZI)V
    .locals 0

    return-void
.end method

.method public onDraw()V
    .locals 2

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->mode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->onDrawCamera()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->onDrawOffline()V

    :goto_0
    return-void
.end method

.method public onDrawEnd()V
    .locals 0

    return-void
.end method

.method public onDrawOffline()V
    .locals 7

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mOnRendererStatusListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderW:I

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderH:I

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->inputImageFormat:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;->onDrawFrame([BIIII)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mFuTextureId:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->programTexture2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mtx:[F

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mvp:[F

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/ProgramTexture2d;->drawFrame(I[F[F)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->waitIfDraw()V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->releaseCamera()V

    :goto_0
    return-void
.end method

.method public onPreviewFrame(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->inputImageFormat:I

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isOpenCameraStart:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isOpenCamera:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isOpenCameraStart:Z

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isChangeCameraStart:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isChangeCameraStart:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isChangeCamera:Z

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isNeedStopDrawFrame:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->requestRender()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->waitIfDraw()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->openCamera()V

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isOpenCameraStart:Z

    :goto_0
    return-void
.end method

.method public setMode(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->mode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->waitIfDraw()V

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->mode:I

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTexId:I

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->setCameraTextureId(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->openCameraFront()V

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->isOpenCameraStart:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->setCameraTextureId(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->releaseCamera()V

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isNeedStopDrawFrame:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mGLTextureView:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->requestRender()V

    :cond_3
    :goto_0
    return-void
.end method

.method public surfaceChanged(II)V
    .locals 3

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    int-to-float p1, p1

    int-to-float p2, p2

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderW:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->renderH:I

    int-to-float v2, v2

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->changeMVPMatrix([FFFFF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mvp:[F

    return-void
.end method

.method public surfaceCreated()V
    .locals 2

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->mTexId:I

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->setCameraTextureId(I)V

    :goto_0
    return-void
.end method

.method public surfaceDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->isModeChange:Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->waitIfDraw()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->cameraHelper:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->setCameraTextureId(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/renderer/CameraAndOfflineRenderer;->fboUtils:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/FBOUtils;

    :cond_0
    return-void
.end method
