.class public Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "CenterAlignedLayoutManager.java"


# instance fields
.field private mDataSetSize:I

.field private mDecoratedChildHeight:I

.field private mDecoratedChildWidth:I

.field private mMaxScrollX:I

.field private mScrollX:I

.field private mStartOffset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    return-void
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    mul-int/2addr v0, p2

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->getHorizontalSpace()I

    move-result v1

    const/4 v7, 0x0

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->getHorizontalSpace()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mScrollX:I

    iget v1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mStartOffset:I

    if-lt v0, v1, :cond_2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    div-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v7

    :goto_0
    iget v1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mScrollX:I

    iget v2, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mStartOffset:I

    if-lt v1, v2, :cond_3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    rem-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v1

    move v1, v2

    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_4

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    move v8, v1

    :goto_2
    if-ltz p2, :cond_5

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->getParentRight()I

    move-result v0

    if-gt v8, v0, :cond_5

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1, v7, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    add-int v4, v8, v0

    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildHeight:I

    add-int v5, v6, v0

    move-object v0, p0

    move v2, v8

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    add-int/2addr v8, v0

    goto :goto_2

    :cond_4
    move v8, v0

    move v9, v1

    :goto_3
    if-ge v8, p2, :cond_5

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->getParentRight()I

    move-result v0

    if-gt v9, v0, :cond_5

    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1, v7, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    add-int v4, v9, v0

    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildHeight:I

    add-int v5, v6, v0

    move-object v0, p0

    move v2, v9

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    add-int/lit8 v8, v8, 0x1

    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    add-int/2addr v9, v0

    goto :goto_3

    :cond_5
    return-void
.end method

.method private getHorizontalSpace()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getParentLeft()I
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result p0

    return p0
.end method

.method private getParentRight()I
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result p0

    goto :goto_0
.end method

.method private isLayoutRTL()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->getParentLeft()I

    move-result v8

    if-lt v7, v8, :cond_2

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->getParentRight()I

    move-result v8

    if-gt v7, v8, :cond_2

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v8

    if-lt v7, v8, :cond_2

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    if-gt v6, v7, :cond_2

    if-nez v4, :cond_1

    move v2, v1

    move v4, v5

    :cond_1
    move v3, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v5

    :goto_2
    if-le v0, v3, :cond_4

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v5

    :goto_3
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private updateWindowSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    iget p1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDataSetSize:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDataSetSize:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mStartOffset:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mMaxScrollX:I

    iput v1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mScrollX:I

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mMaxScrollX:I

    iput p1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mScrollX:I

    :cond_1
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildHeight:I

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->updateWindowSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_3
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mDecoratedChildWidth:I

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->getHorizontalSpace()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mScrollX:I

    add-int/2addr p1, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mMaxScrollX:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mScrollX:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-direct {p0, p2}, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget p0, p0, Lcom/xiaomi/camera/ui/layout/CenterAlignedLayoutManager;->mScrollX:I

    sub-int/2addr p0, v0

    return p0
.end method
