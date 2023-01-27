.class public Lcom/android/camera/fragment/live/FragmentLiveSpeed;
.super Lcom/android/camera/fragment/live/FragmentLiveBase;
.source "FragmentLiveSpeed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;,
        Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;
    }
.end annotation


# static fields
.field private static final FRAGMENT_INFO:I = 0xffd

.field private static final TAG:Ljava/lang/String; = "FragmentLiveSpeed"

.field private static final sSpeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private effectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

.field private mAdapter:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field private mRootView:Landroid/view/View;

.field private mSelectIndex:I

.field private mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->sSpeedItemList:Ljava/util/List;

    sget-object v0, Lcom/android/camera/CameraSettings;->sLiveSpeedTextList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    sget-object v4, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->sSpeedItemList:Ljava/util/List;

    new-instance v5, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;

    invoke-direct {v5, v3}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/live/FragmentLiveSpeed;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/live/FragmentLiveSpeed;)Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mAdapter:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/live/FragmentLiveSpeed;)Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->effectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    return-object p0
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xffd

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d007c

    return p0
.end method

.method protected getSpeedItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->sSpeedItemList:Ljava/util/List;

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 5

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mRootView:Landroid/view/View;

    const v0, 0x7f0a020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSelectIndex:I

    new-instance p1, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->getSpeedItemList()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSelectIndex:I

    new-instance v4, Lcom/android/camera/fragment/live/FragmentLiveSpeed$1;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$1;-><init>(Lcom/android/camera/fragment/live/FragmentLiveSpeed;)V

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;)V

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mAdapter:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->setRotation(I)V

    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "live_speed_list"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->effectItemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$2;-><init>(Lcom/android/camera/fragment/live/FragmentLiveSpeed;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mAdapter:Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onItemSelected(I)V
    .locals 3

    const-string p0, "onItemSelected position="

    const-string v0, "FragmentLiveSpeed"

    if-ltz p1, :cond_0

    sget-object v1, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->sSpeedItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->sSpeedItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;->getTextId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", name="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setCurrentLiveSpeed(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe8

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->setRecordSpeed(I)V

    :cond_1
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed;->mSpeedListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
