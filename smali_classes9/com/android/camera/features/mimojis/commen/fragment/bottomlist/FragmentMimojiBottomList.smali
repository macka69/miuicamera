.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;
.super Lcom/android/camera/fragment/live/FragmentLiveBase;
.source "FragmentMimojiBottomList.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;,
        Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;
    }
.end annotation


# static fields
.field public static final ADD_STATE:Ljava/lang/String; = "add_state"

.field public static final CLOSE_STATE:Ljava/lang/String; = "close_state"

.field private static final DIALOG_BACK_CONFIRM:I = 0x5

.field private static final DIALOG_DELETE_ITEM:I = 0x1

.field private static final DIALOG_DOWNLOAD_PROGRESS:I = 0x4

.field private static final DIALOG_DOWNLOAD_PROMPT:I = 0x3

.field private static final FRAGMENT_INFO:I = 0xfff0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

.field private cloudListLoadSuccess:Z

.field private isDataResetComplete:Z

.field private mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mClickTime:J

.field private mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDownlaodMaterialType:Ljava/lang/String;

.field private mHanderThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private mIsMaterialDownloading:Z

.field private mIsRTL:Z

.field private mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mItemWidth:I

.field private mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

.field private mLlProgress:Landroid/widget/LinearLayout;

.field private mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

.field private mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

.field private mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

.field private mMimojiItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMimojiItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

.field private mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

.field private mMimojiVersion:I

.field private mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

.field private mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mSelectIndex:I

.field private mTotalWidth:I

.field private mVMResource:Lcom/android/camera/data/observeable/VMResource;

.field private mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

.field private popContainer:Landroid/widget/RelativeLayout;

