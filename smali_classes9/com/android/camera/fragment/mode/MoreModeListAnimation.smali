.class public Lcom/android/camera/fragment/mode/MoreModeListAnimation;
.super Ljava/lang/Object;
.source "MoreModeListAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;,
        Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_B2T:I = 0x3

.field public static final DIRECTION_L2R:I = 0x0

.field public static final DIRECTION_R2L:I = 0x1

.field public static final DIRECTION_T2B:I = 0x2

.field public static final DIRECTION_UNKNOWN:I = -0x1

.field private static final DISTANCE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "MoreModeAnimation"

.field private static sAnimation:Lcom/android/camera/fragment/mode/MoreModeListAnimation;


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

.field private mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

.field mRadiusProp:Lmiuix/animation/property/ViewProperty;

.field private mSize:I

.field private mSpringState:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$1;

    const-string v1, "cornerRadius"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$1;-><init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mRadiusProp:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private getCol(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->sAnimation:Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    invoke-direct {v0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->sAnimation:Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    :cond_0
    sget-object v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->sAnimation:Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    return-object v0
.end method

.method private getRow(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clearSpring()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSpringState:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    const-string p0, "MoreModeAnimation"

    const-string v0, "clearSpring"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initSpring(Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;)V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;-><init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSpringState:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    const-string p0, "MoreModeAnimation"

    const-string p1, "initSpring"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initSwitchAnimation(Lcom/android/camera/fragment/mode/IMoreMode;Lcom/android/camera/fragment/mode/IMoreMode;I)V
    .locals 0

    iput-object p2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    iput p3, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSize:I

    return-void
.end method

.method public releaseSwitchAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    return-void
.end method

.method public startAlphaAnimation(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public startInnerEnterAnim()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSpringState:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->startEnter()V

    :cond_0
    return-void
.end method

.method public startInnerSpringAnim()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSpringState:Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->updateInnerSpringAnim()V

    :cond_0
    return-void
.end method

.method public startShowNewAnimation(Landroid/view/View;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result v2

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    iget v6, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSize:I

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getRegion(Landroid/content/Context;IIIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v2}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v3}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    iget v6, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSize:I

    invoke-static/range {v1 .. v6}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getRegion(Landroid/content/Context;IIIII)Landroid/graphics/Rect;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start new region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", end region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoreModeAnimation"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v4, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070553

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v5, "from"

    invoke-direct {v2, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const/4 v6, 0x0

    new-array v7, v6, [J

    invoke-virtual {v2, v5, v1, v7}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v5, v6, [J

    invoke-virtual {v1, v2, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mRadiusProp:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, p2, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v2, "to"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mRadiusProp:Lmiuix/animation/property/ViewProperty;

    new-array v2, v6, [J

    invoke-virtual {v1, p0, v0, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    aput-object p1, v2, v6

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, p2, v6

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f666666
        0x3e99999a
    .end array-data
.end method

.method public startShowOldAnimation(Landroid/view/View;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result v2

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeNew:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    iget v6, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSize:I

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getRegion(Landroid/content/Context;IIIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v2}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v3}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mMoreModeOld:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    iget v6, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mSize:I

    invoke-static/range {v1 .. v6}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getRegion(Landroid/content/Context;IIIII)Landroid/graphics/Rect;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start old region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", end region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoreModeAnimation"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070553

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v2, "from"

    invoke-direct {v0, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const/4 v6, 0x0

    new-array v7, v6, [J

    invoke-virtual {v0, v2, v1, v7}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v2, v6, [J

    invoke-virtual {v0, v1, v3, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v2, v6, [J

    invoke-virtual {v0, v1, v4, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v2, v6, [J

    invoke-virtual {v0, v1, v4, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v2, v6, [J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mRadiusProp:Lmiuix/animation/property/ViewProperty;

    new-array v2, v6, [J

    invoke-virtual {v0, v1, v5, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v2, "to"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v4, v6, [J

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v4, v6, [J

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mRadiusProp:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v1, v2, p2, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, -0x2

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/android/camera/fragment/mode/MoreModeListAnimation$2;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$2;-><init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation;)V

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p0, v2, [Landroid/view/View;

    aput-object p1, p0, v6

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p1, v2, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, p1, v6

    invoke-interface {p0, p2, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f666666
        0x3e99999a
    .end array-data
.end method

.method public startTranAnimation(Landroid/view/View;II)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getRow(I)I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown direction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getRow(I)I

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getCol(I)I

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getCol(I)I

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MoreModeAnimation"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p2, 0xc8

    invoke-virtual {p0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 p2, 0x0

    const/high16 p3, 0x43960000    # 300.0f

    const/high16 v2, -0x3c6a0000    # -300.0f

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p3, v2

    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v2

    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :goto_3
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
