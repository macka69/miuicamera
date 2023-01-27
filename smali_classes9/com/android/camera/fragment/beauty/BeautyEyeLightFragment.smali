.class public Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "BeautyEyeLightFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_TYPE:Ljava/lang/String; = "1"

.field private static EYE_LIGHT_TYPE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

.field private mBackButtonWidth:I

.field private mBackView:Landroid/view/View;

.field private mItemWidth:I

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectPosition:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    new-instance v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    const-string v2, "-1"

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    const-string v2, "1"

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    const-string v2, "4"

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    const-string v2, "0"

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    const-string v2, "5"

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    const-string v2, "6"

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    const-string v2, "3"

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    const-string v2, "2"

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->onItemSelected(I)V

    return-void
.end method

.method private eyeLightMutexGroup(Ljava/lang/String;Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p0, "-1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    const-string v0, "pref_camera_groupshot_mode_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 p1, 0xeb

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    return-void
.end method

.method public static getEyeLightHintText(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;->getTextResource()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static hasFrontFlash()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result v0

    return v0
.end method

.method private hideTipMessage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-lez p1, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method private notifyItemChanged(II)V
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;->getTextResource()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f110406

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    if-le p2, v0, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;->getTextResource()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;->setAccessible(Landroid/view/View;IZ)V

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    return-void
.end method

.method private onItemSelected(I)V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mSelectPosition:I

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mSelectPosition:I

    sget-object v1, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->setEyeLight(Ljava/lang/String;)V

    :cond_0
    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mSelectPosition:I

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->scrollIfNeed(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mSelectPosition:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->notifyItemChanged(II)V

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->eyeLightMutexGroup(Ljava/lang/String;Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;)V

    return-void
.end method

.method private reSelectItem()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getEyeLightType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter$EyeLightItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->onItemSelected(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    iget v1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mSelectPosition:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;->setSelectedPosition(I)V

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mSelectPosition:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->setItemInCenter(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinearLayoutManager is NULL!! current fragment isAdd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_2

    :cond_3
    :goto_0
    add-int/lit8 v0, p1, 0x1

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, p1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    if-eq v0, p1, :cond_5

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    :cond_5
    return v1
.end method

.method private setItemInCenter(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mBackButtonWidth:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private updateTipMessage(III)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    return-void
.end method


# virtual methods
.method public enterAnim(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V
    .locals 2

    const/high16 p0, 0x42c80000    # 100.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x118

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p1, Lmiui/view/animation/QuinticEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/QuinticEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0x78

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public exitAnim(Landroid/view/View;Landroidx/core/view/ViewPropertyAnimatorListener;)V
    .locals 2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p1, Lmiui/view/animation/QuinticEaseInInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/QuinticEaseInInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method protected getAnimateView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFragmentTag()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mItemWidth:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mTotalWidth:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mBackButtonWidth:I

    const v0, 0x7f0a0154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mBackView:Landroid/view/View;

    const v0, 0x7f0a0156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "eye_light_type_list"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    sget-object p1, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager init status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    new-instance p1, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->EYE_LIGHT_TYPE_LIST:Ljava/util/List;

    invoke-direct {p1, v1, v2, v0}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mAdapter:Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment$2;-><init>(Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/EyeLightSingleCheckAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->mBackView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x7f0a0154

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xb4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz p0, :cond_1

    const p1, 0x7f11035a

    const/4 v0, 0x1

    const-string v1, "pref_eye_light_type_key"

    invoke-interface {p0, v1, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d006b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->reSelectItem()V

    return-void
.end method

.method public userInvisibleHit()V
    .locals 2

    invoke-static {}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->hasFrontFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1103df

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->hideTipMessage(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    nop

    :cond_1
    return-void
.end method

.method public userVisibleHint()V
    .locals 3

    invoke-static {}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->hasFrontFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    const v1, 0x7f1103df

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/beauty/BeautyEyeLightFragment;->updateTipMessage(III)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez p0, :cond_1

    :cond_1
    return-void
.end method
