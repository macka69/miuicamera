.class public Lcom/android/camera/dualvideo/render/CameraItem;
.super Ljava/lang/Object;
.source "CameraItem.java"

# interfaces
.implements Lcom/android/camera/dualvideo/render/CameraItemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;,
        Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;
    }
.end annotation


# static fields
.field private static final HANDLER_OFFSET:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraItem"


# instance fields
.field private mAlpha:F

.field private final mDrawAttriList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/camera/dualvideo/render/ContentType;",
            "Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceType:Lcom/android/camera/dualvideo/render/FaceType;

.field private mGridWindowFlagAlpha:F

.field private mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

.field private mGridWindowFlagDstAlpha:F

.field private final mGridWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field private mIsAnimating:Z

.field private mIsPressedInGridWindow:Z

.field private mIsVisible:Z

.field private mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field private mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field private mSelectedFrameAlpha:F

.field private mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

.field private mSelectedFrameDstAlpha:F

.field private mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

.field private mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/FaceType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/camera/dualvideo/render/ContentType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceType:Lcom/android/camera/dualvideo/render/FaceType;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    sget-object p1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/dualvideo/render/CameraItem;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/dualvideo/render/CameraItem;Landroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->scale(Landroid/graphics/Rect;F)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/dualvideo/render/CameraItem;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    return p1
.end method

