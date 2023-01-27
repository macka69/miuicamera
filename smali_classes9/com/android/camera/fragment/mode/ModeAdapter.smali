.class public Lcom/android/camera/fragment/mode/ModeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;,
        Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final FLAG_ENTER:I = 0x2

.field public static final FLAG_SWITCH:I = 0x4

.field private static final MAX_TOP_ITEM_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ModeAdapter"

.field public static final TYPE_CAPTURE:I = 0x3

.field public static final TYPE_EDIT:I = 0x5

.field public static final TYPE_FOOTER:I = 0x6

.field public static final TYPE_HEADER:I = 0x1

.field public static final TYPE_LINE:I = 0x2

.field public static final TYPE_PENDING_DOWNLOAD:I = 0x7

.field public static final TYPE_VIDEO:I = 0x4


# instance fields
.field private mAnimFlags:I

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field private mDegree:F

.field private mDownloadingPos:I

.field protected mFragmentType:I
    .annotation build Lcom/android/camera/fragment/mode/IMoreMode$Type;
    .end annotation
.end field

.field protected mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

.field private mVmFeature:Lcom/android/camera/data/observeable/VMFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p2}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/mode/ModeAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/android/camera/fragment/mode/ModeAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mode/ModeAdapter$2;-><init>(Lcom/android/camera/fragment/mode/ModeAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-object v0
.end method

.method private getItem(I)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public createChangeItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getItemViewType(I)I
    .locals 7

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x5

    const/16 v2, 0xff

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_6

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_8

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_3

    return v6

    :cond_3
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_4

    return v5

    :cond_4
    const/16 v1, 0xa2

    if-ne v0, v1, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v1, v0}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return v3

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return v3

    :cond_8
    if-nez p1, :cond_9

    return v4

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return v3

    :cond_b
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getRotate()F
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    return p0
.end method

.method public isDataChange()Z
    .locals 6

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    invoke-interface {v2, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_3

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v4, v4, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "data lost."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->createTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v0, Lcom/android/camera/fragment/mode/ModeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$1;-><init>(Lcom/android/camera/fragment/mode/ModeAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;I)V
    .locals 16
    .param p1    # Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    if-ne v3, v6, :cond_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, v7, :cond_2

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v8, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    iget-object v10, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v10}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v10

    iget-object v11, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getHeaderHeightForNormal(Landroid/content/Context;III)I

    move-result v8

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, v7, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, v4, :cond_1a

    invoke-direct {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v3

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDownloadingPos:I

    const/4 v8, 0x0

    if-ne v2, v4, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    move v4, v8

    :goto_0
    iget v9, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget v10, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v4}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setName(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    iget-object v9, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v9, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    invoke-virtual {v1, v9, v4}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setName(Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    iget v4, v3, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    const/4 v9, -0x1

    const/4 v10, 0x7

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x5

    if-eq v4, v9, :cond_10

    iget-object v9, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    iget v13, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v13, v6, :cond_6

    iget v4, v3, Lcom/android/camera/data/data/ComponentDataItem;->mNewIconRes:I

    :cond_6
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x3f61cac1

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x3f5020c5

    goto :goto_2

    :cond_8
    move v4, v11

    :goto_2
    iget-object v9, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v9, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    iget v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setRotation(F)V

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v4

    if-ne v4, v12, :cond_a

    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v3, v6, :cond_9

    invoke-virtual {v1, v8}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(I)V

    goto/16 :goto_3

    :cond_9
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    const v4, 0x7f0800e2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v4

    const/16 v9, 0x64

    if-ne v4, v10, :cond_f

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez v4, :cond_b

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v4

    const-class v13, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v4, v13}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    :cond_b
    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v4}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/data/observeable/VMFeature;->getDownloadingProgress(I)I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v13

    sget-object v14, Lcom/android/camera/fragment/mode/ModeAdapter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBindViewHolder scope = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", progress = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x10

    if-ne v13, v7, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x11

    if-ne v4, v7, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameDownloading()V

    goto :goto_3

    :cond_c
    const/16 v4, 0x1000

    if-ne v13, v4, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameDownloading()V

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(I)V

    goto :goto_3

    :cond_d
    invoke-virtual {v1, v9}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(I)V

    goto :goto_3

    :cond_e
    invoke-virtual {v1, v9}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(I)V

    goto :goto_3

    :cond_f
    invoke-virtual {v1, v9}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(I)V

    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDownloadingPos:I

    if-ne v2, v3, :cond_10

    iput v8, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDownloadingPos:I

    :cond_10
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v3, v6, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v3, v5, :cond_11

    goto :goto_4

    :cond_11
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v3, v6, :cond_12

    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0602c6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_12
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0602bb

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_13
    :goto_4
    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    const v4, 0x3e99999a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0602ba

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1a

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v10, :cond_14

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v3, v12, :cond_1a

    :cond_14
    iget-object v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v3}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result v3

    if-ne v3, v6, :cond_17

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v12, :cond_15

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/Display;->getMoreModeTabRow(IZ)I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    mul-int/2addr v3, v4

    if-lt v2, v3, :cond_16

    :cond_15
    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    :cond_16
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object v0

    iget-object v1, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startShowNewAnimation(Landroid/view/View;I)V

    goto :goto_6

    :cond_17
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v12, :cond_18

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v3

    invoke-static {v3, v8}, Lcom/android/camera/Display;->getMoreModeTabRow(IZ)I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    mul-int/2addr v3, v4

    if-lt v2, v3, :cond_19

    :cond_18
    iget v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    :cond_19
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object v0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startShowOldAnimation(Landroid/view/View;I)V

    :cond_1a
    :goto_6
    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;ILjava/util/List;)V
    .locals 4
    .param p1    # Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/fragment/mode/ModeAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolderPayloads ,position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", payloads "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;

    iget v2, v2, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;I)V

    goto :goto_1

    :cond_1
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;

    if-eqz v0, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;

    iget v0, p3, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iput p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDownloadingPos:I

    iget p0, p3, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->downloadState:I

    const/16 p2, 0x11

    if-ne p0, p2, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameDownloading()V

    goto :goto_1

    :cond_3
    iget p0, p3, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->progress:I

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const v1, 0x7f0d012c

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    if-ne p2, v3, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d012a

    invoke-virtual {p0, p2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    if-ne p2, v4, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d012b

    invoke-virtual {p0, p2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    if-ne p2, v4, :cond_4

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v2}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v2

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getHeaderHeightForNormal(Landroid/content/Context;III)I

    move-result p0

    invoke-direct {p2, v4, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_4
    iget p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne p2, v2, :cond_5

    const v1, 0x7f0d012d

    :cond_5
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v0, v3, :cond_6

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {p2, p0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setRotation(F)V

    new-array p0, v4, [Landroid/view/View;

    iget-object v0, p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    aput-object v0, p0, v5

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array v0, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDownloadingPos:I

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->onViewAttachedToWindow(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;)V
    .locals 0
    .param p1    # Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget p0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setRotation(F)V

    return-void
.end method

.method public setAnimFlags(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    return-void
.end method

.method public setRotate(I)V
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
