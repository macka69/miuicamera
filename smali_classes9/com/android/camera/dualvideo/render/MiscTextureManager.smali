.class public Lcom/android/camera/dualvideo/render/MiscTextureManager;
.super Ljava/lang/Object;
.source "MiscTextureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiscTextureManager"

.field public static final TEX_BACK_BLUR:Ljava/lang/String; = "b_b"

.field public static final TEX_DARK_CORNER_BOTTOM:Ljava/lang/String; = "d_c_b"

.field public static final TEX_DARK_CORNER_BOTTOM_FLAT:Ljava/lang/String; = "d_c_b_f"

.field public static final TEX_DARK_CORNER_TOP:Ljava/lang/String; = "d_c_t"

.field public static final TEX_DARK_CORNER_TOP_FLAT:Ljava/lang/String; = "d_c_t_f"

.field public static final TEX_EXPAND:Ljava/lang/String; = "exp"

.field public static final TEX_FRONT_BLUR:Ljava/lang/String; = "f_b"

.field public static final TEX_REMOTE_BLUR:Ljava/lang/String; = "r_b"

.field public static final TEX_SELECTED_BG:Ljava/lang/String; = "s_bg"

.field public static final TEX_SELECTED_FIRST:Ljava/lang/String; = "s_1"

.field public static final TEX_SELECTED_FRAME:Ljava/lang/String; = "s_frame_s"

.field public static final TEX_SELECTED_FRAME_FLAT:Ljava/lang/String; = "s_frame_f"

.field public static final TEX_SELECTED_SECOND:Ljava/lang/String; = "s_2"

.field public static final TEX_SHRINK:Ljava/lang/String; = "shr"

.field public static final TEX_SWITCH_CAMERA:Ljava/lang/String; = "s_c"


# instance fields
.field private final mAnimTexTransMatrix:[F

.field private mInited:Z

.field private final mMiscRenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/MiscRenderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTexOrientation:I

.field private final mTexTransMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mInited:Z

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/dualvideo/render/MiscTextureManager;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/dualvideo/render/MiscTextureManager;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    return-object p0
.end method

.method private animTexTransMatrix(I)V
    .locals 6

    iget v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    sub-int/2addr p1, v0

    const/16 v0, -0xb4

    if-ge p1, v0, :cond_0

    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit16 p1, p1, -0x168

    :goto_0
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x6

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x43960000    # 300.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;-><init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V

    new-array p0, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v1, p0, v5

    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "animTexTrans"

    aput-object p1, p0, v5

    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v1, v5

    invoke-interface {p0, p1, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private declared-synchronized createTagTex(Landroid/content/res/Resources;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$zyO_VSvca8-EIU0ZaGvE7WXZy2Y;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$zyO_VSvca8-EIU0ZaGvE7WXZy2Y;-><init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    const-string v2, "remote"

    new-instance v3, Lcom/android/gallery3d/ui/BitmapTexture;

    const v4, 0x7f110797

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, -0x1

    invoke-static {p1, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-direct {v1, v2, v3}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private synthetic lambda$createTagTex$1(Landroid/content/res/Resources;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTagTex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiscTextureManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    const-string v1, "front"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v5, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f110796

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v5, p1, v3, v3}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-direct {v4, v1, v5}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    iget-object v0, p2, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object p2, p2, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v1, p2, v3, v3}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    invoke-direct {p1, v0, v1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getTexture$2(Ljava/lang/String;Lcom/android/camera/dualvideo/render/MiscRenderItem;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$init$0(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscRenderItem;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    return-void
.end method

.method static synthetic lambda$release$3(Lcom/android/camera/dualvideo/render/MiscRenderItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    return-void
.end method


# virtual methods
.method public declared-synchronized gemAnimTexTransMatrix()[F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOrGenBlurTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x17bc5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x18ac9

    if-eq v1, v2, :cond_2

    const v2, 0x1b7d5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "r_b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "f_b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "b_b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    const-string v0, "MiscTextureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrGenBlurTexture: wrong name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_2
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->BLUR_SIZE:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->BLUR_SIZE:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    invoke-direct {v2, p1, v0}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTexOrientation()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexTransMatrix()[F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$kNAmNhwD_9VFZqNhjqK0eJwsLU8;

    invoke-direct {v1, p1}, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$kNAmNhwD_9VFZqNhjqK0eJwsLU8;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$x9GoRsgUZH0oaOms07J0Pr5nmT8;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$x9GoRsgUZH0oaOms07J0Pr5nmT8;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/ui/BasicTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public init(Lcom/android/gallery3d/ui/GLCanvas;Landroid/content/res/Resources;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->createTagTex(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080292

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "s_1"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080293

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "s_2"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08028b

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "d_c_t"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f080289

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "d_c_b"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08028c

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "d_c_t_f"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08028a

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "d_c_b_f"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08028d

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "exp"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08028e

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string/jumbo v3, "shr"

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v3, 0x7f08041d

    invoke-static {p2, v3}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v2, p2, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string p2, "s_c"

    invoke-direct {v1, p2, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->getSelectFrame(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v2, "s_frame_s"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/dualvideo/render/RenderUtil;->getSelectFrame(Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "s_frame_f"

    invoke-direct {v0, v3, v1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {}, Lcom/android/camera/dualvideo/render/RenderUtil;->getSelectIndexBG()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3, v4, v4}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const-string v3, "s_bg"

    invoke-direct {v0, v3, v1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$HN2xCfKaUxcaG2NURU9tyi-yWEY;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$HN2xCfKaUxcaG2NURU9tyi-yWEY;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iput-boolean v2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mInited:Z

    return-void
.end method

.method public synthetic lambda$createTagTex$1$MiscTextureManager(Landroid/content/res/Resources;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->lambda$createTagTex$1(Landroid/content/res/Resources;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$QXic6iemGtBfB9WVr6CrMVAMOwM;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$QXic6iemGtBfB9WVr6CrMVAMOwM;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rotateTexTransMatrix([FI)V
    .locals 9

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2, v1, v1, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    int-to-float v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 p2, -0x41000000    # -0.5f

    invoke-static {p1, v2, p2, p2, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTexTransDegree(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MiscTextureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTexTransDegree: src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->animTexTransMatrix(I)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->rotateTexTransMatrix([FI)V

    iput p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
