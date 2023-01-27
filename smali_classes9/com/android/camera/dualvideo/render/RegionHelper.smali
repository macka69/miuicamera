.class public Lcom/android/camera/dualvideo/render/RegionHelper;
.super Ljava/lang/Object;
.source "RegionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;
    }
.end annotation


# static fields
.field private static final FOLME_TARGET_X:Ljava/lang/String; = "xSpeed"

.field private static final FOLME_TARGET_Y:Ljava/lang/String; = "ySpeed"

.field private static final MARGIN_BOTTOM:I

.field private static final MINI_MARGIN:I

.field private static final MINI_SCALE_X:F = 0.3333f

.field private static final MINI_SCALE_Y:F = 0.3333f

.field private static final PATCH_SEPARATOR:I

.field private static final TAG:Ljava/lang/String; = "RegionHelper"


# instance fields
.field private mConfigX:Lmiuix/animation/base/AnimConfig;

.field private mConfigY:Lmiuix/animation/base/AnimConfig;

.field mDrawRect:Landroid/graphics/Rect;

.field public mIsHovering:Z

.field private mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

.field private mMiniMarginLeft:I

.field private mMiniMarginTop:I

.field private mSpeedX:F

.field private mSpeedY:F

.field public mStartX:F

.field public mStartY:F

.field private mValidMiniRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x41680000    # 14.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sput v1, Lcom/android/camera/dualvideo/render/RegionHelper;->MINI_MARGIN:I

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/dualvideo/render/RegionHelper;->MARGIN_BOTTOM:I

    const v0, 0x408ba5e3

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    sget v0, Lcom/android/camera/dualvideo/render/RegionHelper;->MINI_MARGIN:I

    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setDrawRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/dualvideo/render/RegionHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mSpeedX:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/dualvideo/render/RegionHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mSpeedY:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/camera/dualvideo/render/RegionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/camera/dualvideo/render/RegionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    return p1
.end method

.method private checkLocation()V
    .locals 2

    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    :cond_0
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    :cond_1
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2

    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    :cond_2
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    :cond_3
    return-void
.end method

.method private getLayoutRect(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;
    .locals 8

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p1

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v2

    sub-int/2addr p1, v2

    div-int v2, p1, v1

    rem-int v3, p1, v1

    const/4 v4, 0x1

    add-int/2addr p1, v4

    if-ne v0, p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sget v6, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    sub-int/2addr v0, v4

    div-int/2addr v0, v1

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget v4, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v4

    sub-int/2addr v1, v6

    div-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    mul-int v7, v3, v4

    add-int/2addr v6, v7

    mul-int/2addr v3, v5

    add-int/2addr v6, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    invoke-direct {p1, v6, v0, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v5, v6

    add-int/2addr v1, v0

    invoke-direct {p0, v6, v0, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    return-void
.end method

.method public declared-synchronized getMargin()[I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/dualvideo/render/RegionHelper$5;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->getLayoutRect(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_1
    :try_start_1
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eaaa64c

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_2
    :try_start_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_3
    :try_start_3
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_4
    :try_start_4
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_5
    :try_start_5
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public moveToEdge()V
    .locals 11

    sget-object v0, Lcom/android/camera/dualvideo/render/RegionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToEdge xSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mSpeedX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ySpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mSpeedY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mSpeedX:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpl-float v2, v0, v1

    const/high16 v3, -0x3b060000    # -2000.0f

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mSpeedY:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    cmpl-float v1, v2, v3

    if-lez v1, :cond_5

    iget v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_1
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "xSpeed"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v7, 0x2

    new-array v8, v7, [F

    fill-array-data v8, :array_0

    const/4 v9, -0x2

    invoke-virtual {v6, v9, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    new-array v8, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v10, Lcom/android/camera/dualvideo/render/RegionHelper$3;

    invoke-direct {v10, p0}, Lcom/android/camera/dualvideo/render/RegionHelper$3;-><init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V

    aput-object v10, v8, v5

    invoke-virtual {v6, v8}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v0, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "ySpeed"

    aput-object v3, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-virtual {v4, v9, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/camera/dualvideo/render/RegionHelper$4;

    invoke-direct {v6, p0}, Lcom/android/camera/dualvideo/render/RegionHelper$4;-><init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V

    aput-object v6, v2, v5

    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f333333
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public setDrawRect(Landroid/graphics/Rect;)V
    .locals 5

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    sget v0, Lcom/android/camera/dualvideo/render/RegionHelper;->MINI_MARGIN:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eaaa64c

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/dualvideo/render/RegionHelper;->MINI_MARGIN:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/dualvideo/render/RegionHelper;->MARGIN_BOTTOM:I

    sub-int/2addr v2, v3

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    if-nez v0, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;)V
    .locals 6

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lcom/android/camera/dualvideo/render/RegionHelper$1;

    invoke-direct {v3, p0}, Lcom/android/camera/dualvideo/render/RegionHelper$1;-><init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mConfigX:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lcom/android/camera/dualvideo/render/RegionHelper$2;

    invoke-direct {v3, p0}, Lcom/android/camera/dualvideo/render/RegionHelper$2;-><init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mConfigY:Lmiuix/animation/base/AnimConfig;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mSpeedX:F

    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "xSpeed"

    aput-object v2, v0, v4

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mConfigX:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "ySpeed"

    aput-object v2, v0, v4

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mConfigY:Lmiuix/animation/base/AnimConfig;

    aput-object v3, v1, v4

    invoke-interface {v0, v2, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    return-void
.end method

.method public setStartPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    iput p2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    return-void
.end method

.method public declared-synchronized updateMarginOffset(II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    iget p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RegionHelper;->checkLocation()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;->onUpdated()V

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "xSpeed"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mConfigX:Lmiuix/animation/base/AnimConfig;

    aput-object v3, v2, v1

    invoke-interface {p2, v0, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array p2, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "ySpeed"

    aput-object v0, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mConfigY:Lmiuix/animation/base/AnimConfig;

    aput-object v2, p1, v1

    invoke-interface {p2, v0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
