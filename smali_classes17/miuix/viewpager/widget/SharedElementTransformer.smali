.class public Lmiuix/viewpager/widget/SharedElementTransformer;
.super Ljava/lang/Object;
.source "SharedElementTransformer.java"

# interfaces
.implements Lmiuix/viewpager/widget/OnPageChangeListener;


# instance fields
.field private mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

.field private mSharedElementIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/viewpager/widget/PagerAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    iput-object p1, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    return-void
.end method

.method private modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v9, v7

    sub-float v12, v10, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v14

    const/high16 v15, -0x40800000    # -1.0f

    cmpg-float v15, v15, v3

    if-gez v15, :cond_5

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v16, v3, v15

    if-gez v16, :cond_5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v12, v16

    add-float v5, v5, v17

    neg-float v3, v3

    mul-float/2addr v5, v3

    add-float/2addr v4, v6

    div-float v6, v11, v16

    add-float/2addr v4, v6

    mul-float/2addr v4, v3

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v13, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v6, v7, v13

    if-nez v6, :cond_0

    move v6, v15

    goto :goto_0

    :cond_0
    mul-float v6, v11, v3

    add-float/2addr v6, v7

    div-float/2addr v6, v7

    :goto_0
    cmpl-float v7, v8, v13

    if-nez v7, :cond_1

    move v7, v15

    goto :goto_1

    :cond_1
    mul-float v7, v12, v3

    add-float/2addr v7, v8

    div-float/2addr v7, v8

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v0, v9, v13

    if-nez v0, :cond_3

    move v11, v15

    goto :goto_2

    :cond_3
    mul-float/2addr v11, v3

    add-float/2addr v11, v9

    div-float/2addr v11, v9

    :goto_2
    cmpl-float v0, v10, v13

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    mul-float/2addr v12, v3

    add-float/2addr v12, v10

    div-float v15, v12, v10

    :goto_3
    invoke-virtual {v1, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    return-void
.end method

.method private resetView(I)V
    .locals 4

    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addElement(II)V
    .locals 1

    iget-object p0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearElements()V
    .locals 0

    iget-object p0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 12

    add-int/lit8 p3, p1, 0x1

    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lmiuix/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_1

    invoke-direct {p0, p1}, Lmiuix/viewpager/widget/SharedElementTransformer;->resetView(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    invoke-interface {v3, p1}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    invoke-interface {v4, p3}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v11

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v4

    goto :goto_2

    :cond_5
    move-object v1, v4

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    neg-float v10, p2

    move-object v4, p0

    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    move-object v8, v11

    move-object v9, v3

    invoke-direct/range {v4 .. v10}, Lmiuix/viewpager/widget/SharedElementTransformer;->modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v10, v4, p2

    move-object v4, p0

    move-object v9, v11

    invoke-direct/range {v4 .. v10}, Lmiuix/viewpager/widget/SharedElementTransformer;->modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public removeElement(II)V
    .locals 1

    iget-object p0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