.field private popParent:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiVersion:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mDownlaodMaterialType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->cloudListLoadSuccess:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->enterEditMode(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->checkNetworkConnect()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1402(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsMaterialDownloading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initResource()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :goto_0
    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_5

    add-int/lit8 v2, v2, -0x2

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_3

    :cond_4
    :goto_1
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, p1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_3
    const/4 v2, 0x1

    if-eq v0, p1, :cond_6

    move v1, v2

    :cond_6
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    sub-int/2addr p2, v2

    if-ne v0, p2, :cond_8

    :cond_7
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p1, "mimoji boolean autoMove[position, adapter]"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return v1
.end method

.method private checkNetworkConnect()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/network/util/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$-XyPTdLryS3MI24YU2JGyJDlSg8;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$-XyPTdLryS3MI24YU2JGyJDlSg8;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "check network disconnect"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "not attached to Activity , skip checkNetworkConnect"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private deleteItem()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mPackPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mPackPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-virtual {v0, v2}, Lcom/android/camera/resource/BaseResourceList;->getIndex(Lcom/android/camera/resource/BaseResourceItem;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xf6

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-interface {v2, v3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onMimojiDeleted(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMimojiInfo()V

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "delete onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->getMimojiItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji_click_delete"

    const-string v2, "edit"

    invoke-static {v0, v1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCount(I)V

    :cond_3
    return-void
.end method

.method private enterEditMode(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->simpleVerificationMaterial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMaterialDownloadState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMaterialDownloadState()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->EDIT_ITEM_DOWNLOAD:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mDownlaodMaterialType:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->releaseRender()V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf7

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    const/16 v2, 0xc9

    invoke-interface {p1, v0, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->getMimojiItemType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mimoji_click_edit"

    const-string v1, "edit"

    invoke-static {p1, v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 p1, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    return-void
.end method

.method private getMimojiItemType()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p0

    const-string v0, "cartoon"

    const-string v1, "custom"

    if-eqz p0, :cond_4

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v2, p0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v3

    aget-object v2, p0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    aget-object p0, p0, v2

    goto :goto_1

    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v3

    aget-object p0, p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, " "

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "human"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "person"

    goto :goto_2

    :cond_4
    const-string p0, ""

    :cond_5
    move-object v0, v1

    :goto_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initAvatarList()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$2;

    const-string v2, "mimojilist"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$2;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$3;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$3;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const v1, 0x7f08056c

    goto :goto_0

    :cond_3
    const v1, 0x7f08056a

    :goto_0
    new-instance v2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setResourceBg(I)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    new-instance v2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$iOZ0EzfvI7spfL5aYt4qRmsjOco;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$iOZ0EzfvI7spfL5aYt4qRmsjOco;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->IsLoading()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->isAvatarInited()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->firstProgressShow(Z)V

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->getFeatureMimojiModleVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isFuSdkLoadFinish()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->simpleVerificationModel()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v3

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->firstProgressShow(Z)V

    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMimojiInfo()V

    new-instance v1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method

.method private initBgList()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    invoke-interface {v2, v1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;->initBgData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    iput v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    :cond_0
    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    invoke-direct {v1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$IqF4n0XgkulyxTm9z3y232KYxj0;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$IqF4n0XgkulyxTm9z3y232KYxj0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V

    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initMargin()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreviewPlay()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initResource()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMResource;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMResource;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mVMResource:Lcom/android/camera/data/observeable/VMResource;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$U2-o-lDuY4xIddW0n5rNHsNSrnc;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$U2-o-lDuY4xIddW0n5rNHsNSrnc;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/observeable/VMResource;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method

.method private initTimbreList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    invoke-interface {v2, v1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;->initTimbreData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    iput v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    :cond_0
    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-direct {v1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$1QyIpW3KPuAFtYXJSp8wMAMhIxc;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$1QyIpW3KPuAFtYXJSp8wMAMhIxc;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V

    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreviewPlay()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v3

    iget v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->setSelectState(IZ)Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->hideProgress()V

    return-void
.end method

.method private isMimojiFu()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiVersion:I

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$6aWaRNfYX8Q8sEBD1jthU8qOt8A(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->deleteItem()V

    return-void
.end method

.method private synthetic lambda$checkNetworkConnect$20()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const v0, 0x7f110421

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$hideTimbreProgress$7()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->hideProgress()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initAvatarList$0(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;ILandroid/view/View;)V
    .locals 10

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->isAvatarInited()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mClickTime:J

    sub-long v3, v1, v3

    sget v5, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    return-void

    :cond_1
    iput-wide v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mClickTime:J

    iput p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v2, v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    iget-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v2, "add_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->onAddItemSelected()V

    return-void

    :cond_2
    iget-object v6, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click\u3000currentState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " lastState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getDefaultFrame()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->nextFrame()I

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setIsNeedAnim(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setCurrentMimojiInfo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/camera/network/NetworkDependencies;->isConnected(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_4

    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p2, "check network"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const p1, 0x7f110421

    const/16 p2, 0x50

    invoke-static {p0, p1, p2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    :cond_4
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {p3, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->downloadItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->getLastSelectPosition()I

    move-result p1

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setSelectState(I)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->getFrame()I

    move-result v1

    const-string v2, " name="

    const-string v4, "onItemSelected position="

    if-lez v1, :cond_8

    iget v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName2:I

    if-lez v1, :cond_8

    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName2:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iget v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    if-lez v1, :cond_9

    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-direct {p0, p2, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->processBubble(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x0

    invoke-interface {v0, p1, p3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onMimojiSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setSelectState(I)V

    goto :goto_1

    :cond_b
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p3, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setSelectState(I)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const p3, 0xfff0

    iput p3, p2, Landroid/os/Message;->what:I

    iget-object p3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v0, "close_state"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    move-object p1, v3

    :cond_c
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    :goto_1
    return-void
.end method

.method private synthetic lambda$initBgList$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x8000

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initBgList$2(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;ILandroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMimojiChangeBg position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getDescId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onMimojiChangeBg(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;->setSelectState(I)Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBgAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiBgAdapter;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$1dYizVHYrMXi4iP8oi_7qC2ch6Q;

    invoke-direct {p1, p0, p3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$1dYizVHYrMXi4iP8oi_7qC2ch6Q;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p3, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$initResource$19(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->onResourceDownloadStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$initTimbreList$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x8000

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initTimbreList$4(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;ILandroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMimojiChangeTimbre position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getDescId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreviewPlay()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->setSelectState(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onMimojiChangeTimbre(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;I)V

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->autoMove(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$2hYN-5X5rxFS5o3gCVZ6JNQO47k;

    invoke-direct {p1, p0, p3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$2hYN-5X5rxFS5o3gCVZ6JNQO47k;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p3, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method static synthetic lambda$onBackEvent$5()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$refreshMimojiList$6()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->filelistToMimojiInfo()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v3, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v2, "refreshMimojiList AVATAR"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iget-object v2, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    iget-object v2, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setLastSelectPosition(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->setSelectState(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiTimbreAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiTimbreAdapter;->hideProgress()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$showAlertDialog$10()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsMaterialDownloading:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->downloadMaterial(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    return-void
.end method

.method private synthetic lambda$showAlertDialog$11()V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "cancle download onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->cancleMaterialDownload()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-void
.end method

.method private synthetic lambda$showAlertDialog$12()V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "cancle download onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsMaterialDownloading:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showAlertDialog$13(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$showAlertDialog$14(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$showAlertDialog$15(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$showAlertDialog$16(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsMaterialDownloading:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showAlertDialog$17(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    return-void
.end method

.method private synthetic lambda$showAlertDialog$18(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsMaterialDownloading:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method static synthetic lambda$showAlertDialog$9()V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "delete onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$showEmoticonFragment$8()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->getMimojiItemType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mimoji_sticker_pack"

    const-string v1, "edit"

    invoke-static {p0, v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->setIsDirectEmoticon(Z)V

    :cond_1
    return-void
.end method

.method private onResourceDownloadStateChanged(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->getItemAt(I)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    add-int/2addr p1, v2

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2
.end method

.method private setSelectItemInCenter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    iget p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-virtual {v1, p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showAlertDialog(I)V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v1, 0x3

    const v2, 0x7f110858

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f11031b

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const p1, 0x7f11047e

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$Ox-AUhA7eOwxIp2p2pxhR-c9irE;

    invoke-direct {v9, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$Ox-AUhA7eOwxIp2p2pxhR-c9irE;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$lAB5Ptd0e_7CVYRjPpzVfQft2Ng;

    invoke-direct {v13, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$lAB5Ptd0e_7CVYRjPpzVfQft2Ng;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-static/range {v5 .. v13}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f11031e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/camera/RotateDialogController;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;I)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v4}, Lcom/android/camera/fragment/CtaNoticeFragment;->checkCta(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p1, "check cta"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->checkNetworkConnect()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/network/NetworkDependencies;->isConnectedWIFI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "connected wifi"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsMaterialDownloading:Z

    invoke-direct {p0, v5}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->downloadMaterial(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f11031f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f11031d

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;->materialSize:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    const p1, 0x7f11031c

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$AJmeKJvNmM4uWHrNR4x8jvgxaEs;

    invoke-direct {v8, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$AJmeKJvNmM4uWHrNR4x8jvgxaEs;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const p1, 0x7f110485

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const p1, 0x7f110484

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$6aWaRNfYX8Q8sEBD1jthU8qOt8A;

    invoke-direct {v6, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$6aWaRNfYX8Q8sEBD1jthU8qOt8A;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    const p1, 0x7f110466

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$heYKxJtEsVyMpP1-7y3k61E4dFY;->INSTANCE:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$heYKxJtEsVyMpP1-7y3k61E4dFY;

    invoke-static/range {v0 .. v8}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mConfirmDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_c

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$gYC-o1u_G0m3nNBy3SfhLddyHbg;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$gYC-o1u_G0m3nNBy3SfhLddyHbg;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_c
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_d

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$jSQlK3QnY3Uje-DS8djdnN5EP8I;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$jSQlK3QnY3Uje-DS8djdnN5EP8I;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_d
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_e

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$UvpOvvIl7EH9Du9rlvLAW2x_RC4;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$UvpOvvIl7EH9Du9rlvLAW2x_RC4;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mCancelDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$Hq1SA1shBlzZCsHx9laqHkfeMMw;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$Hq1SA1shBlzZCsHx9laqHkfeMMw;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_e
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p1, :cond_f

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$TyIAEYMwrfU05JFy7zuNLR5Fz4Q;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$TyIAEYMwrfU05JFy7zuNLR5Fz4Q;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$ke9FfOQvUrzXO7Wfk6usx5qu93s;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$ke9FfOQvUrzXO7Wfk6usx5qu93s;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_f
    return-void

    :cond_10
    :goto_1
    sget-object p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p1, "not attached to Activity , skip showAlertDialog"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public filelistToMimojiInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->IsLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getFeatureMimojiModleVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMimojiModleVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isDataResetComplete:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getAvatarPanelState()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;->initAvatarData(ILjava/util/List;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setDataList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiAvatarAdapter:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCount(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public firstProgressShow(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p1, "not attached to Activity , skip     firstProgressShow........"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initView(Landroid/view/View;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstProgressShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff0

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0089

    return p0
.end method

.method public hideTimbreProgress()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$YY3Ykvd7Cwvsi0FRgJKtvZfGoos;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$YY3Ykvd7Cwvsi0FRgJKtvZfGoos;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07034b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemWidth:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsRTL:Z

    const v0, 0x7f0a0276

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0a021a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0330

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLlProgress:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popParent:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;I)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$1;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mSelectIndex:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->supportMimojiVersion()I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiVersion:I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    new-instance v2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;-><init>(Landroid/content/Context;Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiListUpdateListener;Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-direct {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;

    iget v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiVersion:I

    invoke-direct {p1, v0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiBottomListData:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initMargin()V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initTimbreList()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initBgList()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->initAvatarList()V

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "init MimojiPanelState close"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->setSelectItemInCenter()V

    return-void
.end method

.method public isCloudListLoadSuccess()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->cloudListLoadSuccess:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$checkNetworkConnect$20$FragmentMimojiBottomList()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$checkNetworkConnect$20()V

    return-void
.end method

.method public synthetic lambda$hideTimbreProgress$7$FragmentMimojiBottomList()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$hideTimbreProgress$7()V

    return-void
.end method

.method public synthetic lambda$initAvatarList$0$FragmentMimojiBottomList(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$initAvatarList$0(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initBgList$1$FragmentMimojiBottomList(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$initBgList$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initBgList$2$FragmentMimojiBottomList(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$initBgList$2(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initResource$19$FragmentMimojiBottomList(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$initResource$19(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method

.method public synthetic lambda$initTimbreList$3$FragmentMimojiBottomList(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$initTimbreList$3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initTimbreList$4$FragmentMimojiBottomList(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$initTimbreList$4(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$refreshMimojiList$6$FragmentMimojiBottomList()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$refreshMimojiList$6()V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$10$FragmentMimojiBottomList()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$10()V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$11$FragmentMimojiBottomList()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$11()V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$12$FragmentMimojiBottomList()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$12()V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$13$FragmentMimojiBottomList(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$13(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$14$FragmentMimojiBottomList(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$14(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$15$FragmentMimojiBottomList(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$15(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$16$FragmentMimojiBottomList(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$16(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$17$FragmentMimojiBottomList(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$17(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$showAlertDialog$18$FragmentMimojiBottomList(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showAlertDialog$18(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$showEmoticonFragment$8$FragmentMimojiBottomList()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$showEmoticonFragment$8()V

    return-void
.end method

.method protected onAddItemSelected()V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v1, "onAddItemSelected"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->simpleVerificationMaterial()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMaterialDownloadState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMaterialDownloadState()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CREATE_ITEM_DOWNLOAD:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mDownlaodMaterialType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mIsNeedShowWhenExit:Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xf6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onMimojiCreate()V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->forceSwitchFront()Z

    :cond_3
    const-string p0, "mimoji_click_add"

    const-string v0, "add"

    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEdit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiEmoticon()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->hideExtra()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onRestoreCameraActionMenu(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$E-z5UgYxghZip0rOyK_KjDi0B_0;->INSTANCE:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$E-z5UgYxghZip0rOyK_KjDi0B_0;

    invoke-static {p0, p1}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->isAvatarInited()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0xc9

    if-eq p1, v1, :cond_6

    const/16 v1, 0xca

    if-eq p1, v1, :cond_5

    const/16 v1, 0xcc

    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v2, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick EMOTICON_PROCESS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->releaseRender()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showEmoticonFragment()V

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->createEmoticon()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf7

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-interface {p1, v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->directlyEnterEditMode(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;I)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_4
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 p1, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick DELETE_PROCESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->showAlertDialog(I)V

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick EDIT_PROCESS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->enterEditMode(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    sget-object p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string p1, "MIMOJI CLICK disable, waiting init finish"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onPause()V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mItemDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public processBubble(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Z)V
    .locals 5

    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isPreCartoonModel(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "add_state"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "close_state"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    if-nez p5, :cond_3

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->isIsPreHuman()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiItemSelect:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    new-array p3, p2, [I

    invoke-virtual {p4, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p5, 0x0

    aget p3, p3, p5

    iget-object p5, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->popContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070396

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    add-int v4, p3, v3

    int-to-float v4, v4

    div-float/2addr v1, v2

    sub-float/2addr v4, v1

    float-to-int v2, v4

    iget-boolean v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mIsRTL:Z

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mTotalWidth:I

    sub-int/2addr v2, p3

    sub-int/2addr v2, p1

    int-to-float p1, v2

    int-to-float p3, v3

    sub-float/2addr p3, v1

    add-float/2addr p1, p3

    float-to-int v2, p1

    :cond_1
    div-int/2addr v0, p2

    sub-int/2addr p5, v0

    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "coordinateY:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->setRotation(I)V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    invoke-virtual {p0, v2, p5, p4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    :cond_3
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->mIvDeleteFisrt:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->mIvEditFirst:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->getBubblePop()Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter$BubblePop;->mIvEmoticonFirst:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->getRotateViews()[Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->getRotateViews()[Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setRotation(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public refreshMimojiList()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->IsLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$hOv2wuDj0KEAwhzmCX1egne5R1U;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$hOv2wuDj0KEAwhzmCX1egne5R1U;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf8

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setDataResetCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isDataResetComplete:Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getAvatarPanelState()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->pullNewList(I)V

    return-void
.end method

.method public showEmoticonFragment()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$9pcCL01iXLfYfz0Sb6lhx5HWGfI;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$9pcCL01iXLfYfz0Sb6lhx5HWGfI;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->TAG:Ljava/lang/String;

    const-string v0, "not attached to Activity , skip showEmoticonFragment"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchMimojiList()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->IsLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isCloudListLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isFuSdkLoadFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateHide(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->refreshMimojiList()I

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->setSelectItemInCenter()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->isMimojiFu()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mMimojiRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->bubbleEditMimojiPresenter:Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, -0x2

    invoke-virtual {p1, v1, v1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/BubbleEditMimojiPresenter;->processBubbleAni(IILandroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xf8

    invoke-virtual {p1, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHanderThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const v1, 0xfff0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->mHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method
