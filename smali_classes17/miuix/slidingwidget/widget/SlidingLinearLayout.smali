.class public Lmiuix/slidingwidget/widget/SlidingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SlidingLinearLayout.java"


# instance fields
.field private final preAddViewPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final preLayout:[I

.field private final preRemoveViewPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private preAddView()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private preRemoveView(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-lt v1, p1, :cond_0

    add-int v3, p1, p2

    if-lt v1, v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private preRemoveView(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private show(Landroid/view/View;)V
    .locals 3

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-interface {p0, v1, v2}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public addViewSliding(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_1

    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v2, v2, v5

    sub-int v2, v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v7, v7, v3

    sub-int v7, v7, p5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v2, v7, :cond_0

    :goto_0
    move v2, v5

    goto :goto_1

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v2, v2, v6

    sub-int v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v7, v7, v4

    sub-int v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v2, v7, :cond_0

    goto :goto_0

    :goto_1
    move v7, v6

    :goto_2
    if-ge v7, v1, :cond_c

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    const-string v10, "end"

    const-string v11, "start"

    const/16 v12, 0x8

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_6

    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v14

    iget-object v15, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v14, v14, v15

    if-nez v14, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v14

    iget-object v15, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_3

    :cond_2
    if-nez v2, :cond_3

    iget-object v14, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v15

    sub-float/2addr v9, v15

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v14

    iget-object v15, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v14

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v14, v9

    if-nez v9, :cond_4

    if-eqz v2, :cond_4

    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v14, v9, v6

    sub-int v14, v14, p2

    int-to-float v14, v14

    aget v9, v9, v5

    sub-int v9, v9, p3

    int-to-float v9, v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_3
    new-instance v15, Lmiuix/animation/controller/AnimState;

    invoke-direct {v15, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v13, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v6, [J

    invoke-virtual {v15, v13, v14, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v13, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v14, v6, [J

    invoke-virtual {v3, v13, v9, v14}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-instance v9, Lmiuix/animation/controller/AnimState;

    invoke-direct {v9, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v13, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v14, v6, [J

    invoke-virtual {v9, v13, v6, v14}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    sget-object v13, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v14, v6, [J

    invoke-virtual {v9, v13, v6, v14}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    new-array v13, v5, [Landroid/view/View;

    aput-object v8, v13, v6

    invoke-static {v13}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v13

    invoke-interface {v13}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v13

    invoke-interface {v13, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v13

    new-array v14, v6, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v13, v3, v9, v14}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_5
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_b

    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v9

    iget-object v12, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v9, v9, v12

    if-nez v9, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v9

    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_8

    :cond_7
    if-nez v2, :cond_8

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    sub-float v13, v9, v12

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v9

    sub-float/2addr v3, v9

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v9

    iget-object v12, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v9, v9, v12

    if-nez v9, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v9

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v9, v3

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aget v9, v3, v6

    sub-int v9, v9, p2

    int-to-float v13, v9

    aget v3, v3, v5

    sub-int v3, v3, p3

    int-to-float v3, v3

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_4
    new-instance v9, Lmiuix/animation/controller/AnimState;

    invoke-direct {v9, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v11, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v12, v6, [J

    invoke-virtual {v9, v11, v13, v12}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    sget-object v11, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v12, v6, [J

    invoke-virtual {v9, v11, v3, v12}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-instance v9, Lmiuix/animation/controller/AnimState;

    invoke-direct {v9, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v10, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v11, v6, [J

    invoke-virtual {v9, v10, v6, v11}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    sget-object v10, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v11, v6, [J

    invoke-virtual {v9, v10, v6, v11}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    new-array v10, v5, [Landroid/view/View;

    aput-object v8, v10, v6

    invoke-static {v10}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v10

    invoke-interface {v10}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v10

    invoke-interface {v10, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v10

    new-array v11, v6, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v10, v3, v9, v11}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_a
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_c
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v0, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    aput p2, v0, v6

    aput p3, v0, v5

    aput p4, v0, v4

    const/4 v1, 0x3

    aput p5, v0, v1

    :cond_d
    return-void
.end method

.method public removeViewSliding(Landroid/view/View;)V
    .locals 6

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v3, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;

    invoke-direct {v5, p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;Landroid/view/View;)V

    aput-object v5, v0, v2

    invoke-virtual {v4, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-interface {v1, v3}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public removeViewSlidingAt(I)V
    .locals 6

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(Landroid/view/View;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;

    invoke-direct {v5, p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;I)V

    aput-object v5, v1, v3

    invoke-virtual {v4, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public removeViewsSliding(II)V
    .locals 15

    invoke-direct/range {p0 .. p2}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(II)V

    add-int v6, p1, p2

    move/from16 v7, p1

    :goto_0
    if-ge v7, v6, :cond_1

    move-object v8, p0

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    move-result-object v10

    new-array v11, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v12, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v12}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v13, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v14, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;

    move-object v0, v14

    move-object v1, p0

    move v2, v7

    move v3, v6

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;IIII)V

    aput-object v14, v13, v9

    invoke-virtual {v12, v13}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v11, v9

    invoke-interface {v10, v11}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
