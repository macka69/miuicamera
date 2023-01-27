.class public Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CollapseView"
.end annotation


# instance fields
.field private mAlpha:F

.field private mIsAcceptAlphaChange:Z

.field private mTouchAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/IStateStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mTouchAnims:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    return-void
.end method


# virtual methods
.method public animTo(FIILmiuix/animation/base/AnimConfig;)V
    .locals 4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->cancelAnim()V

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "to"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    :goto_0
    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v1, v2, [J

    invoke-virtual {p1, v0, p2, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v0, v2, [J

    invoke-virtual {p1, p2, p3, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mTouchAnims:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/IStateStyle;

    const/4 p3, 0x1

    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    aput-object p4, p3, v2

    invoke-interface {p2, p1, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public attachViews(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mTouchAnims:Ljava/util/List;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelAnim()V
    .locals 1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mTouchAnims:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAcceptAlphaChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnimFrom(FII)V
    .locals 4

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    :goto_0
    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {v0, v1, p1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v1, v2, [J

    invoke-virtual {p1, v0, p2, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v0, v2, [J

    invoke-virtual {p1, p2, p3, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mTouchAnims:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/IStateStyle;

    invoke-interface {p2, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setTransparent(II)V
    .locals 2

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
