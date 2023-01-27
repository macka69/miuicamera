.class public Lmiuix/appcompat/widget/DialogAnimHelper;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;
    }
.end annotation


# static fields
.field private static final DAMPING:F = 0.85f

.field private static final DURATION:I = 0x12c

.field private static final MARGIN:I = 0xf

.field private static final RESPONSE:F = 0.66f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;IIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeAnim(Landroid/view/View;IIZ)V

    return-void
.end method

.method private static changeHeight(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x50

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static executeAnim(Landroid/view/View;IIZ)V
    .locals 5

    invoke-static {p0}, Lmiuix/appcompat/widget/DialogAnimHelper;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-static {v0}, Lmiuix/appcompat/widget/DialogAnimHelper;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    const/16 v1, 0xf

    invoke-static {p3, v1}, Lmiuix/appcompat/widget/DialogAnimHelper;->changeHeight(Landroid/view/View;I)V

    :cond_0
    const/4 p3, 0x2

    new-array v1, p3, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p2, p3, [F

    fill-array-data p2, :array_0

    invoke-static {v2, p2}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$kiQ8OZ2ipIaySNdFMYE0zOB_8-E;

    invoke-direct {p2, v0, p0}, Lmiuix/appcompat/widget/-$$Lambda$DialogAnimHelper$kiQ8OZ2ipIaySNdFMYE0zOB_8-E;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lmiuix/appcompat/widget/DialogAnimHelper$2;

    invoke-direct {p0}, Lmiuix/appcompat/widget/DialogAnimHelper$2;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f59999a
        0x3f28f5c3
    .end array-data
.end method

.method public static executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 4

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/appcompat/widget/DialogAnimHelper$3;

    invoke-direct {v3, p2}, Lmiuix/appcompat/widget/DialogAnimHelper$3;-><init>(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    const/4 p2, 0x0

    aput-object v3, v2, p2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array v2, v1, [Landroid/view/View;

    aput-object p0, v2, p2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array v2, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v3, v2, p2

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    const/16 v2, 0x64

    invoke-interface {p0, p2, v2}, Lmiuix/animation/IVisibleStyle;->setMove(II)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v2, p2

    invoke-interface {p0, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    new-array p0, v1, [Landroid/view/View;

    aput-object p1, p0, p2

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v0, p1, p2

    invoke-interface {p0, v3, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static executeShowAnim(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p0, v0}, Lmiuix/appcompat/widget/DialogAnimHelper;->relayoutView(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p0, v0, v1, p2}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeAnim(Landroid/view/View;IIZ)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmiuix/appcompat/widget/DialogAnimHelper$1;

    invoke-direct {v0, p2}, Lmiuix/appcompat/widget/DialogAnimHelper$1;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    const/4 p0, 0x1

    new-array p2, p0, [Landroid/view/View;

    aput-object p1, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const p2, 0x3e99999a

    new-array p0, p0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v0, p0, v1

    invoke-interface {p1, p2, p0}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private static getHolderAnimView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$id;->dialog_anim_holder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$executeAnim$0(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {p1, p2}, Lmiuix/appcompat/widget/DialogAnimHelper;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method private static relayoutView(Landroid/view/View;I)V
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
