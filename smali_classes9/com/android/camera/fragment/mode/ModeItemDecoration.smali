.class public Lcom/android/camera/fragment/mode/ModeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ModeItemDecoration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeItemDecoration"


# instance fields
.field private mBottomMargin:I

.field private mContext:Landroid/content/Context;

.field private mHorMargin:I

.field private mModeListHorMargin:I

.field private mPerLineCount:I

.field private mTopMargin:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V
    .locals 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mType:I

    invoke-interface {p2}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mPerLineCount:I

    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getPanelWidth(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07054d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070554

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070558

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    goto :goto_1

    :cond_1
    if-ne p3, v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070559

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    :goto_1
    iget v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mPerLineCount:I

    mul-int v3, v2, v1

    sub-int/2addr p2, v3

    iget v3, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr p2, v3

    mul-int/2addr v2, v4

    div-int/2addr p2, v2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getTopMarginForNormal(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    if-eq p3, v4, :cond_5

    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    if-ne p3, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-static {p1, v1, p2}, Lcom/android/camera/Display;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p1

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07054e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p1, v1

    :goto_4
    iput p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget p4, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    iget v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    iget p0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mType:I

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_4

    const/4 v4, 0x2

    if-eq p0, v4, :cond_2

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 p2, -0x1

    if-eq p0, p2, :cond_6

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_3

    const/4 p2, 0x6

    if-ne p0, p2, :cond_6

    :cond_3
    move p4, v2

    move v0, p4

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/camera/fragment/mode/MoreModeHelper;->isFooter4PopupStyle(II)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {p1, p4, v1, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
