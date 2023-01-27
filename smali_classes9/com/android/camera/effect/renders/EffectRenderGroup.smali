.class public Lcom/android/camera/effect/renders/EffectRenderGroup;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "EffectRenderGroup.java"

# interfaces
.implements Lcom/android/camera/effect/EffectController$EffectChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectRenderGroup"


# instance fields
.field private mEffectId:I

.field private mEffectPopup:Ljava/lang/Boolean;

.field private mFirstFrameDrawn:Z

.field private mIsFocusPeakEnabled:Z

.field private mIsKaleidoscopeEnabled:Z

.field private mIsMakeupEnabled:Z

.field private mIsZebraEnabled:Z

.field private mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

.field private mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

.field private mRenderChanged:Ljava/lang/Boolean;

.field private final mRenderChangedLock:Ljava/lang/Object;

.field private mTiltShiftMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChangedLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectPopup:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    iget-object p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void
.end method

.method private drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getBlurAnimationValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_0
    return-void
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFirstFrameDrawn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFirstFrameDrawn:Z

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-boolean v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->updatePreviewSecondRender(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setUsedMiddleBuffer(Z)V

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return v1
.end method

.method private fetchRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    iget-object p0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getTiltShitRender()Lcom/android/camera/effect/renders/Render;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "circle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    const-string v1, "parallel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private removeCache(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->removeRender(I)V

    return-void
.end method

.method private updatePreviewSecondRender(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectPopup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    const-string v3, "before updatePreviewSecondRender"

    invoke-static {v2, v3}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->needDestroyMakeup()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-direct {p0, v2}, Lcom/android/camera/effect/renders/EffectRenderGroup;->removeCache(I)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/EffectController;->setDestroyMakeup(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsMakeupEnabled:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isBeautyFrameReady()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsKaleidoscopeEnabled:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_KALEIDOSCOPE:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getCurrentKaleidoscope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/Render;->setKaleidoscope(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsZebraEnabled:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_ZEBRA:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_4
    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_5
    if-nez p1, :cond_7

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->getTiltShitRender()Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsFocusPeakEnabled:Z

    if-eqz v1, :cond_7

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_PEAKINGMF:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewSecondRender:Lcom/android/camera/effect/renders/PipeRender;

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectPopup:Ljava/lang/Boolean;

    sget-object p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    const-string p1, "after updatePreviewSecondRender"

    invoke-static {p0, p1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 3

    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->prepareCopyBlurTexture()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result p0

    return p0
.end method

.method public varargs onEffectChanged([I)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget v5, p1, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isKaleidoscopeEnable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsKaleidoscopeEnabled:Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawExposure()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsZebraEnabled:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isDrawTilt()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v5

    const/16 v6, 0xa0

    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTiltShiftMode:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsFocusPeakEnabled:Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isMakeupEnable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIsMakeupEnabled:Z

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v6}, Lcom/android/camera/effect/EffectController;->getEffectForPreview(Z)I

    move-result v5

    iput v5, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    sget-object v5, Lcom/android/camera/effect/renders/EffectRenderGroup;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEffectChanged: EFFECT_CHANGE_FILTER mEffectId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRealtimePreviewFilterChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectId:I

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenderChanged:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
