.class public Lcom/android/camera/effect/renders/PipeRender;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "PipeRender.java"


# static fields
.field private static final DUMP_TEXTURE:Z = false

.field private static final TAG:Ljava/lang/String; = "PipeRender"


# instance fields
.field private mBufferHeight:I

.field private mBufferMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/effect/DoubleBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferWidth:I

.field private mDoubleBuffer:Lcom/android/camera/effect/DoubleBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferMap:Ljava/util/HashMap;

    return-void
.end method

.method private declared-synchronized destroyFrameBuffers()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyFrameBuffers: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/DoubleBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/DoubleBuffer;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mDoubleBuffer:Lcom/android/camera/effect/DoubleBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public deleteBuffer()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRender;->destroyFrameBuffers()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/camera/effect/renders/PipeRender;->mDoubleBuffer:Lcom/android/camera/effect/DoubleBuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    const-string v1, "framebuffer hasn\'t been initialized"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v4

    const/4 v5, 0x5

    const/16 v6, 0xd

    const/16 v7, 0xb

    if-eq v4, v5, :cond_5

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    sget-object v5, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unsupported target "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    move v9, v5

    goto :goto_1

    :cond_1
    move-object v5, v1

    check-cast v5, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;

    iget v9, v5, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewWidth:I

    iget v10, v5, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mViewHeight:I

    iget v11, v5, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureWidth:I

    iget v12, v5, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTextureHeight:I

    invoke-static {v9, v10, v11, v12}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v9, v5, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mTexId:I

    iget-boolean v5, v5, Lcom/android/camera/effect/draw_mode/DrawMimoijTexAttribute;->mIsSnapshot:Z

    goto :goto_1

    :cond_2
    move-object v5, v1

    check-cast v5, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    iget v9, v5, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    if-nez v9, :cond_3

    iget v9, v5, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    if-nez v9, :cond_3

    iget-object v5, v5, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-static {v5}, Lcom/android/camera/dualvideo/render/RectUtil;->create(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget v9, v5, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    iget v5, v5, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    invoke-static {v9, v5}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    move v9, v3

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v1

    check-cast v5, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget-object v9, v5, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v9, v5, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    iget-boolean v5, v5, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    goto :goto_1

    :cond_5
    move-object v5, v1

    check-cast v5, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v9, v5, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, v5, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v9

    iget-boolean v5, v5, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    iget v10, v0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    iget v11, v0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenders()Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_d

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    move v15, v3

    :goto_2
    if-ge v15, v14, :cond_d

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/camera/effect/renders/Render;

    add-int/lit8 v8, v14, -0x1

    if-ge v15, v8, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    sget-object v6, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v12

    const-string v12, "renders["

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " start"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_8

    iget-object v6, v0, Lcom/android/camera/effect/renders/PipeRender;->mDoubleBuffer:Lcom/android/camera/effect/DoubleBuffer;

    invoke-virtual {v6}, Lcom/android/camera/effect/DoubleBuffer;->getOutputBuffer()Lcom/android/camera/effect/FrameBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    sget-object v6, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    const-string v7, "begin bind output buffer"

    invoke-static {v6, v7}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkFrameBufferStatusAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-nez v15, :cond_a

    const/16 v6, 0xb

    const/16 v7, 0xd

    if-eq v6, v4, :cond_9

    if-eq v7, v4, :cond_9

    if-eqz v8, :cond_9

    new-instance v13, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    invoke-static {v10, v11}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v13, v9, v12, v5}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(ILandroid/graphics/Rect;Z)V

    invoke-virtual {v3, v13}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v3, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_4

    :cond_a
    const/16 v6, 0xb

    const/16 v7, 0xd

    iget-object v12, v0, Lcom/android/camera/effect/renders/PipeRender;->mDoubleBuffer:Lcom/android/camera/effect/DoubleBuffer;

    invoke-virtual {v12}, Lcom/android/camera/effect/DoubleBuffer;->getInputBuffer()Lcom/android/camera/effect/FrameBuffer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v12

    invoke-virtual {v3, v12, v10, v11}, Lcom/android/camera/effect/renders/Render;->setPreviousFrameBufferInfo(III)V

    if-nez v8, :cond_b

    iget-object v12, v13, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_b
    invoke-virtual {v3, v13}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :goto_4
    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    sget-object v3, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    const-string v8, "end bind output buffer"

    invoke-static {v3, v8}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkFrameBufferStatusAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRender;->mDoubleBuffer:Lcom/android/camera/effect/DoubleBuffer;

    invoke-virtual {v8}, Lcom/android/camera/effect/DoubleBuffer;->getOutputBuffer()Lcom/android/camera/effect/FrameBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v8

    invoke-static {v10, v11}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v3, v8, v12, v5}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(ILandroid/graphics/Rect;Z)V

    iget-object v8, v0, Lcom/android/camera/effect/renders/PipeRender;->mDoubleBuffer:Lcom/android/camera/effect/DoubleBuffer;

    invoke-virtual {v8}, Lcom/android/camera/effect/DoubleBuffer;->swapBuffer()V

    move-object v13, v3

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v17

    const/4 v3, 0x0

    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public drawOnExtraFrameBufferOnce(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenders()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/renders/Render;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "renders more than 1: %d"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v3

    :cond_5
    :goto_2
    sget-object p0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "invalid size: %dx%d"

    invoke-static {p1, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public reInitFrameBuffers(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/DoubleBuffer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/effect/DoubleBuffer;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/effect/DoubleBuffer;-><init>(II)V

    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reInitFrameBuffers: bufferKey="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRender;->mDoubleBuffer:Lcom/android/camera/effect/DoubleBuffer;

    return-void
.end method

.method public setFrameBufferSize(II)V
    .locals 3

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/effect/renders/PipeRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFrameBufferSize w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferWidth:I

    iput p2, p0, Lcom/android/camera/effect/renders/PipeRender;->mBufferHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/PipeRender;->reInitFrameBuffers(II)V

    :cond_1
    return-void
.end method