.method private animShrink()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animShrink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    const/high16 v1, 0x43480000    # 200.0f

    const/4 v2, 0x6

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "animShrink"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v6, [Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v6, [F

    aput v1, v8, v5

    invoke-virtual {v7, v2, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v6, [Lmiuix/animation/listener/TransitionListener;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    new-array v0, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v6, [Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v6, [F

    aput v1, v8, v5

    invoke-virtual {v7, v2, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v6, [Lmiuix/animation/listener/TransitionListener;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private drawBlurCover(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 5

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$FaceType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "CameraItem"

    const-string v4, "b_b"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string p0, "drawBlurCover: face type error!!"

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "r_b"

    invoke-virtual {p2, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p2, v4}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "f_b"

    invoke-virtual {p2, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v4}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "drawBlurCover: null tex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p2, v1, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrixBasic(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object p0

    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p2, v1, v0, p0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;[F)V

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawDarkCorner(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3fe66666

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "d_c_t_f"

    goto :goto_1

    :cond_2
    const-string v2, "d_c_t"

    :goto_1
    invoke-virtual {p2, v2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v1, "d_c_b_f"

    goto :goto_2

    :cond_3
    const-string v1, "d_c_b"

    :goto_2
    invoke-virtual {p2, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->top:I

    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p0, p2, v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawGridLine(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isPressedInGridWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x6

    if-eq p0, v1, :cond_4

    const/high16 p0, 0x3f000000    # 0.5f

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    goto :goto_0

    :cond_3
    const p0, 0x3eaaaaab

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    const p0, 0x3f2aaaab

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    invoke-static {p1, v0, p0}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    :cond_4
    :goto_0
    return-void
.end method

.method private drawLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->drawLabelLeftDown(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawTopCenter(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawLabelLeftDown(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigDescription(Lcom/android/camera/dualvideo/render/LayoutType;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private drawPreview(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p1, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "exp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "shr"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->getScalingHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p2, p3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawSelectedBorder(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    const v1, 0x3fe66666

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "s_frame_f"

    goto :goto_1

    :cond_1
    const-string p0, "s_frame_s"

    :goto_1
    invoke-virtual {p2, p0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p2, p0, v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectFrameAlpha()F

    move-result v0

    const v1, 0x3c23d70a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectFrameAlpha()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->drawSelectedBorder(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-string v3, "s_bg"

    invoke-virtual {p2, v3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    new-instance v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v4, v3, v2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v4}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    sget-object v3, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$util$SelectIndex:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    return-void

    :cond_1
    const-string p0, "s_2"

    invoke-virtual {p2, p0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "s_1"

    invoke-virtual {p2, p0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    :goto_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->gemAnimTexTransMatrix()[F

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    iget-object p2, v1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/graphics/Rect;->left:I

    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/graphics/Rect;->top:I

    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p2, p0, v2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    return-void
.end method

.method private drawSwitchHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->getSwitchHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const-string v1, "s_c"

    invoke-virtual {p2, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawTopCenter(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigDescription(Lcom/android/camera/dualvideo/render/LayoutType;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$IGT0zP9xq5V41D-w3yvqGMAbm_c;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$IGT0zP9xq5V41D-w3yvqGMAbm_c;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/MiscTextureManager;ILcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private genPreviewAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-static {v3, p0, v0, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object p0

    invoke-direct {v1, v2, p0, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    return-object v1
.end method

.method private getRenderRect()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private getSelectFrameAlpha()F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    iput v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->getRatio()F

    move-result v0

    iget v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1
.end method

.method private synthetic lambda$drawLabelLeftDown$1(Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawLabel: tex "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraItem"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getGridWindowFlagAlpha()F

    move-result v1

    iget v2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    mul-float/2addr v1, v2

    invoke-virtual {p3, v1}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexTransMatrix()[F

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    new-instance p3, Landroid/graphics/Rect;

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p3, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexOrientation()I

    move-result p0

    if-eqz p0, :cond_2

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_1

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_2

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p3, Landroid/graphics/Rect;->left:I

    const p1, 0x40e8a3d7

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    add-int/2addr p0, v1

    iput p0, p3, Landroid/graphics/Rect;->left:I

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    sub-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->top:I

    iget p0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->right:I

    iget p0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p0, v0, p3}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p2, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0

    :cond_2
    iget p0, p3, Landroid/graphics/Rect;->left:I

    const p1, 0x412e8f5c

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->left:I

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    const p1, 0x408b851f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->top:I

    iget p0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->right:I

    iget p0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    new-instance p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p0, v0, p3}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p2, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :goto_0
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private synthetic lambda$drawTopCenter$0(Lcom/android/camera/dualvideo/render/MiscTextureManager;ILcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p4}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    const-string v1, "CameraItem"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawLabel: tex "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move p2, p4

    :cond_2
    :goto_0
    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexTransMatrix()[F

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    new-instance p4, Landroid/graphics/Rect;

    sget-object v2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p4, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexOrientation()I

    move-result p1

    const v2, 0x4168cccd

    if-eqz p1, :cond_5

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_4

    const/16 v3, 0xb4

    if-eq p1, v3, :cond_5

    const/16 v3, 0x10e

    if-eq p1, v3, :cond_3

    const-string p1, "invalid orientation"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget p0, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    iget p1, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p4

    invoke-static {p0, p1, p2, p4}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    iget p1, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p4

    invoke-static {p0, p1, p2, p4}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    :cond_5
    iget p0, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    iget p1, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p4

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p4

    invoke-static {p0, p1, p2, p4}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object p0

    :goto_1
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1, v0, p0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p3, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private needAnim(Lcom/android/camera/dualvideo/render/RegionHelper;)Z
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private restoreAnimShrink()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreAnimShrink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animShrink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v0, [F

    const/high16 v7, 0x43480000    # 200.0f

    aput v7, v6, v3

    const/4 v7, 0x6

    invoke-virtual {v5, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object p0, v0, v3

    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-interface {v1, v2, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private scale(Landroid/graphics/Rect;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/RectUtil;->centerScale(Landroid/graphics/Rect;F)V

    sget-object p2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public alphaInGridWindowFlag(Z)V
    .locals 2

    new-instance v0, Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/render/EaseOutAnim;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagDstAlpha:F

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagDstAlpha:F

    :goto_1
    return-void
.end method

.method public alphaInSelectedFrame(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/render/EaseOutAnim;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    :goto_1
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V

    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$ContentType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawSwitchHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawDarkCorner(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/dualvideo/render/CameraItem;->drawLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawBlurCover(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enterOrExit(Lio/reactivex/SingleEmitter;)V
    .locals 11
    .param p1    # Lio/reactivex/SingleEmitter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iget-boolean v4, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    const/16 v5, 0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v2, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move v1, v7

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    new-array v3, v6, [F

    const/high16 v4, 0x43960000    # 300.0f

    aput v4, v3, v7

    invoke-virtual {v2, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move v1, v5

    move v5, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    iput-boolean v6, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "scale"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v8, v6, [Lmiuix/animation/base/AnimConfig;

    new-array v9, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v10, Lcom/android/camera/dualvideo/render/CameraItem$1;

    invoke-direct {v10, p0}, Lcom/android/camera/dualvideo/render/CameraItem$1;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    aput-object v10, v9, v7

    invoke-virtual {v0, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v8, v7

    invoke-interface {v3, v4, v8}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v0, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "alpha"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v6, [Lmiuix/animation/base/AnimConfig;

    new-array v4, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/android/camera/dualvideo/render/CameraItem$2;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem$2;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lio/reactivex/SingleEmitter;)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f666666
        0x3e99999a
    .end array-data

    :array_1
    .array-data 4
        0x3f7d70a4
        0x3e4ccccd
    .end array-data
.end method

.method public getAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    return p0
.end method

.method public getFaceType()Lcom/android/camera/dualvideo/render/FaceType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceType:Lcom/android/camera/dualvideo/render/FaceType;

    return-object p0
.end method

.method public getGridWindowFlagAlpha()F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAlpha:F

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagDstAlpha:F

    iput v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAlpha:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->getRatio()F

    move-result v0

    iget v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagDstAlpha:F

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1
.end method

.method public getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    return-object p0
.end method

.method public getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public getScalingHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    const-string v0, "exp"

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    const/16 p0, 0xa

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object p0
.end method

.method public getSwitchHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;
    .locals 4

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    const-string v1, "s_c"

    invoke-virtual {p1, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    invoke-direct {v1, v2, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    const/16 p1, 0xa

    add-int/2addr p0, p1

    invoke-virtual {v1, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v1
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isPressedInGridWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPressedInGridWindow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    return p0
.end method

.method public synthetic lambda$drawLabelLeftDown$1$CameraItem(Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->lambda$drawLabelLeftDown$1(Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$drawTopCenter$0$CameraItem(Lcom/android/camera/dualvideo/render/MiscTextureManager;ILcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/dualvideo/render/CameraItem;->lambda$drawTopCenter$0(Lcom/android/camera/dualvideo/render/MiscTextureManager;ILcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->animShrink()V

    const-string p0, "CameraItem"

    const-string v0, "onKeyDown: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->restoreAnimShrink()V

    :cond_0
    const-string p0, "CameraItem"

    const-string v0, "onKeyUp: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setComposeTypeWithAnimation: from: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraItem"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    return-void
.end method

.method public setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectedTypeWithAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_1

    if-eq p1, v1, :cond_1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->alphaInSelectedFrame(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->alphaInSelectedFrame(Z)V

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    goto :goto_0

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    :goto_0
    return-void
.end method

.method public setVisibilityWithAnim(ZZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    :goto_0
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, p2, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x6

    new-array v6, p2, [F

    int-to-float v0, v0

    aput v0, v6, v2

    invoke-virtual {v4, v5, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array p2, p2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/android/camera/dualvideo/render/CameraItem$3;

    invoke-direct {v4, p0}, Lcom/android/camera/dualvideo/render/CameraItem$3;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    aput-object v4, p2, v2

    invoke-virtual {v0, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-interface {p1, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_4

    :cond_4
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderItem{mLastPreviewComposeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRenderComposeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mGridWindowLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceType:Lcom/android/camera/dualvideo/render/FaceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->needAnim(Lcom/android/camera/dualvideo/render/RegionHelper;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/RegionHelper;)V

    new-array p1, p2, [Lmiuix/animation/listener/TransitionListener;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p1, p2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "updateRenderAttri"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, p2, v2

    invoke-interface {p0, p1, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->genPreviewAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p1

    sget-object p2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666
        0x3e99999a
    .end array-data
.end method
